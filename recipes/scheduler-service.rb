service "resque-scheduler-manager" do
  provider Chef::Provider::Service::Upstart
  action :nothing
  subscribes :restart, "service[resque-manager]", :delayed
end
