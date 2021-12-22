initialize-project:
	docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
migrate:
	docker-compose run --rm artisan migrate
serve:
	docker-compose up -d nginx
down:
	docker-compose down