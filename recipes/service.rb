service "resque" do
  action :nothing
  supports(:restart => true, :status => false)
end
