Appsindo Cookbook
=================
Appsindo Base Cookbook combining setups from:

- http://html5boilerplate.com/
- https://github.com/h5bp/server-configs-nginx
- Each software recipes from Chef Cookbook

Prerequisites
-------------
- ChefDK (https://downloads.getchef.com/chef-dk/) chef, chef-solo, berkshelf is included in it
- vagrant-berkshelf plugin (if you are using vagrant)

How To Use
----------
This is what I do in Vagrant

```
      chef.custom_config_path = "./chef.config"
      chef.json = {
         "instance" => instance,
         "www" => {
            "user"  => user,
            "group" => group
         }
      }

      # the basic recipes for web development (and some utilites)
      chef.add_recipe("apt")
      chef.add_recipe("appsindo")
      chef.add_recipe("appsindo::php")
      chef.add_recipe("appsindo::php_composer")
      chef.add_recipe("appsindo::nginx")

      # if you need these
      chef.add_recipe("appsindo::nodejs")
      chef.add_recipe("appsindo::redis")
      chef.add_recipe("appsindo::mysql")
      chef.add_recipe("appsindo::mongo")
```

Chef Solo
------------
See example folder - copy to a save place. run `runme.sh`


Requirements
------------
Ubuntu/Debian Specific Cookbook (still no platform checking - use with caution :P)

License and Authors
-------------------
Authors & Contributors:
- Erwin Saputra <erwin.saputra@at.co.id>
- Dedi Suhanda <dedi.suhanda@at.co.id>
- Rudi Hermanto <rudi.hermanto@at.co.id>
