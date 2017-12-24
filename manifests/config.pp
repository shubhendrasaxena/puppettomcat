class tomcat::config (
    $config_path = lookup(config_path),
    $config_source = lookup(config_source),

) {

        file{ 'config_tomcat':
        path    => $config_path,
        ensure  => file,
        source  => $config_source,
        mode    => $mode,
        owner   => $owner,
        group   => $group,
        notify  => Service[$service_name],
}

}
