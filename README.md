# Node-RED

## Pré-requsitos

Este projeto requer docker instalado. caso não possua Docker instalado por favor siga a documentacao oficial:

[Docker Official Documentation](https://docs.docker.com/get-docker/)

## Rodando a primeira vez

Para rodar o projeto a primeira vez rode o comando:

```bash
docker-compose up --build
```

**Note**: Talvez seja necessário usar `sudo` se voce tiver erro de permissão ao rodar o comando.

## Docker Compose

O arquivo `docker-compose.yml` é usado para o processo de instalacao, start e build:

- **Services**:
  - **node-red**:
    - **Ports**: mapeamento da porta local do container para a máquina rodando o mesmo
    - **Volumes**: Mapeia o folder `./node-red-data` do host para `/data` dentro do container, o que possibilita a persistencia de dados ** sem isto toda as alteracoes se perdem uma vez que o container para e roda novamente

Aós o primeiro build voce poderá rodar apenas:

```bash
docker-compose up
```

If not running as root:

```bash
sudo docker-compose up
```

## Node-RED Data Persistence

qualquer alteracão no folder `node-red-data` será persistido no Node-RED container. É preciso notar que, se os arquvos dentro de node-red-data forem alterados fora da aplicacao, no seu editor de codigo, por exemplo, a applicacao deverá ser restartada, isso porque o docker nao tem um watch que possibilita ver quando algo foi alterado fora da aplicacão, para que isso seja possível existem alternativas, favor entrar em contato com o autor do projeto para maiores esclarecimentos.

Para outros detalhes consulte a docuemtacao oficial [Node-RED User Guide](https://nodered.org/docs/user-guide/).

## Further Reading

- Outras informacoes sobre node-red e docker [Official Node-RED Docker Image Repository](https://hub.docker.com/r/nodered/node-red/).

---

**Explore and automate with Node-RED in a Dockerized environment!**# node-red-app
