# 42-Inception
42-Cursus : Inception
# Chapter II: Docker System Administration Project

This project is designed to enhance your knowledge of system administration by utilizing Docker. You will virtualize various Docker images, creating them within your personal virtual machine.

## Table of Contents

- [General Guidelines](#general-guidelines)
- [Mandatory Part](#mandatory-part)

## General Guidelines

- This project must be completed on a Virtual Machine.
- All project configuration files must be placed in the `srcs` folder.
- A `Makefile` is required at the root of your directory to set up your entire application using `docker-compose.yml`.

## Mandatory Part

This project involves setting up a small infrastructure consisting of various services under specific rules. Here are the main requirements:

- The entire project must be done in a virtual machine using Docker Compose.
- Each Docker image must have the same name as its corresponding service.
- Each service must run in a dedicated container.
- Containers must be built using the penultimate stable version of Alpine or Debian for performance reasons.
- Write Dockerfiles, one per service, and call them in your `docker-compose.yml` using your `Makefile`.
- Do not pull ready-made Docker images or use services like DockerHub (Alpine/Debian are exceptions).
- Set up the following services:
  - Docker container with NGINX (TLSv1.2 or TLSv1.3 only).
  - Docker container with WordPress + php-fpm.
  - Docker container with MariaDB.
  - A volume for WordPress database.
  - A second volume for WordPress website files.
  - Create a docker-network to connect your containers.
- Ensure containers automatically restart in case of a crash.
