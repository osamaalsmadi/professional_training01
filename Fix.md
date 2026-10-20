# How to Protect Against CSRF

1. **Anti-CSRF Tokens:**
   Generate a unique, unpredictable token for the user's session. This token must be included in every state-changing request (like POST). The server verifies the token before processing the request.

2. **SameSite Cookie Attribute:**
   Set the `SameSite` attribute to `Strict` or `Lax` on session cookies. This prevents the browser from sending cookies along with cross-site requests.
