service "resque" do
  provider Chef::Provider::Service::Upstart
  action :enable
end

service "resque-manager" do
  provider Chef::Provider::Service::Upstart
  action :enable
end
