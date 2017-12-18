class tomcat::service (
	String $servicename = lookup({"name" => "service_name"})
	
	) {

	service {'service_name':
        ensure => $service_state,
	    enable => true,

}

}
