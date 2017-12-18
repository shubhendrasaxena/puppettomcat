class tomcat::package (
	String $packages = lookup({"name" => "packages"})
	
	) {	
	package { 'tomcat-packages' :
	    name        => $packages,
	    ensure	=> installed,
}

}
