#!/bin/bash
python3 -c "import urllib.request; req=urllib.request.Request('http://127.0.0.1:8080/transfer', data=b'amount=1000', headers={'Content-Type':'application/x-www-form-urlencoded'}, method='POST');
try:
 r=urllib.request.urlopen(req); print(r.status, r.read().decode())
except Exception as e: print(e)"
