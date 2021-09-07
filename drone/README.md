# Drone CI/CD docker-compose

discord:
```
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
      ✅ Build #{{build.number}} of `{{repo.name}}` succeeded.
       
      📝 Commit by {{commit.author}} on `{{commit.branch}}`:
      ```
      {{commit.message}}
      ```
      🌐 <{{ build.link }}>
      {{else}}
      ❌ Build #{{build.number}} of `{{repo.name}}` failed.
      📝 Commit by {{commit.author}} on `{{commit.branch}}`:
      ```
      {{commit.message}}
      ```
      🌐 <{{ build.link }}>
      {{/success}}
```
