# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
class proxxy::settings {
    $cache_dir = "/var/cache/proxxy"
    $nginx_conf = "/etc/nginx/nginx.conf"
    $nginx_vhosts_conf = "/etc/nginx/sites-enabled/proxxy"
    $syslog_server = "unix:/dev/log"

    $backends = {
        'ftp.mozilla.org' => {
            path => 'https://ftp.mozilla.org/',
            size => '16g',
            ttl => '1d',
            username => 'foo',
            password => 'bar'
        },
        'pypi.pub.build.mozilla.org' => {
            path => 'http://pypi.pub.build.mozilla.org/',
            size => '16g',
            ttl => '1d'
        },
        's3' => {
            path => 'https://s3.amazonaws.com/',
            size => '16g',
            ttl => '1d'
        }
    }
}
