# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sismaili <sismaili@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/30 16:17:28 by sismaili          #+#    #+#              #
#    Updated: 2023/03/05 00:14:30 by sismaili         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/sismaili/data/db
	mkdir -p /home/sismaili/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up --build

down:
	docker compose -f ./srcs/docker-compose.yml down

clean: down
	docker volume rm -f $$(docker volume ls)
	docker network prune -f
	sudo rm -rf /home/sismaili/data/db/*
	sudo rm -rf /home/sismaili/data/wordpress/*
fclean: down clean
	docker image prune -fa

re: fclean all

.PHONY: all down re clean fclean