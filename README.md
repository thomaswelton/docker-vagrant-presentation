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