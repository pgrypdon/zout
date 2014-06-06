/etc/salt/minion_id:
   file.managed:
     - contents_pillar: lookup:dev:frontend 

hostname {{ pillar['lookup']['dev']['frontend']}}:
   cmd.run

/etc/init.d/salt-minion restart:
   cmd.run
