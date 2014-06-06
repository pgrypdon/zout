/etc/salt/minion_id:
   file.managed:
     - contents_pillar: lookup:prod:frontend 

hostname {{ pillar['lookup']['prod']['frontend']}}:
   cmd.run

/etc/init.d/salt-minion restart:
   cmd.run
