# CPHA Exemplos . ![Discord](https://img.shields.io/discord/494714310518505472?style=plastic) ![GitHub](https://img.shields.io/github/license/CPHApt/cpha_examples?style=plastic) ![GitHub commit activity](https://img.shields.io/github/commit-activity/y/CPHApt/cpha_examples?style=plastic)


### Criar secrets.yaml falso

Para criar uma copia do secrets.yaml com passwords falsas, para utilizar basta entrar na pasta do Home Assistant e correr o commando.
E preciso ter docker instalado e uns segundos depois de correr vai criar um ficheiro chamado `fake_secrets.yaml` que podem juntar a vossa config para fazer upload no Github / Gitlab / Gitea.. etc..
```
bash -c "$(wget -qLO - https://raw.githubusercontent.com/CPHApt/cpha_examples/main/fake_ha_secrets.sh)"
```
