node.override[:resque][:exec_prefix] = "exec bundle exec" if node[:resque][:use_bundle_exec]

template "/etc/init/resque-scheduler.conf" do
  source "resque-scheduler.upstart.erb"
  cookbook "resque"
  backup false
  mode "0644"
  variables node[:resque]
end

template "/etc/init/resque-scheduler-manager.conf" do
  source "resque-scheduler-manager.upstart.erb"
  cookbook "resque"
  mode "0644"
  variables node[:resque]
end

include_recipe "resque::scheduler-service"
