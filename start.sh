#!/bin/bash
# wait-for-postgres.sh

# wait for database to be ready
until PGPASSWORD=$DB_PASSWORD psql -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" -c '\q'; do
  echo "Waiting for database..."
  sleep 2
done

# start Odoo
exec odoo -c /etc/odoo/odoo.conf -p 8069
