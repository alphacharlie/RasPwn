Raspwn OS README File
==============

Why Raspwn OS?
-------------

Welcome to Raspwn OS 0.12, The intentionally vulnerable image for the Raspberry Pi.

Raspwn OS is a GNU/Linux Distro in the spirit of [Damn Vulnerable Linux](https://distrowatch.com/table.php?distribution=dvl) and uses a Raspberry Pi 2B or 3 to emulate a vulnerable Linux Server.
Raspwn was designed as a training tool and exists **only** to be attacked and pwned. Everything from the OS itself to the daemons and services 
to the web applications installed are all vulnerable to some degree. The idea is to provide a 'safe' (relatively) and affordable training 
environment and playground for hackers and pentesters. By loading Raspwn OS and connecting to the Raspberry Pi via WiFi, one can practice pen-
testing as well as both offensive and defensive hacking techniques *without ever even getting on the internet* for only around $50.

On top of the base OS ans LAMP stack we have created the Raspwn Web Playground. This website contains a myriad of web applications, all of which are 
either out-of-date or intentionally vulnerable. 

In addition all of to the services and applications listed, the OS itself is based upon a Debian Snapshot from February 2015. So system libraries such 
as [libc](https://cve.mitre.org/cgi-bin/cvename.cgi?name=cve-2015-0235) (and others ;-P ) have known exploits.

**RasPwn OS** Is an offshoot of [Debian GNU/Linux](http://debian.org) and would not exist without the work of thousands of folks around the world that make
[free software](http://fsf.org) a reality.  

Requirements
-------------

Raspwn OS requires the following:

* A Raspberry Pi 3b **or** a Raspberry Pi 2b with a hostapd capable WiFi adapter. (tested and working on ath9k and rtl8188 so far)
* A 5V micro-USB power supply for the pi
* A MicroSD Card - 4GB Minimum (8GB or greater Recommended, Class 10 Recommended) 

Note that a Wifi Adapter is *only* required for the Pi 2b. The Pi 3 has internal WiFi which is hostapd compatible.
 
Install
-------------

Install is the same as any other image for the Raspberry Pi but the image does require a Raspberry Pi 2b or 3.

* Windows - Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) to flash the SD card.
* MacOS - Use [Apple Pi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) to flash with.
* Linux - Use [dd](http://elinux.org/RPi_Easy_SD_Card_Setup) to flash the SD card.

On first boot the image will automatically expand to fill the available space on the SD card and reboot. Once that is complete the Raspwn 
image should be ready to hack!



Usage
-------------

Raspwn emulates a vulnerable Debian Wheezy server. To use it just boot Raspwn then connect to the 'RasPwn OS' WiFi SSID. (Password - 'In53cur3!')
from your favorite pen-testing set-up. (We like [Kali](https://www.kali.org/), [ParrotS](https://www.parrotsec.org/), [BlackArch](https://blackarch.org/) and [Pentoo](http://www.pentoo.ch/)) 
Once you have connected you can explore the 192.168.99.0/24 subnet and the *.playground.raspwn.org domain. The Raspwn Web Playground can be found 
at http://playground.raspwn.org (192.168.99.13)

Network services running in Raspwn include -
* Bind9 (192.168.99.1, 192.168.99.10) - DNS Server
* Postfix (192.168.99.18) - Mail Transfer Agent
* Dovecot (192.168.99.18) - Mail Client Server
* Samba (192.168.99.10) - Windows File Sharing Server
* Apache2 (192.168.99.13) - Web Server 
* Nginx (192.168.99.7) - Web Server
* MySQL Server (127.0.0.1) - Database Server
* OpenSSH (92.168.99.1) - SSH server


###Playground Web Applications
Intentionally Vulnerable Web Applications-
* OWASP Bricks - https://www.owasp.org/index.php/OWASP_Bricks
* Damn Vulnerable Web Application (DVWA) - http://www.dvwa.co.uk/
* OWASP Hackademic - https://www.owasp.org/index.php/OWASP_Hackademic_Challenges_Project
* OWASP Mutillidae II - https://sourceforge.net/projects/mutillidae/
* Peruggia - https://sourceforge.net/projects/peruggia/
* WackoPicko - https://github.com/adamdoupe/WackoPicko
* WebGoat - https://www.owasp.org/index.php/Category:OWASP_WebGoat_Project

Out-Of-Date Web Applications
* Concrete 5.6.3.4 - https://www.concrete5.org/
* Drupal 6.34 - https://www.drupal.org/
* Drupal 7.34 - https://www.drupal.org/
* Joomla 2.5.28 - https://www.joomla.org/
* Joomla 3.4.0 - https://www.joomla.org/
* osCommerce 2.3 - https://www.oscommerce.com/
* phpBB 3.0.13 - https://www.phpbb.com/
* Wordpress 3.8.1 - https://wordpress.com
* Wordpress 4.1 - https://wordpress.com
* Zen-Cart 1.5.4 - https://www.zen-cart.com/
* PhpMyAdmin 3.4.11 - https://www.phpmyadmin.net/
* Samba SWAT 3.6.6 - https://www.samba.org/samba/docs/man/Samba-HOWTO-Collection/SWAT.html
* Roundcube 0.7.2 - https://roundcube.net/

The admin account for web applications is -

* user - admin (admin@playground.raspwn.org)
* password - *Pa55w0rd!*

The Web applications exist in their own little Universe. Each gets it's DNS from Raspwn and all mail outgoing to the *@playground.raspwn.org 
is delivered to the local mail server at mail.playground.raspwn.org and can be retrieved via IMAP from that host or viewed from Roundcube in 
the Playground. Everything from DNS to MTA to MySQL to Apache2 is already set up.

Two email accounts have been set up with the credentials -

* user 1 - admin@playground.raspwn.org
* password - Pa55w0rd!

* user 2 - mrbill@playground.raspwn.org
* password - OhNoMrBill!

(More email accounts can be added too but that's a 'coming soon'.)

If you wish to customize RasPwn or play Red vs. Blue, you can logon locally or via SSH. The default credentials are:

* user - pi
* password - pwnme!


The current documentation is minimal (sorry) I'll be adding more as I can. 

RasPwn images are put together from [snapshots](http://snapshot.debian.org/) of Debian Linux. This allows us to create a vulnerable system 
image without breaking the system stability. The end effect is that RasPwn is a fly in amber. The current snapshot is 
http://snapshot.debian.org/archive/debian/20150203T222332Z/ so any package that was available in Debian Wheezy on February 3rd 2015 can be 
installed simply by connecting eth0 to the internet and using apt-get. So it's possible to customize the RasPwn image by installing xorg or 
other software from the Debian repository. 

**NOTE - It is possible to connect *eth0* to the internet and use RasPwn as a (possibly the world's most insecure) wireless router however - 
IF YOU DO SO PLEASE DO SO FROM BEHIND NAT AND A FIREWALL! DO NOT EXPOSE ANY RASPWN INTERFACES DIRECTLY TO THE INTERNET OR FORWARD INTERNET 
TRAFFIC TO RASPWN IN ANY WAY!!!** 

WE ARE NOT KIDDING WHEN WE SAY INTENTIONALLY VULNERABLE. 

Sources
-------------
The current Debian snapshot used for RasPwn OS is http://snapshot.debian.org/archive/debian/20150203T222332Z/ Binaries and source for most of 
Raspwn are in that snapshot, with the following exceptions-

* RasPwn OS uses the Hexxeh [rpi-update](https://github.com/Hexxeh/rpi-update) Kernel for the Raspberry Pi.
* RasPwn OS uses the [raspi-config](https://github.com/asb/raspi-config) utility by Alex Bradbury.
* RasPwn uses a more recent version of [hostapd](https://w1.fi/hostapd/) than Wheezy and has been [patched](https://github.com/jekader/hostapd-rtl) to work with the RTL8188 chipset.



License
-------------
RasPwn OS is GNU/Linux and is released under the GPL License (version 3) a copy of which is included with the image. 

RasPwn OS is based on [Debian](http://debian.org). However they may be appalled by the use we have found for their snapshot mirror. (we hope not.)
RasPwn OS is an independent project. It and raspwn.org are not affiliated with or endorsed by Debian.org in any way. (RasPwn OS on the other hand 
*totally* endorses [Debian](http://debian.org)!)

RasPwn is free (as in speech) software. It is also free (as in beer). Enjoy!


FINAL WARNING
-------------
IT IS POSSIBLE TO ENABLE VULNERABLE SERVICES ON ETH0. ONLY DO SO ON A PRIVATE LAN. DO NOT EXPOSE THIS HOST TO THE INTERNET OR FORWARD INTERNET 
TRAFFIC TO IT. YOU HAVE BEEN WARNED. 

Contact
-------------

Bugs, Requests, Shout-Outs, Feedback, Donations, Marriage Proposals, Death Threats, Etc. - Drop me a line :-)  -  info@raspwn.org
