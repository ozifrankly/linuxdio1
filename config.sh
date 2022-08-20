#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_VEN /ven/
chgrp GRP_ADM /adm/
chgrp GRP_SEC /sec/

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

useradd -m -s /bin/bash -g GRP_ADM carlos
useradd -m -s /bin/bash -g GRP_ADM maria
useradd -m -s /bin/bash -g GRP_ADM joao

useradd -m -s /bin/bash -g GRP_VEN debora
useradd -m -s /bin/bash -g GRP_VEN sebastiana
useradd -m -s /bin/bash -g GRP_VEN roberto

useradd -m -s /bin/bash -g GRP_SEC josefina
useradd -m -s /bin/bash -g GRP_SEC amanda
useradd -m -s /bin/bash -g GRP_SEC rogerio
