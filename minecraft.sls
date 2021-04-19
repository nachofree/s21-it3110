minecraftuser:
  user.present:
    - shell: /bin/bash
    - home: /home/minecraftuser
    - groups:
      - sudo

wget:
  pkg.installed

install java:
  pkg.installed:
    - name: openjdk-8-jdk 

create thedirectory:
  file.directory:
    - name: /home/minecraftuser/minecraftdir
    - user: minecraftuser
    - group: minecraftuser
    - dir_mode: 755

download thefile:
  file.managed:
    - source: https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar
    - name: /home/minecraftuser/minecraftdir/mc.jar
    - mode: 0777
    - skip_verify: True

/home/minecraftuser/minecraftdir/eula.txt:
  file.append:
    - text:
      - "eula=true"
  
    
    

