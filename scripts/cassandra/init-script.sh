#!/bin/bash

# Start Cassandra in the background
cassandra -f -R &

# Read in the cassandra password from the secret
export CASSANDRA_PASSWORD=$(cat /scripts/cassandra/cassandra_password)

# Wait for Cassandra to start
until cqlsh -e "DESC KEYSPACES" -u cassandra -p $CASSANDRA_PASSWORD; do
    echo "Waiting for Cassandra to start..."
    sleep 5
done

# Once Cassandra has started, run your custom script
echo "Running init.cql..."
cqlsh -f /scripts/cassandra/init.cql -u cassandra -p $CASSANDRA_PASSWORD

# Clean up the password
unset CASSANDRA_PASSWORD

# Finally, keep the container running
tail -f /dev/null
