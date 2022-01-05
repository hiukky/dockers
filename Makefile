#!make
WORKDIR=$(CURDIR)/$(CONTAINER)
ENV=$(WORKDIR)/.env
COMPOSE_FILE=$(WORKDIR)/docker-compose.yml

include $(ENV)

export

.PHONY: up

up:
	docker compose -f $(COMPOSE_FILE) up -d

.PHONY: down

down:
	docker compose down

.PHONY: logs

logs:
	docker compose logs -f
