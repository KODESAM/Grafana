# Ubuntu, make sure your package lists are updated #

$ sudo apt update

# Then ensure that the dependencies for Grafana are installed #

$ sudo apt-get install -y adduser libfontconfig1

# Now to download the binary, and run the debian package manager #

$  wget https://dl.grafana.com/oss/release/grafana_7.1.3_amd64.deb

$ sudo dpkg -i grafana_7.1.3_amd64.de

# The install has now completed. You can now start the Grafana service #

$ sudo service grafana-server start

# Check the status #

$ sudo service grafana-server status

# You can set the Grafana service to auto restart after reboot by entering #

$ sudo systemctl enable grafana-server.service

###########  Your Grafana server will be hosted at ##############

http://[your Grafana server ip]:3000
if installed on laptop localhost

http://localhost:3000

if on Cloud like AWS,etc..
