FreeRadius config template
========================

This is a template for installing FreeRadius - its aimed at the following situations:
- eduroam home and visited (PEAP and/or TLS)
- corporate wifi (PEAP and/or TLS)

Other points to add at some point:
- VPN?
- wired 802.1x?
- govroam
- RADSEC

### to install:
- install an OS (Debian/Ubu/Redhat?) - don't install freeradius here
- git:
  - pull this repo into /etc/freeradius
  - remote git remote
- install FreeRadius from NetworkRadius ()

you will need to change the following to make this all work:
- rename secrets.conf.template to secrets.conf
  - edit secrets.conf to match your organisation
- edit orgSpecific.conf to match your organisation  
- create a CA and server cert (or copy one in from elsewhere):
  - edit cacsr.cnf and serverCert.cnf
- update testing scripts:
  - ...

To verify the config:
- freeradius -X -C

To run the service in debug:
- freeradius -X

To run in production:
- systemctl restart freeradius

To monitor running service:
- raddebug