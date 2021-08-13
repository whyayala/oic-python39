# oic-python39
A docker container that comes with python3.9 and Oracle Instant Client (64-bit)

## Purpose
Oracle didn't have a container registered that had python 3.9 and their instant client installed together. I made this to accomodate that need.

Use case would be that you have a python project dependent on CX-oracle which requires the instant client to connect to an oracle db.

## How to use
Recommended usage would be to reference this image as a base in the Dockerfile of your project

## Example

Dockerfile
```
FROM ghcr.io/whyayala/oic-python39:main
# Add whatever commands you need for your container
```
