#!/bin/bash

mkdir -p ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCVy8OJ+Yh0NTNCswHkkqFPnYoO4EDLZIr5Uf49ktYlscbwsEVv0wHJ5nQnbwijcVdtVr1aMoCqAQQiTnkCN5JlTKY0NTELvX/Re8yIPpHt0LXnZ4DRNJKjyasKGoMqtk5eJprrpqUshKXnIajAeR1uURT70SPnSHgDVmBO2C8n8dP5DUZaYIIJf2EzxerZJagrVvjB1WcWlmNn8waO5E6VPbiIk7MlPcqE9ICHtGBv7CJpEMNmOofP/d+pbZ7Sghe2BiMQ6BSFMGNill3ctlqL/Qde/TDlqzr75H/JwaeEgGrJGYtrthdtSH75rxoN0oNsPSO6aTAZd6GozTNOaArQHVkNjYlE8qfEPHZqJAtV3wTGJO+fa4T1E0zn36KHSptJYxrZ8VYNS+/YRd4lnAcvrlfhmO6DVq7YZkZvaLMUM2kF7EEjmO+yV++M6nzyeJ38eSVxv2fuBvqdyQ1oD8UhzmkgSiNVnuXqvHisI5MxEXFOfz6ml8WlIKZ+B1JVF9M= renbaoshuo" >> ~/.ssh/authorized_keys
echo "[INFO] Successfully added SSH key: renbaoshuo"
sed -i 's/^#\?PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
echo "[INFO] Successfully disabled Password Authentication"
