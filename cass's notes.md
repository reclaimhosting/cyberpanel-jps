# Install CyberPanel on Reclaim Cloud

## Creating
_________________________________

- Custom 
	- Balancing
		- Elastic VPS - Alma 9.3
	- Scaling limit - min 1 up to 10 (at a min)
	- Disk (CyberPanel advises it needs 10GB) 
	- Access via SLB: Off 
	- Public IP: On 
	- Environment Name: *client input*

```
yum -y install curl-7.76.1-29.el9_4 --allowerasing
```

```
sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh)
```

> 1. Install CyberPanel.

> 2. Exit.

>> Please enter the number[1-2]: 1


> 1. Install CyberPanel with OpenLiteSpeed.

> 2. Install Cyberpanel with LiteSpeed Enterprise.

> 3. Exit.


>> Please enter the number[1-3]: 1


> Full installation [Y/n]: Y

> (Default = No) Remote MySQL [y/N]: N

> Press Enter key to continue with latest version or Enter specific version such as: 1.9.4 , 2.0.1 , 2.0.2 ...etc <ENTER>

> Do you wish to install Memcached process and its PHP extension?
>> Please select [Y/n]: *customer input*

> Do you wish to install Redis process and its PHP extension?
>> Please select [Y/n]: *customer input*

> Would you like to set up a WatchDog (beta) for Web service and Database service ?
The watchdog script will be automatically started up after installation and server reboot
If you want to kill the watchdog , run watchdog kill
>> Please type Yes or no (with capital Y, default Yes): *customer input*

```
Systemctl disable firewalld --now
```

***Make note of the URL and credentials.  You will need those.***


## Install and enable CSF
_______________________________________________________________________

1. Use creds provided to log into the CyberPanel Admin
2. Scroll down till you get see Security under the Server section on the left panel and click
3. Locate and click on CSF
4. You should get a red warning advising it was unable to connect. This is fine as CSF is not yet install.  Click the ***Install Now*** button.
5. Once installed, it could possibly error when trying to auto-refresh, just manually refresh your browser.
6. All necessary ports have already been added and you are all set.

## Add custom login URL and SSL
_______________________________________________________________________

1. At your Domain's DNS hosting
		- Choose the subdomain which will be used as the login URL (cyber.casslefay.com is shown in the example)
		- Create an A record pointing the chosen subdomain to the currently used IP address URL.
		- Set the TTL to 600
		- Save ***PLEASE NOTE: DNS MAY TAKE 24-48 HOURS TO PROPAGATE.  RECOMMEND USING [What's my DNS](https://www.whatsmydns.net/) TO VERIFY PROPAGATION PRIOR TO PROCEEDING***

2. Logged in using your new custom URL (just not secured *yet*)
		- At the top you are going to see a warning dialog ***Please launch the set-up wizard to get maximum out of your CyberPanel installation.*** Click set-up wizard.
		- Enter the custom subdomain in the Hostname block
   		- If you are not using email and are not adding a rDNS/PTR record, you are going to need to check the skip box.
   		- Click Start Configurations
   		- Once completed: Click Restart CyberPanel
   		- Wait about 30 seconds and refresh your browser: you will now see your CyberPanel URL secured.



Premium Add-On's Option

- [CyberPanel Addons]](https://cyberpanel.net/cyberpanel-addons)

- Pay for what you want

- Enter server IP (The IP you used to access your panel the first time)

- Log into your CyberPanel with the Admin username and password

- Select the Users Dropdown and select API Access

- Select the Admin user and Enable from the dropdowns and click 'Save Changes'

- Go to [CyberPanel Platform]](https://platform.cyberpersons.com) and click 'forgot password'

- Input the email used when purchasing your addon package

- Use the password sent to that email and log into your CyberPanel Support Platform
	- ***NOTE: PLEASE CHANGE YOUR PASSWORD ONCE YOU LOGIN UNDER SETTINGS IN THE TOP RIGHT!!!!***
	- This is where you can connect any and all servers, submit tickets, setup email, etc.

- Fill out the form using the following information:
	Name: 
		Server name
	IP Address: 
		Server IP
	Username:
		*Will default to Admin*
	Password:
		Admin Panel password
	Port:
		*Leave blank*


Visit: https://cyber.domain.com:8090
                Panel username: admin
                Panel password: 






