# Образец для проекта Laravel в Docker

## Подготовка

```bash
make prepare
docker compose up -d
make artisan cmd=migrate
```

После этого открыть в браузере `https://localhost:{BUN_PORT}/@vite/client` и разрешить сертификат.

## Изменения для конкретного проекта

Заменить все упоминания `app` на имя проекта:

- `./compose.yml`
- `./docker/caddy/Caddyfile`
- `./docker/php/Dockerfile`
- `./src/.env.example`
- `./src/vite.config.js`

По желанию добавить в `/etc/hosts` запись `127.0.0.1 {APP_NAME}.test`
