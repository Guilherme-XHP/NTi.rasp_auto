#Programa: Teste leitura ID tag RFID
#Autor: Arduino e Cia
#!/usr/bin/env python
import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522
leitorRfid = SimpleMFRC522()
print("Aproxime o cartao da leitora...")
try:
        id, text = leitorRfid.read()
        print("ID do cartao: ", id)
         
finally:
        GPIO.cleanup()