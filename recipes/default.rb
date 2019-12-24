bash "install-swap" do
  user "root"
  cwd "/"
  code <<-EOH
	cd /
	fallocate -l #{node[:swap][:size]} /swapfile
	chmod 600 /swapfile
	dd if=/dev/zero of=/swapfile bs=#{node[:swap][:size]} count=1000
	mkswap /swapfile
	swapon /swapfile
	cp /etc/fstab /etc/fstab.bak
	echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
  EOH
end
