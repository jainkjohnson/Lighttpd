class lighttpd ($always = undef, ) 
{
	notify { "This is : $always":}
	include lighttpd::install, lighttpd::config, lighttpd::service, lighttpd::indexfile
}
