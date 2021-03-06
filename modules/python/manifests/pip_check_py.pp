# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
# (private)
#
# Install pip-check.py into the misc-python directory
class python::pip_check_py {
    include python::virtualenv::settings
    include python::misc_python_dir
    include users::root

    $file = "${python::virtualenv::settings::misc_python_dir}/pip-check.py"

    file {
        "$file":
            source => "puppet:///modules/python/pip-check.py",
            owner => root,
            group => $::users::root::group,
            mode => 0644,
            require => Class["python::misc_python_dir"];
    }
}
