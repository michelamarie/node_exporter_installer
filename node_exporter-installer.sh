mkdir /opt/prometheus/
cd /opt/prometheus/
wget https://github.com/prometheus/node_exporter/releases/download/v1.2.2/node_exporter-1.2.2.linux-amd64.tar.gz /opt/prometheus/
tar -xvzf /opt/prometheus/node_exporter-1.2.2.linux-amd64.tar.gz
mv /opt/prometheus/node_exporter-1.2.2.linux-amd64 /opt/prometheus/node_exporter/
useradd prometheus
wget https://raw.githubusercontent.com/michelamarie/test/master/node_exporter.service
mv node_exporter.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable node_exporter.service
systemctl start node_exporter.service ; systemctl status node_exporter.service
