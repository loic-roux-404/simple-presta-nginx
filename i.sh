#replace it by curl if you don't have wget installed or see this issue : https://stackoverflow.com/questions/33886917/how-to-install-wget-in-macos
wget https://download.prestashop.com/download/releases/prestashop_1.7.6.1.zip;

#curl https://download.prestashop.com/download/releases/prestashop_1.7.6.1.zip -o ./prestashop_1.7.6.1.zip

# Unzip the PrestaShop archive
unzip prestashop_1.7.6.1.zip;

# Create prestashop directory
mkdir prestashop;

# Move zip file with actual shop to prestashop prestashop directory
mv prestashop.zip prestashop;

# Move index.php to prestashop directory
mv index.php prestashop;

#Set the correct user and group ownership for the PrestaShop directory

# Remove zip and install file
rm prestashop_1.7.6.1.zip Install_PrestaShop.html;

sudo chmod -R 777 prestashop
