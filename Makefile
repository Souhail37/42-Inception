# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sismaili <sismaili@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/30 16:17:28 by sismaili          #+#    #+#              #
#    Updated: 2023/02/13 16:29:14 by sismaili         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	# mkdir -p /home/sismaili/data/db
	# mkdir -p /home/sismaili/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker volume rm -f $$(docker volume ls)
	docker network prune -f
	docker image prune -fa
fclean: down clean
	rm -rf /Users/sismaili/Desktop/Inception/data/db/*
	rm -rf /Users/sismaili/Desktop/Inception/data/wordpress/*

re: fclean all

.PHONY: all down re clean fclean