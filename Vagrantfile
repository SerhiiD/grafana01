ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure(2) do |config|
    config.vm.define "grafana01" do |grafana01|
        grafana01.vm.box = "centos/7"
        # grafana01.vm.network "forwarded_port", guest: 80, host: 80
        grafana01.vm.network "forwarded_port", guest: 3000, host: 3000

        grafana01.vm.provider "virtualbox" do |virtualbox|
            virtualbox.name = "grafana01"
        end

        grafana01.vm.hostname = "grafana01"

        grafana01.vm.provision "shell", path: "script.sh"
    end
end