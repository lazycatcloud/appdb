#!/bin/bash

chown -R 1000:1000 /opt/Jackett
chown -R 1000:1000 /opt/JackettData

sudo -u jackett /opt/Jackett/jackett 
