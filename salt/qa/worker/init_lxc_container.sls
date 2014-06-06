lxc-create -t ubuntu -n worker:
  cmd.run

lxc-start -n worker -d:
  cmd.run

lxc-attach -e -n worker -- apt-get install wget -y:
  cmd.run

lxc-attach -e -n worker -- wget -O /tmp/bootstrap-salt.sh https://raw.githubusercontent.com/saltstack/salt-bootstrap/stable/bootstrap-salt.sh:
  cmd.run

lxc-attach -n worker -- chmod a+x /tmp/bootstrap-salt.sh:
  cmd.run

lxc-attach -n worker -- /tmp/bootstrap-salt.sh -A salt-master:
  cmd.run
