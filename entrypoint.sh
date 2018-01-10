#!/bin/bash
echo "usuario mexico"

set -e

echo "Starting SSH ..."
service ssh start

#test ! -d "$APP_HOME" && echo "INFO: $APP_HOME not found. creating ..." && mkdir -p "$APP_HOME"
#chown -R www-data:www-data $APP_HOME

#test ! -d "$HTTPD_LOG_DIR" && echo "INFO: $HTTPD_LOG_DIR not found. creating ..." && mkdir -p "$HTTPD_LOG_DIR"
#chown -R www-data:www-data $HTTPD_LOG_DIR
#apachectl start

#update_settings

#if [ "${DATABASE_TYPE,,}" = "local" ]; then
	# Phpmyadmin Log Info. Details please find: Version 0.4 - 3
#	if [ -z $DATABASE_PASSWORD ]; then
#		echo "MariaDB Error: Please set var DATABASE_PASSWORD on App settings"
#		echo '<!DOCTYPE html><html><head><title> MariaDB Error </title></head><body><font color =\"#aa0000\"><h2>MariaDB Error.</h2></font>' > $APP_HOME/$LOCALDB_ERROR
#		echo 'Fail to enable Local Database. Please set DATABASE_PASSWORD on App settings.</body></html>' >> $APP_HOME/$LOCALDB_ERROR
#	fi
#
#	if [ -z $DATABASE_USERNAME ]; then
#		echo "MariaDB Error: Please set var DATABASE_USERNAME on App settings"
#		echo '<!DOCTYPE html><html><head><title> MariaDB Error </title></head><body><font color =\"#aa0000\"><h2>MariaDB Error.</h2></font>' > $APP_HOME/$LOCALDB_ERROR
#		echo 'Fail to enable Local Database. Please set DATABASE_USERNAME/DATABASE_PASSWORD on App settings.</body></html>' >> $APP_HOME/$LOCALDB_ERROR
#	fi
#
#	if [ ! -z $DATABASE_USERNAME ] && [ ! -z $DATABASE_PASSWORD ]; then
#		setup_localdb
#
#		if [ -e $APP_HOME/$LOCALDB_ERROR ]; then
#			rm -f $APP_HOME/$LOCALDB_ERROR
#		fi
#	fi
#else
	# ensure app install without effect of LOCALDB_ERROR if not local mode
#	if [ -e $APP_HOME/$LOCALDB_ERROR ]; then
#		rm -f $APP_HOME/$LOCALDB_ERROR
#	fi
#fi

# apachectl stop
# delay 2 seconds to try to avoid "httpd (pid XX) already running"
#sleep 2s

#echo "Starting Apache httpd -D FOREGROUND ..."
#apachectl start -D FOREGROUND
