class tomcat::config (
    String $config_path = lookup({"name" => "config_path"}),
	
) {

	file{ 'config_path':
	content => template('tomcat/tomcat.conf.erb'),
	mode    => $mode,
	owner   => $owner,
	group   => $group,
	notify  => Service[$service_name],
}

}
