# Setup Prestashop

### 1. Init prestashop folder

`cd simple-presta-nginx`

run the install script  with :
`./i.sh`

A [prestashop/](prestashop) folder may appear

> WARNING : the last command is dangerous in production (chmod 777)

### 2. Launch containers

- `docker-compose up -d` (wait about 5 minutes)
- [localhost:80](http://localhost) for start install

#### DB setup during prestashop install process :
Database host : `mysql`
Database name : `foo`
Database user : `foo`
Database pass : `bar`
If you already have database tables, refer to [Last section](#-4.-existing-db)

#### Close Prestashop install tab 

### 3. Before start
> WARNING : Don't launch back-office before next command

Remove install folder and rename back office
`./after_install.sh`

### 4. Developp
`cd prestashop/themes/theme-dev/dev`<br>
- Install dependencies
`npm install`
- Scss :
`gulp watch`
- JS (and post processing css):
`npm run watch`


## Useful :
- [localhost:80](http://localhost) to see your website
- [localhost:9010](http://localhost:9010) for phpmyadmin

##### Manage containers
Stop with `docker-compose stop` and restart with `docker-compose start`
##### Remove containers (free RAM)
`docker-compose down`

##### Rebuild nginx with additionnal configs
`docker-compose build site`

### 5. Existing db
- Select the same prefix of your existing database
- Enter [phpmyadmin](http://localhost:9010)
- Delete all tables
- Select foo database and import your SQL.zip dump