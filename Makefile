CD = cd
COMPOSE = ./srcs/

UP = docker compose up -d
DOWN = docker compose down

CLEAR_CONTAINER = docker container prune -f
CLEAR_NETWORK = docker network prune -f
CLEAR_VOLUME = docker volume prune -af
CLEAR_IMAGE = docker image prune -af

up:
	$(CD) $(COMPOSE) && $(UP)

down:
	$(CD) $(COMPOSE) && $(DOWN)

clear: $(DOWN)
	$(CLEAR_CONTAINER) && $(CLEAR_VOLUME) && $(CLEAR_NETWORK)

fclear: clear
	$(CLEAR_IMAGE)

re: fclean up

.PHONY: up down fclean clean re