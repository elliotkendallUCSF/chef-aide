Description
===========

Installs and configures the AIDE host-based intrusion detection system.

Requirements
============

Platform
--------

Tested on CentOS and Ubuntu

Attributes
==========

* `node["aide"]["binary"]` - Path to aide binary. Defaults to a sensible
choice for the platform

* `node["aide"]["config"]` - Path to aide.conf file. Defaults to a sensible
choice for the platform

* `node["aide"]["extra_parameters"]` - Extra parameters to use when invoking
aide. Defaults to a sensible choice for the platform.

* `node["aide"]["cron_service"]` - The name of the cron service on the
platform. Defaults to a sensible choice for the platform.

* `node["aide"]["dbdir"]` - Where the AIDE database files are kept. Defaults
to /var/lib/aide

* `node["aide"]["macros"]` - A dictionary of AIDE macros, pre-populated
as in the default AIDE config file.

* `node["aide"]["paths"]` - A dictionary of paths for AIDE to inspect and
how to handle them, pre-populated as in the default AIDE config file.

* `node["aide"]["report_url"]` - Where to send the output.  Defaults to "stdout". 
See the AIDE documentation for other options.

Usage
=====

Typically, you'll want to add the default recipe to a role's run list, then
add to the paths dictionary with locations to ignore.  Remember that paths
use regex syntax, not glob syntax, so "all files in /opt/foo" is expressed
as "/opt/foo/.*" not "/opt/foo/*".

    {
      "name": "foo",
      ...
      "run_list": [
        ...
        "recipe[aide]"
      ],
      "override_attributes": {
        ...
        "aide": {
          "paths": {
            "/opt/foo/.*": "!"
          }
        }
      }
    }

License and Author
==================

Author:: Elliot Kendall (<elliot.kendall@ucsf.edu>)

Copyright:: 2013, The Regents of the University of California
