#Dot this juste before last step of install
cd prestashop;
rm -rf install;

cd ../;
mv theme-dev prestashop/themes/;

cd prestashop;
#change this line if admin folder has not this name
mv admin admin-dev;
cd ../;