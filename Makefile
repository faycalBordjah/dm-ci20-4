.DEFAULT_GOAL := help

.PHONY: help ## Generate list of targets with descriptions
help:
		@grep '##' Makefile \
		| grep -v 'grep\|sed' \
		| sed 's/^\.PHONY: \(.*\) ##[\s|\S]*\(.*\)/\1:\t\2/' \
		| sed 's/\(^##\)//' \
		| sed 's/\(##\)/\t/' \
		| expand -t14

.PHONY:	install	# install dependencies with composer
install:
	php bin/composer.phar install

.PHONY: start ## start the project in php built-in server
start:
	php bin/console server:run

.PHONY: test_unit ## launch unit tests
test_unit:
	bin/phpunit tests/Unit

.PHONY: test_integration ## launch integration tests
test_integration:
	php bin/console 	tests/Integration

.PHONY: test_functional ## launch functional tests
test_functional:
	php vendor/bin/behat

.PHONY: tests ## run all tests
tests: test_unit test_integration test_functional