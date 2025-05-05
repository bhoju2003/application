FROM ubuntu

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy your local web files into the container's Apache root
# Make sure to specify the correct source path for your files
COPY ./var/www/index.html

# Start Apache in the foreground when the container runs
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
