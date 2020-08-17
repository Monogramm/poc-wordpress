FROM composer:1.10.10 as builder-composer

# Test container for CI

COPY docker-test.sh /docker-test.sh
COPY install-wp-tests.sh /install-wp-tests.sh

ENV DOCKER_TESTS=true

RUN set -ex; \
    chmod 755 \
        /docker-test.sh \
        /install-wp-tests.sh \
    ; \
    apt-get update; \
    apt-get install \
        svn \
    ; \
    /install-wp-tests.sh;

ENTRYPOINT ["/docker-test.sh"]
