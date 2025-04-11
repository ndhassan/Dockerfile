#!/bin/sh

echo "🔁 Running DB migrations..."
n8n migrate:up

echo "🚀 Starting n8n..."
n8n
