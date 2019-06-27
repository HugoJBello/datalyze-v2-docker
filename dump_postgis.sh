#docker exec -it db bash

#export PGPASSWORD=docker
#pg_dump gis -U docker -W -h localhost | gzip > /var/lib/postgresql/my_db.tar.gz

docker exec db bin/bash -c "export PGPASSWORD=docker \
      && /usr/bin/pg_dump gis -U docker -W -h localhost --table waypoints | gzip > /var/lib/postgresql/my_db.tar.gz"