VERSION=1.0.0
PHPBIN=$(shell which php)

composer.phar:
	curl -sS https://getcomposer.org/installer | php -- $(VERSION)

install: composer.phar
	$(PHPBIN) composer.phar install

server:
	$(PHPBIN) artisan serve

phpunit.phar:
	wget https://phar.phpunit.de/phpunit.phar -O ./phpunit.phar

test: phpunit.phar
	$(PHPBIN) phpunit.phar tests

