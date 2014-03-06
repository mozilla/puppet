# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
class packages::mesa {
    case $::operatingsystem {
        Ubuntu: {
            case $::hardwaremodel {
                "i686": {
                    package {
                        # This package is a recompiled version of
                        # https://launchpad.net/ubuntu/+source/mesa
                        ["libgl1-mesa-dri", "libgl1-mesa-glx", "libglapi-mesa",
                         "libglu1-mesa","libxatracker1"]:
                            ensure => '8.0.2-0ubuntu3';
                    }
                }
                "x86_64": {
                    package {
                        # This package is a recompiled version of
                        # https://launchpad.net/ubuntu/+source/mesa
                        ["libgl1-mesa-dri", "libgl1-mesa-glx", "libglapi-mesa",
                         "libglu1-mesa","libxatracker1"]:
                            ensure => '8.0.4-0ubuntu0.2';
                    }
                }
            }
        }
        default: {
            fail("cannot install on $::operatingsystem")
        }
    }
}
