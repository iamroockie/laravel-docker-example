.PHONY: artisan
artisan:
	@docker compose exec --user www-data php php artisan $(cmd)

.PHONY: composer
composer:
	@docker compose exec --user www-data php composer $(cmd)

.PHONY: bun
bun:
	@docker compose exec bun $(cmd)

.PHONY: php
php:
	@docker compose exec --user www-data php sh

.PHONE: prepare
prepare:
	@cp .env.example .env
	@cp ./src/.env.example ./src/.env
	@docker compose run --rm --user www-data php sh -c \
		"composer install && php artisan key:generate"
	@docker compose run --rm bun bun install
