# Drone CI/CD docker-compose

discord:
```
kind: pipeline
name: "examplo para enviar msg no discord"

clone:
  disable: true

steps:
- name: discord
  pull: always
  image: appleboy/drone-discord
  environment:
    DISCORD_WEBHOOK_ID:
      from_secret: discord_webhook_id
    DISCORD_WEBHOOK_TOKEN:
      from_secret: discord_webhook_token
  settings:
    message: >
      {{#success build.status}}
      ✅ Build #{{build.number}} de `{{repo.name}}` teve sucesso.
       
      📝 Submetida por {{commit.author}} em `{{commit.branch}}`:
      ```
      {{commit.message}}
      ```
      🌐 <{{ build.link }}>
      {{else}}
      ❌ Build #{{build.number}} de `{{repo.name}}` falhou.
      📝 Submetida por {{commit.author}} em `{{commit.branch}}`:
      ```
      {{commit.message}}
      ```
      🌐 <{{ build.link }}>
      {{/success}}
```
