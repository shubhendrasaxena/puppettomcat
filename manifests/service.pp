class tomcat::service (
	String $servicename = lookup({"name" => "service_name"})
	String $servicen_state = lookup({"name" => "service_state"})
	
	) {

	service {'service_name':
	name =>   $service_name,
        ensure => $service_state,
	enable => true,

}

}
