# Node-RED

## Pré-requsitos

Este projeto requer docker instalado. Para instalacão por favor siga a documentacão oficial:

[Docker Official Documentation](https://docs.docker.com/get-docker/)

## Rodando pela primeira vez

Use o comando:

```bash
docker-compose up --build
```

**Note**: Talvez seja necessário usar `sudo` se voce tiver erro de permissão ao rodar o comando.

*Note que a flag --build é necessária toda vez que houver alguma atualizaćão de dependencia ou estrutura do projeto

## Docker Compose

O arquivo `docker-compose.yml`:

- **Services**:
  - **node-red**:
    - **Ports**: mapeamento da porta local do container para a máquina rodando o mesmo
    - **Volumes**: Mapeia o folder `./node-red-data` do host para `/data` dentro do container, o que possibilita a persistencia de dados

Após o primeiro build voce poderá rodar apenas:

```bash
docker-compose up
```

Se erro erro de permissão rode como root:

```bash
sudo docker-compose up
```

## Node-RED Data Persistence

qualquer alteracão no folder `node-red-data` será persistido no Node-RED container. É preciso notar que, se os arquvos dentro de node-red-data forem alterados fora da aplicacao, no seu editor de codigo, por exemplo, a applicacao deverá ser restartada, isso porque o docker nao tem um watch que possibilita ver quando algo foi alterado fora da aplicacão, para que isso seja possível existem alternativas, favor entrar em contato com o autor do projeto para maiores esclarecimentos.

Para outros detalhes consulte a docuemtacao oficial [Node-RED User Guide](https://nodered.org/docs/user-guide/).

## Further Reading

- Outras informacoes sobre node-red e docker [Official Node-RED Docker Image Repository](https://hub.docker.com/r/nodered/node-red/).

---
