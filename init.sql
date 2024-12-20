# Use the TimescaleDB pre-built image
FROM timescale/timescaledb:latest-pg17

# Add initialization scripts
COPY init.sql /docker-entrypoint-initdb.d/
