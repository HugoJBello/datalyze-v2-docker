cd ./db-data
sudo chmod +755 my_db.tar.gz

gzip -d -k my_db.tar.gz
#tar -xvzf my_db.tar

docker exec db bin/bash -c "export PGPASSWORD=docker \
      && psql -U docker -h localhost gis -c \"create database dbtest;create table waypoints;\""

docker exec db bin/bash -c "export PGPASSWORD=docker \
      && psql -U docker -h localhost gis < /var/lib/postgresql/my_db.tar"