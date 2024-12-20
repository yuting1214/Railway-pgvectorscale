# Use the TimescaleDB pre-built image
FROM timescale/timescaledb:latest-pg17

# Add initialization scripts
COPY init.sql /docker-entrypoint-initdb.d/

# Use the official start command
CMD ["/bin/sh", "-c", "unset PGPORT; docker-entrypoint.sh postgres -p 5432"]
