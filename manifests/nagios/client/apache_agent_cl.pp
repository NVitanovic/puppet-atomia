class atomia::nagios::client::apache_agent_cl (

) {
  
  @@nagios_service { "${::fqdn}-apache_agent-mountpoints":
    host_name           => $::fqdn,
    service_description => 'NFS mounts',
    check_command       => 'check_nrpe!check_all_mountpoints',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }

  @@nagios_service { "${::fqdn}-apache_agent-process-count":
    host_name           => $::fqdn,
    service_description => 'Total processes',
    check_command       => 'check_nrpe!check_total_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }

  @@nagios_service { "${::fqdn}-apache_agent-process-apache":
    host_name           => $::fqdn,
    service_description => 'Apache processes',
    check_command       => 'check_nrpe!check_apache_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }

  @@nagios_service { "${::fqdn}-apache_agent-process-php":
    host_name           => $::fqdn,
    service_description => 'PHP processes',
    check_command       => 'check_nrpe!check_php_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }

  @@nagios_service { "${::fqdn}-apache_agent-process-lvestats":
    host_name           => $::fqdn,
    service_description => 'LVEStats processes',
    check_command       => 'check_nrpe!check_lvestats_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }
  @@nagios_service { "${::fqdn}-apache_agent-process-cagefs":
    host_name           => $::fqdn,
    service_description => 'CageFS processes',
    check_command       => 'check_nrpe!check_cagefs_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }
  @@nagios_service { "${::fqdn}-apache_agent-process-clagent":
    host_name           => $::fqdn,
    service_description => 'CloudLinux Agent processes',
    check_command       => 'check_nrpe!check_cloudlinux_agent_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }
  @@nagios_service { "${::fqdn}-apache_agent-process-apacheagent":
    host_name           => $::fqdn,
    service_description => 'Apache Agent processes',
    check_command       => 'check_nrpe!check_apache_agent_procs',
    use                 => 'generic-service',
    target              => "/usr/local/nagios/etc/servers/${::hostname}_service.cfg",
  }
}
