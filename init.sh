# settings for nginx
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx stop
nginx -c /etc/nginx/sites-enabled/test.conf

# settings for gunicorn
sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py
sudo gunicorn -b 0.0.0.0:8080 gunicorn hello:application
#sudo gunicorn -c /home/box/web/etc/gunicorn.py

# settings for mysql
sudo /etc/init.d/mysql start