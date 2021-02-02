versionize `/etc/hosts`

currently on the big pc:

```
##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##

################
#    SYSTEM    #
################
127.0.0.1	localhost
255.255.255.255	broadcasthost
::1             localhost


################
#   PERSONAL   #
################

# distractions from work/learn
127.0.0.1     9gag.com


################
#   PROJECTS   #
################

################
## Flightvoucher
### core (we use corona or flightvoucher domain locally)
127.0.0.1 flightvoucher.test
127.0.0.1 api.flightvoucher.test
127.0.0.1 psp.flightvoucher.test
127.0.0.1 rvm.flightvoucher.test
127.0.0.1 admin.flightvoucher.test

### brand subpages
127.0.0.1 lufthansa.corona.test
127.0.0.1 lufthansa.flightvoucher.test
127.0.0.1 swiss.flightvoucher.test
127.0.0.1 swiss.corona.test
127.0.0.1 brusselsairlines.corona.test
127.0.0.1 brusselsairlines.flightvoucher.test
127.0.0.1 austrian.corona.test
127.0.0.1 austrian.flightvoucher.test

## Infohub
127.0.0.1 lhg-infohub.test
127.0.0.1 api.lhg-infohub.test
127.0.0.1 internal.lhg-infohub.test
127.0.0.1 lufthansa.lhg-infohub.test
127.0.0.1 austrian.lhg-infohub.test
127.0.0.1 swiss.lhg-infohub.test
127.0.0.1 brusselairlines.lhg-infohub.test
127.0.0.1 brussels.lhg-infohub.test

## Compensaid
127.0.0.1 compensaid.test
127.0.0.1 api.compensaid.test
127.0.0.1 airdolomiti.compensaid.test
127.0.0.1 airgo.compensaid.test
127.0.0.1 austrian.compensaid.test
127.0.0.1 brusselsairlines.compensaid.test
127.0.0.1 eurowings.compensaid.test
127.0.0.1 lufthansa.compensaid.test
127.0.0.1 swiss.compensaid.test
127.0.0.1 green-traveller.compensaid.test

127.0.0.1 en.compensaid.test
127.0.0.1 xgo.compensaid.test
127.0.0.1 os.compensaid.test
127.0.0.1 sn.compensaid.test
127.0.0.1 ew.compensaid.test
127.0.0.1 lh.compensaid.test
127.0.0.1 lx.compensaid.test
127.0.0.1 gt.compensaid.test

## Offset-API
127.0.0.1 api.offset-api.test

## Discount Pass
127.0.0.1 milesandmore-discountpass.test
127.0.0.1 api.milesandmore-discountpass.test

## Advoport
127.0.0.1 paschen.advoport.test
127.0.0.1 adler-inkasso.advoport.test
127.0.0.1 staging.advoport.test


################
#    OTHER     #
################

# Added by Docker Desktop
# To allow the same kube context to work on the host and the container:
127.0.0.1 kubernetes.docker.internal
# End of section
```
