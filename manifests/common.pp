class ganglia::common {
	
	user { "ganglia":
		comment => "Ganglia",
		home => "/var/lib/ganglia",
		ensure => present,
		shell => "/bin/false",
		system => true,
		require	=> Group['ganglia']
	}


	group { 'ganglia' :
		system => true,
    }

    file { "/usr/local/share/ganglia" :
		ensure	=> directory,
		owner	=> root
	}
}