[![License: AGPL v3][uri_license_image]][uri_license]
[![Docs](https://img.shields.io/badge/Docs-Github%20Pages-blue)](https://monogramm.github.io/poc-wordpress/)
[![gitmoji-changelog](https://img.shields.io/badge/Changelog-gitmoji-blue.svg)](https://github.com/frinyvonnick/gitmoji-changelog)
[![Managed with Taiga.io](https://img.shields.io/badge/Managed%20with-TAIGA.io-709f14.svg)](https://tree.taiga.io/project/monogrammbot-monogrammpoc-wordpress/ "Managed with Taiga.io")
[![Build Status](https://travis-ci.org/Monogramm/poc-wordpress.svg)](https://travis-ci.org/Monogramm/poc-wordpress)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/34921e8a9c4e45f599438db801f57779)](https://www.codacy.com/gh/Monogramm/poc-wordpress?utm_source=github.com&utm_medium=referral&utm_content=Monogramm/poc-wordpress&utm_campaign=Badge_Grade)
[![GitHub stars](https://img.shields.io/github/stars/Monogramm/poc-wordpress?style=social)](https://github.com/Monogramm/poc-wordpress)

<!--
[TODO] If project uses Coveralls for code coverage:

[![Coverage Status](https://coveralls.io/repos/github/Monogramm/poc-wordpress/badge.svg?branch=master)](https://coveralls.io/github/Monogramm/poc-wordpress?branch=master)
-->

<!--
[TODO] If project is deployed to DockerHub:

[![Docker Automated buid](https://img.shields.io/docker/cloud/build/monogramm/poc-wordpress.svg)](https://hub.docker.com/r/monogramm/poc-wordpress/)
[![Docker Pulls](https://img.shields.io/docker/pulls/monogramm/poc-wordpress.svg)](https://hub.docker.com/r/monogramm/poc-wordpress/)
[![Docker Version](https://images.microbadger.com/badges/version/monogramm/poc-wordpress.svg)](https://microbadger.com/images/monogramm/poc-wordpress)
[![Docker Size](https://images.microbadger.com/badges/image/monogramm/poc-wordpress.svg)](https://microbadger.com/images/monogramm/poc-wordpress)
-->

# **POC WordPress**

> :elephant: :alembic: POC WordPress plugin with Unit Tests

:construction: **This project is still in development!**

## :blue_book: Docs

See GitHub Pages at [monogramm.github.io/**poc-wordpress**](https://monogramm.github.io/poc-wordpress/).

## :chart_with_upwards_trend: Changes

All notable changes to this project will be documented in [CHANGELOG](./CHANGELOG.md) file.

This CHANGELOG is generated with :heart: by [gitmoji-changelog](https://github.com/frinyvonnick/gitmoji-changelog).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## :bookmark: Roadmap

See [Taiga.io](https://tree.taiga.io/project/monogrammbot-monogrammpoc-wordpress/ "Taiga.io monogrammbot-monogramm-poc-wordpress")

## :construction: Install

You can build the WordPress plugin zip file using the following command:

```sh
./bin/generate-plugin-zip.sh 'poc-wordpress'
```

You can then manually install the plugin your WordPress.

Alternatively, you can use the docker test environment. Check tests section for details.

## :rocket: Usage

```sh
echo "[TODO] Describe how to use application"
```

## :white_check_mark: Run tests

You can use the docker-compose file to execute the tests:

```sh
docker-compose up -d
docker-compose logs -f sut
```

The `sut` container will run:

-   PHPUnit for this plugin
-   PHPCS for Code quality

You can also check Travis-CI [![Build Status](https://travis-ci.org/Monogramm/poc-wordpress.svg)](https://travis-ci.org/Monogramm/poc-wordpress) for the latest tests results.

To reset your test environment, you can just drop the containers and the persisted data:

```sh
docker-compose down
rm -rf /srv/wordpress
```

<!--
[TODO] If project is deployed to DockerHub:

## :whale: Supported Docker tags

[Dockerhub monogramm/poc-wordpress](https://hub.docker.com/r/monogramm/poc-wordpress/)

* `latest`

-->

## :bust_in_silhouette: Authors

**Monogramm**

-   Website: <https://www.monogramm.io>
-   Github: [@Monogramm](https://github.com/Monogramm)

## :handshake: Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/Monogramm/poc-wordpress/issues).
[Check the contributing guide](./CONTRIBUTING.md).<br />

## :thumbsup: Show your support

Give a :star: if this project helped you!

## :page_facing_up: License

Copyright © 2020 [Monogramm](https://github.com/Monogramm).<br />
This project is [AGPL v3](uri_license) licensed.

* * *

_This README was generated with :heart: by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_

[uri_license]: http://www.gnu.org/licenses/agpl.html

[uri_license_image]: https://img.shields.io/badge/License-AGPL%20v3-blue.svg
