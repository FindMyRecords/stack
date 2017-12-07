install:
	docker-compose run app yarn
	docker-compose run juno yarn
	docker-compose run redeye yarn

build:
	docker-compose run juno yarn build
	docker-compose run redeye yarn build

hosts:
	echo "Setting up the hosts in /etc/hosts file"
	sudo -- sh -c -e "cat hosts >> /etc/hosts"

.PHONY: install build hosts