control 'ssh-port-closed' do
  impact 1.0
  title 'SSH Port 22 should not be publicly accessible'
  desc 'Validates port 22 is not listening'

  describe port(22) do
    it { should_not be_listening }
  end
end

control 'demo-app-running' do
  impact 1.0
  title 'Demo App service state validation'

  describe service('demo-app') do
    it { should_not be_running }
  end
end
