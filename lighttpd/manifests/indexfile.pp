
class lighttpd::indexfile{
    $always = $lighttpd::always    
    notify {" this is demo: $always":}
    user { $always:
  	ensure           => 'present',
    }
    file { "/var/www/index1.html":
        ensure => present,
        owner => $always,
        #group => 'root',
        mode => 0644,
        source => "puppet:///modules/lighttpd/index.html",
        require => [ Class["lighttpd::install"], User[$always] ]
	
    }
}
