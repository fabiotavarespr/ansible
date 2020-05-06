all: build

build:
	@docker build --tag=fabiotavarespr/ansible:2.9.7 .
	@docker build --tag=fabiotavarespr/ansible:latest .

push: build
	@docker push fabiotavarespr/ansible:2.9.7
	@docker push fabiotavarespr/ansible:latest 