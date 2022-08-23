#!/bin/bash

#Creating directories
echo 'Creating directories...'
mkdir /public /adm /ven /sec

#Creating Groups
echo 'Creating Groups...'
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Creating Users
echo 'Creating Users...'
useradd carlos -c 'Carlos' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd carlos -e

useradd maria -c 'Maria' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd maria -e

useradd joao -c 'Joao' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd joao -e

useradd debora -c 'Debora' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd debora -e

useradd sebastiana -c 'Sebastiana' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd sebastiana -e

useradd roberto -c 'Roberto' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd roberto -e

useradd josefina -c 'Josefina' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd josefina -e

useradd amanda -c 'Amanda' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd amanda -e

useradd rogerio -c 'Rogerio' -s /bin/bash -m -p $(openssl passwd -crypt 123abc)
passwd rogerio -e

#Adding Users to GRP_ADM
echo 'Adding users to groups...'
usermod -a -G GRP_ADM carlos
usermod -a -G GRP_ADM maria
usermod -a -G GRP_ADM joao

#Adding Users to GRP_VEN
usermod -a -G GRP_VEN debora
usermod -a -G GRP_VEN sebastiana
usermod -a -G GRP_VEN roberto

#Adding Users to GRP_SEC
usermod -a -G GRP_SEC josefina
usermod -a -G GRP_SEC amanda
usermod -a -G GRP_SEC rogerio

#Specifying Group owner of Directories
echo 'Specifying Group owner of Directories...'
chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo 'Done!!!'

