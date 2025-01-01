#!/bin/bash

# Activate the virtual environment
source antenv/Scripts/activate

# Start the application with gunicorn
exec gunicorn --bind=0.0.0.0:8000 app:app
