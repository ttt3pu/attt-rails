build:
	docker-compose build
up:
	docker-compose up
down:
	docker-compose down
bundle:
	docker-compose exec web bundle install
reset:
	docker-compose exec -it web rails db:migrate:reset
	docker-compose exec -it web rails db:seed
rspec:
	docker-compose exec -it web bundle exec rails rspec
console:
	docker-compose exec -it web bundle exec rails console
rubocop:
	docker-compose exec -it web bundle exec rubocop
