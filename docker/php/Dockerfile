FROM php:8.5.2-fpm-bookworm

ARG UID=1000
ARG GID=1000

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    unzip \
    libpq-dev \
    libzip-dev \
    libicu-dev \
    && docker-php-ext-install -j"$(nproc)" \
    bcmath \
    intl \
    pcntl \
    pdo_pgsql \
    zip \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:2.10 /usr/bin/composer /usr/bin/composer

RUN groupmod -o -g "${GID}" www-data \
    && usermod -o -u "${UID}" -g "${GID}" www-data

COPY docker/php/conf.d/app.ini /usr/local/etc/php/conf.d/99-app.ini

WORKDIR /app

CMD ["php-fpm"]
