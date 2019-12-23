REPORTER = spec
JQUERY_VERSION = 3.4.1.min
ANGULAR_VERSION = 8.2.14

node_modules:
	npm install

deploy: public/js/jquery-$(JQUERY_VERSION).js public/js/angular.min.js public/js/angular-ui-router.min.js

clean:
	rm -rf node_modules
	rm -rf package-lock.json

public/js/jquery-$(JQUERY_VERSION).js:
	@mkdir -p public/js
	curl http://code.jquery.com/jquery-$(JQUERY_VERSION).js > $@

public/js/angular.min.js:
	@mkdir -p public/js
	curl http://cdnjs.cloudflare.com/ajax/libs/angular.js/$(ANGULAR_VERSION)/angular.min.js > $@

public/js/angular-ui-router.min.js:
	@mkdir -p public/js
	curl http://angular-ui.github.io/ui-router/release/angular-ui-router.js > $@

.PHONY: deploy
