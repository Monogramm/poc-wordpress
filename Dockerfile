FROM composer:1.10.10 as builder-composer

# Test container for CI

COPY docker-test.sh /docker-test.sh

RUN set -ex; \
    sudo chmod 755 /docker-test.sh

ENTRYPOINT ["/docker-test.sh"]
