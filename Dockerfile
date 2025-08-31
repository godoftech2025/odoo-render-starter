# Use official Odoo image
FROM odoo:17.0

# Optional: switch to root to install extra dependencies if needed
USER root

# Example: install extra Python packages (if your custom modules require them)
# RUN pip3 install <your-package>

# Set working directory
WORKDIR /var/lib/odoo

# Copy custom addons (if you have any)
# Make sure you have an "addons" folder in the same directory as this Dockerfile
COPY ./addons /mnt/extra-addons

# Copy custom configuration (optional)
# Make sure you have an "odoo.conf" in the ./config folder
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Set permissions (important for Odoo to access files)
RUN chown -R odoo:odoo /mnt/extra-addons /etc/odoo/odoo.conf

# Switch back to odoo user
USER odoo

# Expose Odoo default port
EXPOSE 8069

# Command to run Odoo
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
