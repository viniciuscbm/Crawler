APP := app
RUN := docker-compose run --rm $(APP)
spec := spec
env := development
 
setup:
	docker-compose build
	make bundle
	make reset
 
bundle:
	$(RUN) bundle install
 
up:
	docker-compose up

down:
	docker-compose down

bash:
	${RUN} bash
 
serve_debug:
	docker-compose up -d
	docker attach $(APP)
 
console:
	$(RUN) bundle exec rails c -e $(env)
 
rspec:
	$(RUN) bundle exec rspec $(spec)
 
run:
	$(RUN) bundle exec $(c)

fasterer:
	$(RUN) bundle exec fasterer

rubycritic:
	$(RUN) bundle exec rubycritic

rubocop:
	$(RUN) bundle exec rubocop -a

brakeman:
	$(RUN) bundle exec brakeman

audit:
	$(RUN) bundle exec bundle audit check --update

best-practices:
	$(RUN) bundle exec rails_best_practices .