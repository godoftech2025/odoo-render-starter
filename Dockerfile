FROM odoo:17.0

COPY ./addons /mnt/extra-addons
COPY ./odoo.conf /etc/odoo/odoo.conf



USER odoo

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
