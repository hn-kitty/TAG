echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
sysctl net.ipv4.tcp_available_congestion_control


/usr/bin/cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "alias ll=\"ls -l\"" >> ~/.bash_profile
mkdir -p /Downloads

mkdir -p ~/.ssh;
chmod 700 ~/.ssh;
echo " ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDYJG8AS4gLgc8tzgI3XD+1rt8QTikfGWxe7Wr1rO5flbBPZaypE0tDVaQJdXSEVlJHtuZmthr2Er/4dXZ2eha8RxhSVQYAABTLqpHaHKS00XpJafY+GRxhuG9tp0UOmc1Wx9JiCNROHEr3Pq1dTvee0jLN8fDZZetSteYH/6LnpAb32/A2u5eAkJle66L4gAaB2uEdyNT0yEkKCtJEef31s0+9nQxnK8I2hITeKm7Y/tXAXjqboYWwQwm4DhVO5sU2d8JWqxdFWMvQVU5TTgY9F5YDlyOanqFrK3SGqlgGbFBIwa5AfjLBTny/HiTdEjCbcdSCKdf+IV74GcMMbQ+Z root" >> ~/.ssh/authorized_keys;
chmod 600 ~/.ssh/authorized_keys;
echo "-----BEGIN RSA PRIVATE KEY-----
MIIEpgIBAAKCAQEA2CRvAEuIC4HPLc4CN1w/ta7fEE4pHxlsXu1q9azuX5WwT2Ws
qRNLQ1WkCXV0hFZSR7bmZrYa9hK/+HV2dnoWvEcYUlUGAAAUy6qR2hyktNF6SWn2
PhkcYbhvbadFDpnNVsfSYgjUThxK9z6tXU73ntIyzfHw2WXrUrXmB/+i56QG99vw
NruXgJCZXuui+IAGgdrhHcjU9MhJCgrSRHn99bNPvZ0MZyvCNoSE3ipu2P7VwF46
m6GFsEMJuA4VTubFNnfCVqsXRVjL0FVOU04GPReWA5cjmp6hayt0hqpYBmxQSMGu
QH4ywU58vx4k3RIwm3HUginX/iFe+BnDDG0PmQIDAQABAoIBAQChg5BDCy4tUyJL
Wy9CyTd+f5+GorGN4MSfpxCPZ1t1p/jpS9QbQCS0u3Fp9BBOt+aiWmWPiTNagKZd
dwFABXmp1gKxu4FRTL49d0eoUlEuIX8dDwaIXuFbkKQLr7wl7f6Ig6eNxIVJnVDT
s01/dXwKfY6jYNEW01dnJjAv9/J23zb4NlDzFz7ERamTRGwkbcbzG/fR125nhwbO
OYaKg6VXFU0uRu/bjCB1i0zmi5ROzkQLFBB4M75jvfPcHPBuX92Wh2MNU/Qy8Qpa
XRw4lVkQAuXayp8AkYsUmE6etZqFdw6NfCBbMFzKpfIFGdWQoZhWC9MaPEnbyA8m
yfits+7RAoGBAPHc6mFOV9rmlsBwXcm8XjEkPvI1PBRMmOOwWs34woEUQu76CEbb
kIlaRsXZhJ07cWoMeAIZHdlT3TzBNa+m/6rTvZjU/0C3Q5/qJYsxkV8VL7Lht+ih
9r/aMcXljTjHuVySgjEmDb4SScg5l4GBryHyR5VHmTfWcrE3/Ox5pJ4lAoGBAOTG
ppd3096qYJDmKLEMMpXP1+A4cZGnFcu0xyowUwjBicgYem4kJB3PdicDI8XndDho
9DTRYkBpxybr9S5uqq4alZqmMzgRIbHZMbLS8RnbsjlH72pV5L7HBjizJaLf/eLh
1eLc43KVC4H5ASixvgTXJ5M0xrUdzD1mPOJ+VI9lAoGBAN4hROmFaE7VBJNNH/YN
mHyNi3orxjfmeWx0JZGR7CFcmHSfEkbxlHdxgBppwdAeLfV16ioTI0TcLw6DbGkc
eSdNPI5G4P9w0RznkP+b0KWA8cPaZmuzhMmC/b+BKgiB9g29SPEWv/xXE4hezHTW
xB/rQi8qCOAthjyY7SPKPJQ5AoGBAIUjhrgHqGmhRemNyIigzJ+bAcsfjhhx4KFY
Z8AJt4kU+RZWCIooxkwC/IPfs+XsuRpLGjPS1xcdeCUSlPGcvf/swLvrlUs/zRgv
iljDokSmMqZbUt3Tdvf/44MD3xdWu+5Z95u7aTK5wqS1QRNpvWgbvpBQ2oN0//OL
mEtHsfZxAoGBAJzT15x24WAfnqNk7ve/Po5jbIuItnxBznxNEw8uljCkiG2oSZAE
vqozAoDfub3lNCfEtfzsRMTwAWE4M8aBMDpg3+/HbsueZbMmVJCR6FI35Fsyb1cz
qMdvff6lGqeO6MTX+gdok1+nEMzaa5FztJfFZEjf9H3lG4wCnU21xcMu
-----END RSA PRIVATE KEY-----" >> ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

sed -i 's/#   StrictHostKeyChecking ask/    StrictHostKeyChecking no/g' /etc/ssh/ssh_config
systemctl restart sshd.service
