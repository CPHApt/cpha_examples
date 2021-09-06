# CPHA Exemplos


### Criar secrets.yaml falso

Para criar uma copia do secrets.yaml com passwords falsas, para utilizar basta entrar na pasta do Home Assistant e correr o commando.
E preciso ter docker instalado e uns segundos depois de correr vai criar um ficheiro chamado `fake_secrets.yaml` que podem juntar a vossa config para fazer upload no Github / Gitlab / Gitea.. etc..
```
bash -c "$(wget -qLO - https://raw.githubusercontent.com/CPHApt/cpha_examples/main/fake_ha_secrets.sh)"
```
