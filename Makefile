build:
	docker-compose build 

run:
	docker-compose up

clean:
	docker-compose down --rmi local

