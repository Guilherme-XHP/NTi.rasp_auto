# NTi - Rasp Auto

> Este repositório foi criado para automação de diversas tarefas no NTi da UEMG Ituiutaba.

## Automação Porta 

Este projeto visa melhorar o controle de acesso de estagiários e coordenadores ao NTi por meio de uma solução de automação.

### Milestone Atual

- [x] Automação Básica da Porta (NodeMCU)
- [x] Automação da Porta (Raspberry Pi)
- [x] Adição do banco de dados no sistema da porta
- [x] Teste de Tempo (3 Dias com o sistema ligado)
- [ ] Adição de um contador para a contagem de entradas 

### 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

#### Obrigatórios
* Raspberry Pi 3 B+
* Micro SD com o sistema LITE 64bits
* Leitor RFID
* Protoboard

#### Opcionais (para controle da tranca)
* Transistor
* Resistor 10kΩ
* Led (qualquer cor)
* Relé
* Tranca eletrônica (12v)

> Nota: Para todos os projetos, é essencial ter um sistema para edição do código. O uso do nano no sistema Linux é útil para edições rápidas. Pessoalmente, utilizo o VS Code com SSH e SFTP para alteração do código e testes.

### Instalação e Uso

1. Clone este repositório:
    ```bash
    git clone https://github.com/Guilherme-XHP/NTi.rasp_auto.git
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd NTi.rasp_auto
    ```
3. Siga as instruções específicas em cada subdiretório para configurar os componentes de automação.

### Contribuição

Se você deseja contribuir com este projeto, siga estas etapas:

1. Faça um fork deste repositório.
2. Crie um branch para sua feature (`git checkout -b feature/TESTE`).
3. Faça commit das suas alterações (`git commit -m 'Adicionando TESTE'`).
4. Dê push para o branch (`git push origin feature/TESTE`).
5. Abra um Pull Request.

### Licença

Este projeto está licenciado sob a MIT License.
