#!/bin/sh

# copy by chatgpt
# sed -i '$s/.*/    uvicorn.run("web_api:app", host='\''0.0.0.0'\'', port=port, reload=True, access_log=False, root_path="\/api")/' your_file.py
python3 /app/fix_api_domain.py

python3  web_app.py &
python3  web_api.py