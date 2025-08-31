# Use the official Odoo image (choose version you need)
FROM odoo:17.0

# Install any extra dependencies if needed
USER root
RUN apt-get update && apt-get install -y \
    nano vim curl \
    && rm -rf /var/lib/apt/lists/*

# Copy your custom addons (if you have any)
# Make sure ./addons exists in your repo
COPY ./addons /mnt/extra-addons

# Copy your custom config (if you want custom odoo.conf)
# Place it in ./config/odoo.conf
COPY ./odoo.conf /etc/odoo/odoo.conf

# Give Odoo user permissions
RUN chown -R odoo:odoo /mnt/extra-addons /etc/odoo

# Switch back to odoo user
USER odoo

# Expose Odoo default port
EXPOSE 8069

# Start Odoo server
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
