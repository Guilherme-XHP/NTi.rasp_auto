# Programa: Controle de Acesso RFID com Raspberry Pi
# Autor: Arduino e Cia
# Editor: Guilherme-XHP

#!/usr/bin/env python

import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522
import time
import sqlite3

leitorRfid = SimpleMFRC522()

GPIO.setmode(GPIO.BOARD)

# Definir os pinos 11 e 13 (Basicamente uma adapitacao do original)como saida
GPIO.setup(11, GPIO.OUT) # Rele
GPIO.setup(13, GPIO.OUT) # Speaker

try:
    while True:
        # Apaga os leds (pq sim)
        GPIO.output(11, 0)
        GPIO.output(13, 0)

        print("Aproxime o cartao da leitora...")

        id, text = leitorRfid.read()
        print("ID do cartao: ", id)

        # Conecta ao banco do Main.db
        conn = sqlite3.connect('main.db')
        cursor = conn.cursor()

        # Consultar o ID no banco
        cursor.execute("SELECT nome FROM Responsaveis WHERE rfid=?", (id,))
        estagiario = cursor.fetchone()

        if estagiario:
            nome = estagiario[0]
            print(f"Tag RFID valida! Nome: {nome}")
            for _ in range(10):  # 10 Tentativas de abrir a tranca 
                GPIO.output(13, 1)
                GPIO.output(11, 1)
                time.sleep(0.1)
                GPIO.output(13, 0)
                GPIO.output(11, 0)
                time.sleep(0.1)
        else:
            print("Tag RFID nao permitida!")
            GPIO.output(13, 1)
            time.sleep(1)
            GPIO.output(13, 0)

        # Fecha a conexão com o banco de dados
        conn.close()
finally:
    GPIO.cleanup()
