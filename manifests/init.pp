class tomcat {
	include java::install
	include tomcat::package
        include tomcat::config
        include tomcat::service

}
