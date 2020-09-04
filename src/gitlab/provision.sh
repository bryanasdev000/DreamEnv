# TODO Dont install monitoring now
# TODO Config as code (gitlab.yml)
#https://about.gitlab.com/install/#centos-8?version=ce
#https://docs.gitlab.com/omnibus/README.html#installation-and-configuration-using-omnibus-package
sudo dnf install -y curl policycoreutils openssh-server openssh-clients
sudo systemctl enable sshd
sudo systemctl start sshd
# SKIP POSTFIX FOR NOW
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sudo EXTERNAL_URL="https://gitlab.dreamenv.com" dnf install -y gitlab-ce
