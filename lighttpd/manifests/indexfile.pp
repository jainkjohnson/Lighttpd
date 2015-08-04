class lighttpd::indexfile {
    file { "/var/www/index1.html":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
        source => "puppet:///modules/lighttpd/index.html",
        require => Class["lighttpd::install"]
    }
}
