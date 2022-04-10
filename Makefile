build:
	docker-compose build
up:
	docker-compose up
down:
	docker-compose down
bundle:
	docker-compose exec web bundle install
reset:
	docker-compose exec web rails db:migrate:reset
	docker-compose exec web rails db:seed
rspec:
	docker-compose exec web bundle exec rspec ${ARG}
console:
	docker-compose exec web bundle exec rails console ${ARG}
rubocop:
	docker-compose exec web bundle exec rubocop ${ARG}
rails:
	docker-compose exec web rails ${ARG}
