service "resque-scheduler" do
  provider Chef::Provider::Service::Upstart
  action :enable
end

service "resque-scheduler-manager" do
  provider Chef::Provider::Service::Upstart
  action :enable
end
