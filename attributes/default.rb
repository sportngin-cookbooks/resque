default[:resque][:exec_prefix] = 'bundle exec'
default[:resque][:environment] = 'production'
default[:resque][:config_file] = 'config/resque.yml'
default[:resque][:pids_dir] = 'tmp/pids'
default[:resque][:logfile] = 'log/resque_workers.log'
default[:resque][:resque_conf] = '/etc/resque.conf'
default[:resque][:bin_file] = '/usr/local/bin/resque'
default[:resque][:rake] = 'rake'
default[:resque][:rake_task] = 'resque:work'
default[:resque][:user] = 'root'
default[:resque][:env_vars] = { 'PATH' => '/usr/local/bin:$PATH' }
default[:resque][:timeout] = 60
