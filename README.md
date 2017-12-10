# 🎶 FindMyRecords

## 🎭 Installation

* Clone this repository, then at the root folder run `git submodule init && git submodule update`

* Run `make install` for installing the dependencies of each project.

* Run `make build` for building all the API's services.

* Run `make hosts` for adding the hosts.

## 🚀 Getting started

You can access the deployed version at http://165.227.222.29:3000/.

Run `docker-compose up`. You can then access :
  * http://app.findmyrecords.io
  * http://juno.findmyrecords.io
  * http://techno-import.findmyrecords.io

You can test the api accessing the following links (hosts need to be set) :
• http://juno.findmyrecords.io/reference?artists=moodymann&title=moods
• http://redeye.findmyrecords.io/reference?artists=moodymann&title=moods

You can then the app accessing http://app.findmyrecords.io, type e.maincourt in the search bar and then Parse Wantlist (select only Juno).

## Micro-services

For implementing our solution, we have chosen to deal with a micro-services, HTTP based, architecture with each instance defined in our `docker-compose.yml` file. All the services can be accessed throughout the [Traefik proxy](https://traefik.io/) that is dynamically able to keep a `service discovery` up-to-date for us.

## Cluster management

If we have been able to locally deploy our stack, we also wanted to deal with more realistic contraints such as cloud hosting and scaling. To do so, we have chosen to opt for a [Docker Swarm](https://docs.docker.com/engine/swarm/) cluster that we have deployed on [Digital Ocean](https://cloud.digitalocean.com/).

To do so, we have created 3 "droplets" (aka. nodes). One of these droplets is the manager of the Docker Swarm and the 3 of them are able to host multiple instances of our services. The manager will be in charge of monitoring, services discovery and scaling of our cluster. Here are our droplets :

<p align="center"><img src="https://preview.ibb.co/jrRHHw/Screen_Shot_2017_12_10_at_12_53_46.png" width="50%" height="auto" style="margin-left: 50%" /></p>

After starting the cluster, we can see all the started services :

<p align="center"><img src="https://preview.ibb.co/moxXHw/Screen_Shot_2017_12_10_at_12_56_27.png" width="50%" height="auto" style="margin-left: 50%" /></p>

We are then able to see how many instances are running and to scale up and down if needed 🚀 :

<p align="center"><img src="https://preview.ibb.co/d91yqG/Screen_Shot_2017_12_10_at_12_58_44.png" width="50%" height="auto" style="margin-left: 50%" /></p>

Please refer now to the [app](https://github.com/FindMyRecords/app) and [api](https://github.com/FindMyRecords/api) repositories for further details about their implementation.
