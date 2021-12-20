build-docker:
	docker build ./backend -t multi-back
	docker build ./frontend -t multi-front
serve-docker:
	docker run \
		-d \
		--name multi-mongo \
		--network multi-network \
		--rm \
		-v multi-data:/data/db \
		mongo:focal && \
	docker run \
		-d \
		--env-file ./backend/.env \
		--name multi-back \
		--network multi-network \
		-p 80:80 \
		--rm \
		-v ${PWD}/backend:/app \
		-v /app/node_modules \
		multi-back && \
	docker run \
		-d \
		--env-file ./frontend/.env \
		-it \
		--name multi-front \
		-p 3000:3000 \
		--rm \
		-v ${PWD}/frontend:/app \
		-v /app/node_modules \
		multi-front
stop-docker:
	docker stop multi-front multi-back multi-mongo