build:
	sudo docker build -t node-app:latest .
serve-docker:
	sudo docker run -dp 3000:3000 --rm --name my-server node-app:latest
stop-docker:
	sudo docker stop my-server