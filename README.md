# meetup-automating-the-modern-datacenter

## Getting up and running
### Requirements
- A recent release of [Vagrant](http://www.vagrantup.com), preferably the latest
- A recent release of [Virtualbox](https://www.virtualbox.org), preferably the latest
- A text editor or IDE 

### Setting up your Vagrant environment
Check if your Vagrant install is working properly: 
```
$ vagrant --version
Vagrant 1.7.2
```
If you just upgraded your Vagrant install, upgrade any installed plugins as well: 
```
$ vagrant plugin update
Updating installed plugins...
All plugins are up to date.
```
It may be a good idea to use the `vagrant-cachier` plugin. This plugin introduces a local cache for stuff like YUM/Apt inside your boxes, and saves bandwidth and time. If you don't have the `vagrant-cachier` plugin installed, you can install it: 
```
$ vagrant plugin install vagrant-cachier
```

Lastly, we will be needing the `ubuntu/trusty64` Vagrant box. It will be automatically downloaded and installed if necessary when running `Vagrant up`, but if you would like to add the box without starting up the Vagrant environment, you can do so by: 
```
$ vagrant box add ubuntu/trusty64
```
This usually takes somewhere between 1 and 15 minutes, depending on your connection. 

### Running the Vagrant setup
1. Clone this repository (if you haven't already)
1. Enter the working directory: `cd path/to/this/repo`
1. Start the Vagrant setup: `vagrant up`

Vagrant will now create a VM, based on the ubuntu/trusty64 box, give it 1GB of RAM, boot it, and install Docker on it. Then it will fire up a few containers. 

### Testing the application
Did everything work? You can test by pointing your browser to http://10.9.8.10:12345/
