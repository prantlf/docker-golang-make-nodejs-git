clean ::
	docker image rm golang-make-nodejs-git

lint ::
	docker run --rm -i \
		-v "${PWD}"/.hadolint.yaml:/bin/hadolint.yaml \
		-e XDG_CONFIG_HOME=/bin hadolint/hadolint \
		< Dockerfile

build ::
	docker build -t golang-make-nodejs-git .

run ::
	docker run --rm -t -i golang-make-nodejs-git

tag ::
	docker tag golang-make-nodejs-git prantlf/golang-make-nodejs-git:latest

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/golang-make-nodejs-git:latest
