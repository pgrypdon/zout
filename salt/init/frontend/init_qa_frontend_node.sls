/etc/salt/minion_id:
   file.managed:
     - contents_pillar: lookup:qa:frontend 

hostname {{ pillar['lookup']['qa']['frontend']}}:
   cmd.run

/etc/init.d/salt-minion restart:
   cmd.run
