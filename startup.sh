#!/bin/bash

# Log the current working directory
echo "Current working directory:"
pwd

# Log all files and folders in the current directory
echo "Directory structure:"
ls -la

# Check if the virtual environment folder exists
if [ -d "antenv" ]; then
    echo "Virtual environment directory found. Listing contents:"
    ls -la antenv
else
    echo "Virtual environment directory 'antenv' NOT found!"
fi

# Attempt to activate the virtual environment
if [ -f "antenv/bin/activate" ]; then
    echo "Activating virtual environment."
    source antenv/bin/activate
else
    echo "Virtual environment activation script not found!"
fi

# Log the Python path
echo "Python path:"
which python

# Start the application
exec gunicorn --bind=0.0.0.0:8000 app:app