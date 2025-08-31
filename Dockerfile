# Use official Odoo image
FROM odoo:17.0

# Install any extra dependencies (optional)
USER root
RUN apt-get update && apt-get install -y nano vim curl && rm -rf /var/lib/apt/lists/*

# Copy custom addons if you have them
# (comment this line if you don’t have an ./addons folder)
COPY ./addons /mnt/extra-addons

# Fix permissions
RUN chown -R odoo:odoo /mnt/extra-addons || true

# Switch back to odoo user
USER odoo

# Expose Odoo default port
EXPOSE 8069

# Start Odoo with your hardcoded DB config
CMD ["odoo",
     "--db_host=dpg-d2q94mqdbo4c73btg8v0-a.oregon-postgres.render.com",
     "--db_port=5432",
     "--db_user=runzun",
     "--db_password=Ef4W6TaN8qqkLo5FPJyiui5X72l97nC9",
     "--db_name=runzun"]
