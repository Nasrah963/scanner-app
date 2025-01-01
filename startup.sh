#!/bin/bash

# Attempt to activate the virtual environment
if [ -f "antenv/bin/activate" ]; then
    echo "Activating virtual environment." 
    source antenv/bin/activate
else
    echo "Virtual environment activation script not found!"
fi

# Start the application
exec gunicorn --bind=0.0.0.0:8000 app:app