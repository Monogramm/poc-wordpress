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

if [ ! -d "$PLUGIN_DIR" ]; then
	echo "No plugin to test found at '$PLUGIN_DIR'!"
    exit 1
fi

cd "$PLUGIN_DIR"

echo "Install plugin deps..."
composer install

phpunit .
