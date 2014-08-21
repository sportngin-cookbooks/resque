service "resque-manager" do
  provider Chef::Provider::Service::Upstart
  action :nothing
end
