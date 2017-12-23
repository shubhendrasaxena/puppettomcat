class tomcat::service (
         $service_name = lookup(service_name),
         $service_state = lookup(service_state),

        ) {

        service {'service_name':
        name =>   $service_name,
        ensure => $service_state,
        enable => true,

}

}
