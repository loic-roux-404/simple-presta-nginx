# Setup Prestashop

### 1. Init prestashop folder

`cd eklipsis`

run the install script  with :
`./install.sh`

A [prestashop/](prestashop) folder may appear

> Warning : the last command is dangerous in production (chmod 777)

### 2. Launch containers

- `docker-compose up -d` (wait about 5 minutes)
- [localhost:80](http://localhost) for start install

#### DB setup during prestashop install process :
Database host : `mysql`
Database name : `foo`
Database user : `foo`
Database pass : `bar`

### 3. Start
Remove install folder and rename back office
`./after_install.sh`
### Infos :
- [localhost:80](http://localhost) to see your website
- [localhost:9010](http://localhost:9010) for phpmyadmin

##### Stop server and services
`docker-compose down`


# Pour EKLIPSIS (sauter toutes les étapes précédentes)

1. importer la base de donnée
- [localhost:9010](http://localhost:9010) for phpmyadmin
- Cliquer sur la base de donnée foo
- Importer et selectionner ce fichier [data/prestashop.sql.zip](data/prestashop.sql.zip)

2. Selectionner le thème dans le back office