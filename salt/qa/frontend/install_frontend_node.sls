{% if pillar.get('node_role', '') %}
/etc/salt/minion_id:
   file.managed:
     - contents: {{ pillar['node_role']}}.frontend{{pillar['node_sequence']}}.coscale.com 

hostname {{ pillar['node_role']}}.frontend{{pillar['node_sequence']}}.coscale.com:
   cmd.run

/etc/init.d/salt-minion restart:
   cmd.run
{% endif %}
