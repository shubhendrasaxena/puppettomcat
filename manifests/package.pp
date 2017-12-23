class tomcat::package (
        $packages = lookup(packages),

        ) {
        package { 'tomcat-packages' :
            name        => $packages,
            ensure      => installed,
}

}

