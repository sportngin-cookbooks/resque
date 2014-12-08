template "/etc/init.d/resque" do
  source "resque-init.sh.erb"
  cookbook "resque"
  mode "0755"
  variables node[:resque]
end

template node[:resque][:bin_file] do
  source "resque.sh.erb"
  cookbook "resque"
  mode "0755"
  variables node[:resque]
end

template node[:resque][:resque_conf] do
  source "resque.conf.erb"
  cookbook "resque"
  mode "0644"
  variables node[:resque]
end

include_recipe "resque::service"
