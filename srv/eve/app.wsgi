import sys

# add app to the system path 
sys.path.append('/srv/eve')

# import "app" variable from "api.py" and alias as "application"
from api import app as application