docker run -it --name="gospel" -p 6900:6900 -v /var/www/c9sdk/plugins:/var/.gospel/plugins -v /var/www/c9sdk/node_modules:/var/.gospel/node_modules -p 9999:22 gospel -D
