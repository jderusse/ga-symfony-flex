FROM composer:latest

LABEL "maintainer"="Jérémy Derussé <jeremy@derusse.com>"
LABEL "repository"="http://github.com/jderusse/ga-symfony-flex"

LABEL "com.github.actions.name"="Symfony-Flex"
LABEL "com.github.actions.description"="Composer with flex and dotenv installed."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="orange"

RUN composer global require \
        symfony/flex \
        symfony/dotenv

ADD entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]
