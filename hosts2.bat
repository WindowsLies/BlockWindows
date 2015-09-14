REM Blocks microsoft servers. If you have issues and want to reverse this, run unblock.bat
REM --- Block Hosts
echo Blocking Hosts(Including OUTLOOK,HOTMAIL,LIVE.COM,BING) add REM in front of any you use...
timeout 4

echo block a-0001.a-msedge.net
route -p add 204.79.197.200/32 127.0.0.1

echo block a23-218-212-69.deploy.static.akamaitechnologies.com
route -p add 23.218.212.69/32 127.0.0.1

echo block a.ads1.msn.com
route -p add 204.160.124.125/32 127.0.0.1
route -p add 8.253.14.126/32 127.0.0.1
route -p add 8.254.25.126/32 127.0.0.1

echo block a.ads2.msads.net
route -p add 93.184.215.200/32 127.0.0.1

echo block a.ads2.msn.com
route -p add 198.78.194.252/32 127.0.0.1
route -p add 198.78.209.253/32 127.0.0.1
route -p add 8.254.23.254/32 127.0.0.1

echo block ac3.msn.com
route -p add 131.253.14.76/32 127.0.0.1

echo block activation.playready.microsoft.com
route -p add 134.170.119.205/32 127.0.0.1

echo block ads1.msads.net
route -p add 23.201.58.73/32 127.0.0.1

echo block ads1.msn.com
route -p add 204.160.124.125/32 127.0.0.1
route -p add 8.253.14.126/32 127.0.0.1
route -p add 8.254.25.126/32 127.0.0.1

echo block adsmockarc.azurewebsites.net
route -p add 191.236.16.12/32 127.0.0.1

echo block ads.msn.com
route -p add 157.56.91.82/32 127.0.0.1

echo block adsyndication.msn.com
route -p add 207.46.120.187/32 127.0.0.1

echo block ajax.aspnetcdn.com
route -p add 93.184.215.200/32 127.0.0.1

echo block api.bing.com
route -p add 191.234.5.80/32 127.0.0.1

echo block appexmapsappupdate.blob.core.windows.net
route -p add 23.98.49.14/32 127.0.0.1

echo block apps.skype.com
route -p add 104.79.147.136/32 127.0.0.1

echo block a.rad.msn.com
route -p add 65.55.2.6/32 127.0.0.1

echo block au.au-msedge.net
route -p add 191.234.4.50/32 127.0.0.1

echo block auth.gfx.ms
route -p add 23.61.72.70/32 127.0.0.1

echo block b.ads1.msn.com
route -p add 204.160.124.125/32 127.0.0.1
route -p add 8.253.14.126/32 127.0.0.1
route -p add 8.254.25.126/32 127.0.0.1

echo block b.ads2.msads.net
route -p add 93.184.215.200/32 127.0.0.1

echo block bing.com
route -p add 204.79.197.200/32 127.0.0.1

echo block bingads.microsoft.com
route -p add 66.119.152.205/32 127.0.0.1

echo block b.rad.msn.com
route -p add 65.55.2.6/32 127.0.0.1

echo block bs.serving-sys.com
route -p add 63.241.108.124/32 127.0.0.1

echo block c1.microsoft.com
route -p add 131.253.40.50/32 127.0.0.1

echo block cdn.content.prod.cms.msn.com
route -p add 165.254.155.67/32 127.0.0.1
route -p add 165.254.155.75/32 127.0.0.1

echo block cdp1.public-trust.com
route -p add 64.18.20.10/32 127.0.0.1
route -p add 65.207.25.151/32 127.0.0.1

echo block choice.microsoft.com
route -p add 157.56.91.77/32 127.0.0.1

echo block choice.microsoft.com.nsatc.net
route -p add 157.56.91.77/32 127.0.0.1

echo block c.microsoft.com
route -p add 134.170.185.126/32 127.0.0.1

echo block c.msn.com
route -p add 131.253.40.50/32 127.0.0.1

echo block cmsresources.windowsphone.com
route -p add 23.201.59.128/32 127.0.0.1

echo block content.windows.microsoft.com
route -p add 165.254.155.49/32 127.0.0.1
route -p add 165.254.155.96/32 127.0.0.1

echo block corpext.msitadfs.glbdns2.microsoft.com
route -p add 65.55.29.238/32 127.0.0.1

echo block corp.sts.microsoft.com
route -p add 65.55.29.238/32 127.0.0.1

echo block c.s-microsoft.com
route -p add 23.201.36.177/32 127.0.0.1

echo block dc.services.visualstudio.com
route -p add 23.102.169.243/32 127.0.0.1

echo block dev.virtualearth.net
route -p add 131.253.40.84/32 127.0.0.1

echo block df.telemetry.microsoft.com
route -p add 65.52.100.7/32 127.0.0.1

echo block diagnostics.support.microsoft.com
route -p add 157.56.121.89/32 127.0.0.1

echo block displaycatalog.md.mp.microsoft.com
route -p add 64.4.54.50/32 127.0.0.1

echo block dl.delivery.mp.microsoft.com
route -p add 165.254.206.121/32 127.0.0.1
route -p add 165.254.206.122/32 127.0.0.1

echo block dmd.metaservices.microsoft.com
route -p add 134.170.30.221/32 127.0.0.1

echo block download.microsoft.com
route -p add 23.74.8.194/32 127.0.0.1
route -p add 23.74.8.209/32 127.0.0.1

echo block download-ssl.msgamestudios.com
route -p add 104.79.151.241/32 127.0.0.1

echo block ecn.dev.virtualearth.net
route -p add 23.201.59.4/32 127.0.0.1

echo block en-us.appex-rf.msn.com
route -p add 165.254.155.81/32 127.0.0.1
route -p add 165.254.155.88/32 127.0.0.1

echo block fe3.delivery.mp.microsoft.com
route -p add 65.52.108.90/32 127.0.0.1

echo block feedback.microsoft-hohm.com
route -p add 64.4.6.100/32 127.0.0.1
route -p add 65.55.39.10/32 127.0.0.1

echo block feedback.search.microsoft.com
route -p add 157.55.129.21/32 127.0.0.1

echo block feedback.windows.com
route -p add 134.170.188.248/32 127.0.0.1

echo block ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net
route -p add 65.52.8.54/32 127.0.0.1

echo block flex.msn.com
route -p add 131.253.40.47/32 127.0.0.1

echo block geo-prod.do.dsp.mp.microsoft.com
route -p add 64.4.54.98/32 127.0.0.1

echo block g.live.com
route -p add 131.253.40.59/32 127.0.0.1

echo block g.msn.com
route -p add 131.253.40.59/32 127.0.0.1

echo block go.microsoft.com
route -p add 104.79.133.115/32 127.0.0.1

echo block go.skype.com
route -p add 191.234.42.225/32 127.0.0.1

echo block h1.msn.com
route -p add 23.201.54.238/32 127.0.0.1

echo block h2.msn.com
route -p add 23.201.54.238/32 127.0.0.1

echo block help.bingads.microsoft.com
route -p add 207.46.202.114/32 127.0.0.1

echo block hotmail.com
route -p add 157.55.152.112/32 127.0.0.1
route -p add 157.56.172.28/32 127.0.0.1
route -p add 65.55.77.28/32 127.0.0.1
route -p add 65.55.85.12/32 127.0.0.1

echo block i1.services.social.microsoft.com
route -p add 23.201.43.90/32 127.0.0.1

echo block i1.services.social.microsoft.com.nsatc.net

echo block iecvlist.microsoft.com
route -p add 93.184.215.200/32 127.0.0.1

echo block ieonline.microsoft.com
route -p add 204.79.197.200/32 127.0.0.1

echo block img-s-msn-com.akamaized.net
route -p add 165.254.155.48/32 127.0.0.1
route -p add 165.254.155.56/32 127.0.0.1

echo block inference.location.live.net
route -p add 191.238.27.70/32 127.0.0.1

echo block js.microsoft.com
route -p add 23.201.36.177/32 127.0.0.1

echo block licensing.md.mp.microsoft.com
route -p add 64.4.54.36/32 127.0.0.1

echo block live.rads.msn.com
route -p add 137.117.100.176/32 127.0.0.1

echo block livetileedge.dsx.mp.microsoft.com
route -p add 104.79.150.111/32 127.0.0.1

echo block logging.windows.microsoft.com
route -p add 134.170.119.140/32 127.0.0.1

echo block login.live.com
route -p add 131.253.61.66/32 127.0.0.1
route -p add 131.253.61.68/32 127.0.0.1
route -p add 131.253.61.80/32 127.0.0.1
route -p add 131.253.61.98/32 127.0.0.1

echo block login.live.com.nsatc.net
route -p add 131.253.61.66/32 127.0.0.1
route -p add 131.253.61.68/32 127.0.0.1
route -p add 131.253.61.80/32 127.0.0.1
route -p add 131.253.61.98/32 127.0.0.1

echo block mediadiscovery.microsoft.com
route -p add 104.79.153.14/32 127.0.0.1

echo block m.hotmail.com
route -p add 207.46.101.8/32 127.0.0.1

echo block microsoft.com
route -p add 134.170.185.46/32 127.0.0.1
route -p add 134.170.188.221/32 127.0.0.1

echo block msftncsi.com

echo block msnbc.com
route -p add 23.78.45.86/32 127.0.0.1

echo block msn.com
route -p add 23.101.196.141/32 127.0.0.1

echo block msnportal.112.2o7.net
route -p add 192.243.250.72/32 127.0.0.1
route -p add 192.243.250.88/32 127.0.0.1
route -p add 66.235.138.193/32 127.0.0.1
route -p add 66.235.138.194/32 127.0.0.1
route -p add 66.235.138.195/32 127.0.0.1
route -p add 66.235.139.17/32 127.0.0.1
route -p add 66.235.139.18/32 127.0.0.1
route -p add 66.235.139.19/32 127.0.0.1
route -p add 66.235.139.205/32 127.0.0.1
route -p add 66.235.139.206/32 127.0.0.1
route -p add 66.235.139.207/32 127.0.0.1

echo block msntest.serving-sys.com
route -p add 128.177.96.56/32 127.0.0.1
route -p add 128.177.96.59/32 127.0.0.1

echo block nexus.officeapps.live.com
route -p add 104.46.50.125/32 127.0.0.1

echo block oca.telemetry.microsoft.com
route -p add 65.55.252.63/32 127.0.0.1

echo block oca.telemetry.microsoft.com.nsatc.net
route -p add 65.55.252.63/32 127.0.0.1

REM echo block ocsp.msocsp.com
REM route -p add 108.162.232.196/32 127.0.0.1
REM route -p add 108.162.232.197/32 127.0.0.1
REM route -p add 108.162.232.198/32 127.0.0.1
REM route -p add 108.162.232.199/32 127.0.0.1
REM route -p add 108.162.232.200/32 127.0.0.1
REM route -p add 108.162.232.201/32 127.0.0.1
REM route -p add 108.162.232.202/32 127.0.0.1
REM route -p add 108.162.232.203/32 127.0.0.1
REM route -p add 108.162.232.204/32 127.0.0.1
REM route -p add 108.162.232.205/32 127.0.0.1
REM route -p add 108.162.232.207/32 127.0.0.1

REM echo block ocsp.omniroot.com
REM route -p add 72.21.91.8/32 127.0.0.1

REM echo block ocsp.startssl.com
REM route -p add 165.254.114.112/32 127.0.0.1
REM route -p add 165.254.114.120/32 127.0.0.1

echo block officeclient.microsoft.com
route -p add 137.116.64.35/32 127.0.0.1

echo block outlook.com
route -p add 132.245.113.194/32 127.0.0.1
route -p add 132.245.13.210/32 127.0.0.1
route -p add 132.245.17.34/32 127.0.0.1
route -p add 132.245.23.242/32 127.0.0.1
route -p add 132.245.81.130/32 127.0.0.1
route -p add 132.245.92.194/32 127.0.0.1
route -p add 157.56.237.242/32 127.0.0.1

echo block pipe.skype.com
route -p add 104.43.161.140/32 127.0.0.1

echo block platform.bing.com
route -p add 204.79.197.200/32 127.0.0.1

echo block pre.footprintpredict.com
route -p add 204.79.197.200/32 127.0.0.1

echo block preview.msn.com
route -p add 137.117.100.176/32 127.0.0.1

echo block pricelist.skype.com

echo block r20swj13mr.microsoft.com
route -p add 93.184.215.200/32 127.0.0.1

echo block rad.live.com
route -p add 65.55.2.6/32 127.0.0.1

echo block rad.msn.com
route -p add 65.55.2.6/32 127.0.0.1

echo block redir.metaservices.microsoft.com
route -p add 165.254.155.51/32 127.0.0.1
route -p add 165.254.155.88/32 127.0.0.1

echo block reports.wes.df.telemetry.microsoft.com
route -p add 65.52.100.91/32 127.0.0.1

echo block sb.scorecardresearch.com
route -p add 104.79.156.195/32 127.0.0.1

echo block services.wes.df.telemetry.microsoft.com
route -p add 65.52.100.92/32 127.0.0.1

echo block settings.data.microsoft.com
route -p add 65.55.44.108/32 127.0.0.1

echo block settings-sandbox.data.microsoft.com
route -p add 111.221.29.177/32 127.0.0.1

echo block settings-ssl.xboxlive.com
route -p add 104.79.156.227/32 127.0.0.1

echo block settings-win.data.microsoft.com
route -p add 65.55.44.108/32 127.0.0.1

echo block s.gateway.messenger.live.com
route -p add 157.56.106.210/32 127.0.0.1

echo block sgmetrics.cloudapp.net
route -p add 168.62.11.145/32 127.0.0.1

echo block shell.windows.com
route -p add 137.116.81.94/32 127.0.0.1

REM echo block sls.update.microsoft.com
REM route -p add 157.55.133.204/32 127.0.0.1

REM echo block sls.update.microsoft.com.akadns.net
REM route -p add 157.55.240.220/32 127.0.0.1

REM echo block sls.update.microsoft.com.nsatc.net
REM route -p add 157.55.133.204/32 127.0.0.1

echo block social.answers.microsoft.com
route -p add 134.170.52.190/32 127.0.0.1

echo block spynet2.microsoft.com
route -p add 23.96.212.225/32 127.0.0.1

echo block spynetalt.microsoft.com
route -p add 23.96.212.225/32 127.0.0.1

echo block sqm.df.telemetry.microsoft.com
route -p add 65.52.100.94/32 127.0.0.1

echo block sqm.microsoft.com
route -p add 65.55.44.82/32 127.0.0.1

echo block sqm.telemetry.microsoft.com
route -p add 65.55.252.93/32 127.0.0.1

echo block sqm.telemetry.microsoft.com.nsatc.net
route -p add 65.55.252.93/32 127.0.0.1

echo block ssw.live.com
route -p add 207.46.101.29/32 127.0.0.1

echo block statsfe1.ws.microsoft.com
route -p add 134.170.115.60/32 127.0.0.1
route -p add 207.46.114.61/32 127.0.0.1

echo block statsfe2.update.microsoft.com.akadns.net
route -p add 65.52.108.153/32 127.0.0.1

echo block statsfe2.ws.microsoft.com
route -p add 64.4.54.22/32 127.0.0.1

echo block storeedgefd.dsx.mp.microsoft.com
route -p add 104.79.153.53/32 127.0.0.1

echo block store-images.microsoft.com
route -p add 104.79.129.31/32 127.0.0.1

echo block survey.watson.microsoft.com
route -p add 207.68.166.254/32 127.0.0.1

echo block t0.ssl.ak.dynamic.tiles.virtualearth.net
route -p add 104.79.157.54/32 127.0.0.1

echo block t0.ssl.ak.tiles.virtualearth.net
route -p add 23.201.29.83/32 127.0.0.1

echo block telecommand.telemetry.microsoft.com
route -p add 65.55.252.92/32 127.0.0.1

echo block telecommand.telemetry.microsoft.com.nsatc.net
route -p add 65.55.252.92/32 127.0.0.1

echo block telemetry.appex.bing.net
route -p add 168.62.187.13/32 127.0.0.1

echo block telemetry.microsoft.com
route -p add 65.52.100.9/32 127.0.0.1

echo block telemetry.urs.microsoft.com
route -p add 131.253.40.37/32 127.0.0.1

echo block tile-service.weather.microsoft.com
route -p add 23.201.54.135/32 127.0.0.1

echo block tlu.dl.delivery.mp.microsoft.com
route -p add 165.254.206.130/32 127.0.0.1
route -p add 165.254.206.137/32 127.0.0.1

echo block ui.skype.com
route -p add 157.56.109.8/32 127.0.0.1

echo block urs.microsoft.com
route -p add 134.170.21.248/32 127.0.0.1

echo block vassg141.ocsp.omniroot.com
route -p add 209.133.57.74/32 127.0.0.1
route -p add 209.133.57.83/32 127.0.0.1

echo block version.hybrid.api.here.com
route -p add 107.20.234.199/32 127.0.0.1
route -p add 174.129.23.235/32 127.0.0.1
route -p add 174.129.30.42/32 127.0.0.1
route -p add 54.243.53.207/32 127.0.0.1

echo block vortex.data.microsoft.com
route -p add 64.4.54.254/32 127.0.0.1

echo block vortex-sandbox.data.microsoft.com
route -p add 64.4.54.32/32 127.0.0.1

echo block vortex-win.data.microsoft.com
route -p add 64.4.54.254/32 127.0.0.1

echo block watson.live.com
route -p add 207.46.223.94/32 127.0.0.1

echo block watson.microsoft.com
route -p add 65.55.252.71/32 127.0.0.1

echo block watson.ppe.telemetry.microsoft.com
route -p add 65.52.100.11/32 127.0.0.1

echo block watson.telemetry.microsoft.com
route -p add 65.52.108.29/32 127.0.0.1

echo block watson.telemetry.microsoft.com.nsatc.net
route -p add 65.52.108.29/32 127.0.0.1

echo block wes.df.telemetry.microsoft.com
route -p add 65.52.100.93/32 127.0.0.1

echo block www.microsoft.com
route -p add 184.31.194.59/32 127.0.0.1

echo block www.modern.ie
route -p add 168.62.49.33/32 127.0.0.1

echo block www.msftncsi.com
route -p add 128.177.96.24/32 127.0.0.1
route -p add 128.177.96.65/32 127.0.0.1

echo block www.msn.com
route -p add 204.79.197.203/32 127.0.0.1

echo done
