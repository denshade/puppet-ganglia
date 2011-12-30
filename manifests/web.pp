class ganglia::web (
	$www_dir = '/var/www/ganglia',
	$version	= 'ganglia-web',
	$conf_dir	= '/etc/ganglia/web.d'
) {

	file { $www_dir:
		source => "puppet:///modules/ganglia/${version}",
		recurse => true,
	}

	file { $conf_dir :
		ensure	=> directory,
		user 	=> root,
		group 	=> www-data,
		mode 	=> 750,
		require	=> File['/etc/ganglia']
	}

	file { "${www_dir}/conf.php" :
		ensure	=> present,
		user 	=> root,
		group 	=> www-data,
		mode 	=> 640,
		content	=> template('ganglia/web/conf.php.erb'),
		require	=> [File[${conf_dir}], File[${www_dir}]]
	}
}