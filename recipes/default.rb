node.override[:resque][:exec_prefix] = "exec bundle exec" if node[:resque][:use_bundle_exec]

template "/etc/init.d/resque" do
  source "resque-init.sh.erb"
  cookbook "resque"
  mode "0644"
  variables node[:resque]
end

template "/etc/init/resque.conf" do
  source "resque.upstart.erb"
  cookbook "resque"
  mode "0644"
  variables node[:resque]
end

template "/etc/init/resque-manager.conf" do
  source "resque-manager.upstart.erb"
  cookbook "resque"
  mode "0644"
  variables node[:resque]
end

template node[:resque][:resque_conf] do
  source "resque.conf.erb"
  cookbook "resque"
  mode "0644"
  variables node[:resque]
end

include_recipe "resque::service"
