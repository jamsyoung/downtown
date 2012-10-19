# downtown

NOTE: This project is not currently in a working state yet.

## The local development environment (vagrant)
This project utilized Vagrant to create a development enviornment on your computer.
To get Vagrant installed, see the section at the bottom of this file titled "Getting
Vagrant setup".


### How to start the vagrant environment
    cd downtown/vagrant/precise64
    vagrant up


### How to stop the vagrant environment
    cd downtown/vagrant/precise64
    vagrant halt


### How to view downtown on the vagrant environment
- <http://localhost:8081/php/>


### How to ssh to the vagrant environment
    cd downtown/vagrant/precise64
    vagrant ssh


* * *


## Nginx
### How to start/stop/restart/status nginx in the vagrant environment
    cd downtown/vagrant/precise64
    vagrant ssh
    sudo /etc/init.d/nginx stop
    sudo /etc/init.d/nginx start
    sudo /etc/init.d/nginx restart
    sudo /etc/init.d/nginx status


* * *


## PHP
### How to start/stop/restart/status PHP FastCGI in the vagrant environment
    cd downtown/vagrant/precise64
    vagrant ssh
    sudo /etc/init.d/php5-fpm stop
    sudo /etc/init.d/php5-fpm start
    sudo /etc/init.d/php5-fpm restart
    sudo /etc/init.d/php5-fpm status


* * *


## MongoDB
### How to start/stop/restart/status mongodb in the vagrant environment
    cd downtown/vagrant/precise64
    vagrant ssh
    sudo service mongodb stop
    sudo service mongodb start
    sudo service mongodb restart
    sudo service mongodb status

More details about controlling mongo can be found at:
<http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/#configure-mongodb>

* * *


### How to do development for the vagrant environment
All files in `downtown/src/main/php` will map to `/usr/share/nginx/www/php` in
the vagrant environment.


## Getting Vagrant setup
### Brief Vagrant setup instructions
- If you have nothing installed:
    - Install VirtualBox - <https://virtualbox.org/wiki/Downloads>
    - Install Vagrant

            gem install vagrant

- With VirtualBox and Vagrant installed:

        git clone git@bitbucket.org:jayoung_turner/harbinger.git
        cd harbinger/vagrant/precise64
        vagrant up
        vagrant ssh
        scripts/vmsetup.sh
        exit

- Confirm it works: <http://localhost:8081/php/>


* * *


### Detailed Vagrant setup instructions

#### What is the VM?
- Ubuntu Precise 12.04 + Nginx + APC + PHP-FPM + Pear + Xdebug

#### Requirements
- VirtualBox - <https://virtualbox.org/wiki/Downloads>
- Vagrant - <http://vagrantup.com/>

#### Setup steps (OS X / Unix)
1. Download and install VirtualBox. Go to the link above and run the installer.
2. Install Vagrant with the command below. This does require Ruby and Rubygems,
   which is installed with Xcode on OS X.

        gem install vagrant

#### Start the local enviornment
The first time you do this, it will take a few minutes

    cd vagrant/precise64
    vagrant up


#### One time manual configuration
There are some steps I haven't automated yet.  ssh to the vagrant vm with the
following command, then do the next steps manually.

    vagrant ssh
    scripts/vmsetup.sh

