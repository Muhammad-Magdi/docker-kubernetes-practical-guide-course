build-docker:
	docker build ./backend -t multi-back
	docker build ./frontend -t multi-front
serve-docker:
	docker run \
		-d \
		-v multi-data:/data/db \
		--network multi-network \
		--name multi-mongo \
		--rm \
		mongo:focal && \
	docker run \
		-d \
		-p 80:80 \
		-v ${PWD}/backend:/app \
		-v /app/node_modules \
		--name multi-back \
		--rm \
		--network multi-network \
		multi-back && \
	docker run \
		-it \
		-d \
		-e NODE_OPTIONS=--openssl-legacy-provider \
		-p 3000:3000 \
		-v ${PWD}/frontend:/app \
		-v /app/node_modules \
		--name multi-front \
		--rm \
		--network multi-network \
		-e CHOKIDAR_USEPOLLING=true \
		multi-front
stop-docker:
	docker stop multi-front multi-back multi-mongo