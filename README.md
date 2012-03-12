# Server provisioning recipes

These recipes are currently specificly tailored for [Jiffybox](http://jiffybox.de) instances. They may work on other servers as well, or they'll shoot you in the foot and eat your cat. **You have been warned.**

## Installation

You need [sunzi](https://github.com/kenn/sunzi).

    gem install sunzi

## Assumptions / Prerequisites

* You have setup a new Jiffybox with **Ubuntu 10.04 64bit**.
* You have put the public key for the Webistrano deploy user into `files/deploy_key`.
* You changed *application_name* and *ruby_version* in `sunzi.yml` according to your needs.

## Fire!

To setup the server, just run the following inside the sunzi directory:

    sunzi deploy [HOST/IP]

Follow the instructions that the script gives you after it is done. The last thing you need to do is initialize the database. An example:

`echo "create database my_database" | mysql`

That's it. You can now deploy to the server with Webistrano.

## Customization

The main script is `install.sh`. Here you can change which recipes will be run, do special stuff, etc.
The recipes reside in (surprise!) `recipes/`. You can add new ones if you like.
If you want to know more (attribute variable usage, etc.) consult the [sunzi documentation](https://github.com/kenn/sunzi#readme).