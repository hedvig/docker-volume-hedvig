[![logo](http://www.hedviginc.com/hs-fs/hub/448929/file-2245740934-png/Website_Pictures/hedvig_logo_260x77.png?t=1494939093745&width=390&name=hedvig_logo_260x77.png)](http://www.hedviginc.com)

# Installing the Hedvig Docker Volume plugin from the Docker Store

1. Create "/etc/hedvig" directory in the host machine/vm
2. Copy over config.xml and docker plugin binary "docker-volume-hedvig"  
cp plugin/config/config.xml /etc/hedvig/  
cp plugin/bin/docker-volume-hedvig /etc/hedvig/
3. Install plugin  
docker plugin install hedvig/hedvig-volume:v-1.0
4. Allow permissions requested by the plugin
5. Check if plugin is successfully installed and enabled  
docker plugin ls  
   -> Sample output  
ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DESCRIPTION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ENABLED  
10f46a70b5ee &nbsp;&nbsp;&nbsp;&nbsp; hedvig/hedvig-volume:v-1.0&nbsp;&nbsp;&nbsp;&nbsp;volume plugin for hedvig&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;true
6. For sample test steps to check whether plugin is able to create hedvig volumes or not,
   please see README
