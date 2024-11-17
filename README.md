# NTi - Rasp Auto

Este repositório foi criado para automação de diversas tarefas no NTi da UEMG Ituiutaba.

> Nota: Para todos os projetos, é essencial ter um sistema para edição do código. O uso do nano no sistema Raspberry Pi OS LITE (64 BIT) é útil para edições rápidas. Pessoalmente, utilizo o VS Code com SSH e SFTP para alteração do código e testes.

## Automação Porta

Este projeto visa melhorar o controle de acesso de estagiários e coordenadores ao NTi por meio de uma solução de automação.

Base do Projeto: https://www.arduinoecia.com.br/modulo-rfid-mfrc522-com-raspberry-pi-4/

### Milestone Atual

- [x] Automação Básica da Porta (NodeMCU)
- [x] Automação da Porta (Raspberry Pi)
- [x] Adição do banco de dados no sistema da porta
- [x] Teste de Tempo (3 Dias com o sistema ligado)
- [ ] Adição de um contador para a contagem de entradas

### Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

> Nota: O circuito da Principal e do Relé será disponibilizado em breve.

#### Obrigatórios
* Raspberry Pi 3 B+
* Micro SD com o sistema Raspberry Pi OS LITE (64 BIT)
* Leitor RFID
* Protoboard 

#### Opcionais (para controle da tranca)
* Transistor
* Resistor 10kΩ
* Led (qualquer cor)
* Relé
* Tranca eletrônica (12v)

#### Circuito


### Licença

Este projeto está licenciado sob a MIT License.
