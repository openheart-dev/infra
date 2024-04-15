-- Create keyspace
CREATE KEYSPACE IF NOT EXISTS openheart WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

-- Use keyspace
USE openheart;

-- Create table
CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY,
    name TEXT,
    email TEXT,
    password TEXT,
    created_at TIMESTAMP
);