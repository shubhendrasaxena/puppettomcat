class tomcat::config (
    $config_path = lookup(config_path),

) {

        file{ 'config_path':
        path    => $config_path,
        content => template('tomcat/tomcat.conf.erb'),
        mode    => $mode,
        owner   => $owner,
        group   => $group,
        notify  => Service[$service_name],
}

}
