#clean will remove running containers and server config
#sterile will clean, then remove ALL volumes and ALL images- even unrelated ones

TARGET ?= demo
DB ?= database

ROOT = ${abspath .}
RUNTIME = ${ROOT}/server
IMAGES = ${ROOT}/config/images
COMPOSITIONS = ${ROOT}/config/compositions

INSTANCE = ${abspath ${RUNTIME}/applications/${TARGET}}
VOLUMES = ${abspath ${RUNTIME}/volumes}

DATABASE_VOLUME = ${abspath ${VOLUMES}/${DB}}

BASERAILS_IMAGE_DIR = ${IMAGES}/base_rails
DB_IMAGE_DIR = ${IMAGES}/db

export PATH := ${abspath ${ROOT}/bin/}:${PATH}

default: images instance

images: base_rails_image db_image

base_rails_image: ${BASERAILS_IMAGE_DIR}/Dockerfile 
	docker build --tag gs/base_rails ${BASERAILS_IMAGE_DIR}

db_image: ${DB_IMAGE_DIR}/Dockerfile 
	docker build --tag gs/db ${DB_IMAGE_DIR}

instance: workspace_link database_link composition 

workspace_link:  
	ln -sfn ${INSTANCE} ${RUNTIME}/workspace_volume

database_link: 
	ln -sfn ${DATABASE_VOLUME} ${RUNTIME}/database_volume

${DATABASE_VOLUME}:
	mkdir -p ${DATABASE_VOLUME}

composition:
	cp -rvf ${COMPOSITIONS}/application.yml ${RUNTIME}/runtime.yml

clean:
	rm -rf ${INSTANCE}
	exec docker-clean

cleaner: clean
	rm -rf ${VOLUMES}/*

sterile: cleaner
	exec docker-rmi

