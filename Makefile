dcup:
	docker-compose up -d --build              
dcdown:
	docker-compose down --remove-orphans
be:
	docker exec -it backendoop bash
fe:
	docker exec -it frontendoop bash
db:
	docker exec -it databaseoop bash
logsbe:
	docker logs backendoop
logsfe:
	docker logs frontendoop
logsdb:
	docker logs databaseoop
stopbe:
	docker stop backendoop
stopfe:
	docker stop frontendoop
stopdb:
	docker stop databaseoop
startbe:
	docker start backendoop
startfe:
	docker start frontendoop
startdb:
	docker start databaseoop
rebe:
	docker restart backendoop
refe:
	docker restart frontendoop
redb:
	docker restart databaseoop
stbe:
	@echo "Starting Backend..."
	@cd backend && go run main.go

stfe:
	@echo "Starting Frontend..."
	@cd frontend && . ~/.nvm/nvm.sh && nvm use 20 && npm run dev

format:
	@echo "Formatting..."
	@cd frontend && . ~/.nvm/nvm.sh && nvm use 20 && npm run format

lint:
	@echo "Linting..."
	@cd frontend && . ~/.nvm/nvm.sh && nvm use 20 && npm run lint