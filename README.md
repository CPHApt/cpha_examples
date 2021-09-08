[English](./README-en-EN.md)

[<img src="https://avatars.githubusercontent.com/u/88738079?s=400&u=ca61a124c283d03a55afefbb7b9b98dfbd6e135e&v=4" alt="Logo of the project" align="right" width="8%" height="8%">](https://www.sthope.dev/)

# CPHA Exemplos . ![Discord](https://img.shields.io/discord/494714310518505472?style=plastic) ![GitHub](https://img.shields.io/github/license/CPHApt/cpha_examples?style=plastic) ![GitHub commit activity](https://img.shields.io/github/commit-activity/y/CPHApt/cpha_examples?style=plastic)
> 🔥Comunidade Portuguesa de Home Assistant🔥


### Criar secrets.yaml falso

Para criar uma copia do secrets.yaml com passwords falsas, para utilizar basta entrar na pasta do Home Assistant e correr o commando.
E preciso ter docker instalado e uns segundos depois de correr vai criar um ficheiro chamado `fake_secrets.yaml` que podem juntar a vossa config para fazer upload no Github / Gitlab / Gitea.. etc..
```
bash -c "$(wget -qLO - https://raw.githubusercontent.com/CPHApt/cpha_examples/main/fake_ha_secrets.sh)"
```
