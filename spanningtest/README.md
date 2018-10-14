# spanningtest

TODO: Enter the cookbook description here.

SJC-MBP-18-3570:spanning root# chef-solo -c solo.rb -o spanningtest
Starting Chef Client, version 14.3.37
[2018-10-14T15:11:50-07:00] WARN: Run List override has been provided.
[2018-10-14T15:11:50-07:00] WARN: Run List override has been provided.
[2018-10-14T15:11:50-07:00] WARN: Original Run List: []
[2018-10-14T15:11:50-07:00] WARN: Original Run List: []
[2018-10-14T15:11:50-07:00] WARN: Overridden Run List: [recipe[spanningtest]]
[2018-10-14T15:11:50-07:00] WARN: Overridden Run List: [recipe[spanningtest]]
resolving cookbooks for run list: ["spanningtest"]
Synchronizing Cookbooks:
  - spanningtest (0.1.0)
  - apache2 (5.2.1)
Installing Cookbook Gems:
Compiling Cookbooks...
Converging 96 resources
Recipe: apache2::default
  * homebrew_package[apache2] action install (up to date)
  * directory[/etc/httpd/sites-available] action create (up to date)
  * directory[/etc/httpd/sites-enabled] action create (up to date)
  * directory[/etc/httpd/mods-available] action create (up to date)
  * directory[/etc/httpd/mods-enabled] action create (up to date)
  * directory[/etc/httpd/conf-available] action create (up to date)
  * directory[/etc/httpd/conf-enabled] action create (up to date)
  * link[/etc/httpd/sites-enabled/default] action delete (up to date)
  * file[/etc/httpd/sites-available/default] action delete (up to date)
  * link[/etc/httpd/sites-enabled/default.conf] action delete (up to date)
  * file[/etc/httpd/sites-available/default.conf] action delete (up to date)
  * link[/etc/httpd/sites-enabled/000-default] action delete (up to date)
  * file[/etc/httpd/sites-available/000-default] action delete (up to date)
  * link[/etc/httpd/sites-enabled/000-default.conf] action delete (up to date)
  * file[/etc/httpd/sites-available/000-default.conf] action delete (up to date)
  * directory[/var/log/apache2] action create (up to date)
  * homebrew_package[perl] action install (up to date)
  * link[/usr/sbin/a2ensite] action delete (skipped due to only_if)
  * template[/usr/sbin/a2ensite] action create (up to date)
  * link[/usr/sbin/a2dissite] action delete (skipped due to only_if)
  * template[/usr/sbin/a2dissite] action create (up to date)
  * link[/usr/sbin/a2enmod] action delete (skipped due to only_if)
  * template[/usr/sbin/a2enmod] action create (up to date)
  * link[/usr/sbin/a2dismod] action delete (skipped due to only_if)
  * template[/usr/sbin/a2dismod] action create (up to date)
  * link[/usr/sbin/a2enconf] action delete (skipped due to only_if)
  * template[/usr/sbin/a2enconf] action create (up to date)
  * link[/usr/sbin/a2disconf] action delete (skipped due to only_if)
  * template[/usr/sbin/a2disconf] action create (up to date)
  * cookbook_file[/usr/local/bin/apache2_module_conf_generate.pl] action create (up to date)
  * execute[generate-module-list] action nothing (skipped due to action :nothing)
  * directory[/etc/httpd/ssl] action create (up to date)
  * directory[/var/cache/apache2] action create (up to date)
  * directory[logs] action create (up to date)
  * template[/etc/sysconfig/httpd] action create (skipped due to only_if)
  * template[/etc/httpd/envvars] action create (skipped due to only_if)
  * template[apache2.conf] action create (up to date)
  * file[/etc/httpd/conf-available/security] action delete (up to date)
  * template[/etc/httpd/conf-available/security.conf] action create (up to date)
  * execute[a2enconf security.conf] action run (skipped due to not_if)
  * file[/etc/httpd/conf-available/charset] action delete (up to date)
  * template[/etc/httpd/conf-available/charset.conf] action create (up to date)
  * execute[a2enconf charset.conf] action run (skipped due to not_if)
  * template[ports.conf] action create (up to date)
Recipe: apache2::mpm_prefork
  * file[/etc/httpd/mods-available/mpm_event.load] action create (up to date)
  * execute[a2dismod mpm_event] action run (skipped due to only_if)
  * file[/etc/httpd/mods-available/mpm_worker.load] action create (up to date)
  * execute[a2dismod mpm_worker] action run (skipped due to only_if)
  * template[/etc/apache2/mods-available/mpm_prefork.conf] action create (up to date)
  * file[/etc/httpd/mods-available/mpm_prefork.load] action create (up to date)
  * execute[a2enmod mpm_prefork] action run (skipped due to not_if)
Recipe: apache2::mod_status
  * template[/etc/apache2/mods-available/status.conf] action create (up to date)
  * file[/etc/httpd/mods-available/status.load] action create (up to date)
  * execute[a2enmod status] action run (skipped due to not_if)
Recipe: apache2::mod_alias
  * template[/etc/apache2/mods-available/alias.conf] action create (up to date)
  * file[/etc/httpd/mods-available/alias.load] action create (up to date)
  * execute[a2enmod alias] action run (skipped due to not_if)
Recipe: apache2::mod_auth_basic
  * file[/etc/httpd/mods-available/auth_basic.load] action create (up to date)
  * execute[a2enmod auth_basic] action run (skipped due to not_if)
Recipe: apache2::mod_authn_core
  * file[/etc/httpd/mods-available/authn_core.load] action create (up to date)
  * execute[a2enmod authn_core] action run (skipped due to not_if)
Recipe: apache2::mod_authn_file
  * file[/etc/httpd/mods-available/authn_file.load] action create (up to date)
  * execute[a2enmod authn_file] action run (skipped due to not_if)
Recipe: apache2::mod_authz_core
  * file[/etc/httpd/mods-available/authz_core.load] action create (up to date)
  * execute[a2enmod authz_core] action run (skipped due to not_if)
Recipe: apache2::mod_authz_groupfile
  * file[/etc/httpd/mods-available/authz_groupfile.load] action create (up to date)
  * execute[a2enmod authz_groupfile] action run (skipped due to not_if)
Recipe: apache2::mod_authz_host
  * file[/etc/httpd/mods-available/authz_host.load] action create (up to date)
  * execute[a2enmod authz_host] action run (skipped due to not_if)
Recipe: apache2::mod_authz_user
  * file[/etc/httpd/mods-available/authz_user.load] action create (up to date)
  * execute[a2enmod authz_user] action run (skipped due to not_if)
Recipe: apache2::mod_autoindex
  * template[/etc/apache2/mods-available/autoindex.conf] action create (up to date)
  * file[/etc/httpd/mods-available/autoindex.load] action create (up to date)
  * execute[a2enmod autoindex] action run (skipped due to not_if)
Recipe: apache2::mod_deflate
  * template[/etc/apache2/mods-available/deflate.conf] action create (up to date)
  * file[/etc/httpd/mods-available/deflate.load] action create (up to date)
  * execute[a2enmod deflate] action run (skipped due to not_if)
Recipe: apache2::mod_dir
  * template[/etc/apache2/mods-available/dir.conf] action create (up to date)
  * file[/etc/httpd/mods-available/dir.load] action create (up to date)
  * execute[a2enmod dir] action run (skipped due to not_if)
Recipe: apache2::mod_env
  * file[/etc/httpd/mods-available/env.load] action create (up to date)
  * execute[a2enmod env] action run (skipped due to not_if)
Recipe: apache2::mod_mime
  * template[/etc/apache2/mods-available/mime.conf] action create (up to date)
  * file[/etc/httpd/mods-available/mime.load] action create (up to date)
  * execute[a2enmod mime] action run (skipped due to not_if)
Recipe: apache2::mod_negotiation
  * template[/etc/apache2/mods-available/negotiation.conf] action create (up to date)
  * file[/etc/httpd/mods-available/negotiation.load] action create (up to date)
  * execute[a2enmod negotiation] action run (skipped due to not_if)
Recipe: apache2::mod_setenvif
  * template[/etc/apache2/mods-available/setenvif.conf] action create (up to date)
  * file[/etc/httpd/mods-available/setenvif.load] action create (up to date)
  * execute[a2enmod setenvif] action run (skipped due to not_if)
Recipe: apache2::default
  * macosx_service[apache2] action enable (up to date)
  * macosx_service[apache2] action start (up to date)
Recipe: spanningtest::default
  * homebrew_package[apache2] action install (up to date)
  * ruby_block[murder_my_friends] action run
    - execute the ruby block murder_my_friends
  * template[/Users/jgentile/repos/spanning/index.html] action create
    - update content in file /Users/jgentile/repos/spanning/index.html from 2a7444 to b0f1f2
    --- /Users/jgentile/repos/spanning/index.html	2018-10-14 14:39:27.956193037 -0700
    +++ /Users/jgentile/repos/spanning/.chef-index20181014-11553-1c5wrzt.html	2018-10-14 15:11:53.544764640 -0700
    @@ -4,7 +4,7 @@
     <head>
     </head>
     <body>
    -<h1>Hooray apache!</h1>
    +<h1>Hooray apache2!</h1>
     </body>
     </html>
  * ruby_block[resurrect_my_friends] action nothing (skipped due to action :nothing)
  * ruby_block[resurrect_my_friends] action run
    - execute the ruby block resurrect_my_friends
Recipe: apache2::default
  * macosx_service[apache2] action restart
    - restart service macosx_service[apache2]
[2018-10-14T15:11:54-07:00] WARN: Skipping final node save because override_runlist was given
[2018-10-14T15:11:54-07:00] WARN: Skipping final node save because override_runlist was given

Running handlers:
Running handlers complete
Chef Client finished, 4/99 resources updated in 08 seconds
SJC-MBP-18-3570:spanning root#
