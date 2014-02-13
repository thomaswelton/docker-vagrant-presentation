docker-vagrant-presentation
===========================

Friday tech talk at Moo.
Intro into Docker, Vagrant and other stuff.

Slides can be found at http://slid.es/thomaswelton/docker

Source code is available step by step in different branches on this repo.

# Starting with Vagrant

Install Vagrant then run.

```
vagrant box add base http://files.vagrantup.com/precise32.box
vagrant init
vagrant up
```

Once the VM is running you can ssh into the box. `vagrant ssh`

# Running Docker inside Vagrant

You'll require two plugins

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-reload
```

Our Vagrant file now uses a different base box. If you already have a VM provisioned it will need to be destroyed and rebuilt

```
vagrant destroy
vagrant up
```

# Playing with Docker

Now we have Docker install in the VM lets see that we can do with it. Run `docker` for a list of options

Say hello `docker run -t ubuntu echo hello`
Run bash `docker run -i -t ubuntu /bin/bash`

Run a command as a deamon `docker run -d -t ubuntu /bin/bash`
Run a deamon that wont quit `docker run -d -t ubuntu /bin/bash -c "while true; do echo 'hello world'; sleep 1; done"`

Attach into a running container `docker attach CONTAINER_ID`
Stop a running container `docker stop CONTAINER_ID`
Start a stopped container `docker start CONTAINER_ID`
