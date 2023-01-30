# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sismaili <sismaili@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/30 16:17:28 by sismaili          #+#    #+#              #
#    Updated: 2023/01/30 16:48:29 by sismaili         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/sismaili/data/db
	mkdir -p /home/sismaili/data/db
	docker compose -f ./srcs/docker-compose.yml up --build

down:
	docker compose -f ./srcs/docker-compose.yml down

re: down
	docker compose -f ./srcs/docker-compose.yml up -d --build

clean: down
	docker volume rm -f $$(docker volume ls)
	docker network prune -f
	docker image prune -fa
fclean: down clean
	sudo rm -rf /home/sismaili/data/db/*
	sudo rm -rf /home/sismaili/data/wordpress/*

.PHONY: all down re clean fclean