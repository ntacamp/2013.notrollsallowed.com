.PHONY: build

SCULPIN = vendor/bin/sculpin
OUTPUT_DIR = web

build: vendor
	$(SCULPIN) generate --watch --server

deploy:
	git pull
	$(SCULPIN) generate --env=prod
	rm -rf $(OUTPUT_DIR)
	mv output_prod $(OUTPUT_DIR)

composer.phar:
	curl -s https://getcomposer.org/installer | php
	touch composer.phar

vendor: composer.phar
	./composer.phar install
	touch vendor

clean:
	rm composer.phar
	rm -rf vendor
	rm -rf $(OUTPUT_DIR)/*
