# CSRF Security Lab

Educational CSRF lab with a Node.js application and remediation documentation.

**Node.js · HTML · Docker**

## Learning focus

Request authenticity and the risk of unwanted authenticated actions.

## Repository guide

| Resource | Location |
| --- | --- |
| Remediation | [Fix.md](Fix.md) |
| Compose configuration | [docker-compose.yml](docker-compose.yml) |

## Inspect the lab

1. Read the assessment and remediation notes together.
2. Inspect the Dockerfile and Compose configuration before running the application.
3. Use an isolated local environment for authorized training. The supplied Compose file publishes a host port; it is not a production deployment configuration.
4. Record observations and compare them with the mitigation notes.

## Setup requirements

Docker with Compose is required for the supplied container configuration. The lab directory is `the repository root`.

Container builds and vulnerability demonstrations have not been revalidated as part of this documentation update.

## Original assessment

### Vulnerability: Cross-Site Request Forgery (CSRF)

## What is CSRF?
CSRF is an attack that forces an authenticated user to execute unwanted actions on a web application in which they are currently authenticated. Because the browser automatically sends session cookies, the application cannot distinguish between a legitimate request and a forged request sent by an attacker.

---

Part of [Osama Alsmadi’s project portfolio](https://github.com/osamaalsmadi).
