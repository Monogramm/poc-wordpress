#!/bin/sh

set -e

################################################################################

wait_for_db() {
	if [ "$WAIT_FOR_DB" == "false" ]; then
		return 0
	fi

	until nc -z -v -w60 $DB_HOST 3306; do
		echo "Waiting for database connection..."
		# wait for 5 seconds before check again
		sleep 5
	done
}

################################################################################

wait_for_db

echo "Waiting to ensure everything is fully ready for the tests..."
sleep 60

if [ ! -d "$PROJECT_DIR" ]; then
	echo "No project to test found at '$PROJECT_DIR'!"
    exit 1
fi

cd "$PROJECT_DIR"

echo "Install plugin deps..."
composer install

echo "Trigger PHPUnit tests..."
./vendor/bin/phpunit

echo "Trigger PHPUnit tests with WP in multisite mode..."
WP_MULTISITE=1 ./vendor/bin/phpunit

echo "Trigger PHP Code Sniffer..."
./vendor/bin/phpcs

echo "Tests successful. Check logs for details."
return 0
