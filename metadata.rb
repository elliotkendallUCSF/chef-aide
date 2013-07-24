name                "aide"
description         "Installs and configures AIDE HIDS"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer          "Elliot Kendall"
maintainer_email    "elliot.kendall@ucsf.edu"
license             "BSD"
version             "0.1.2"

supports            "centos", "ubuntu"

recipe              "aide", "Installs and configures AIDE HIDS"