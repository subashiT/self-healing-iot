# self-healing-iot
# Self-Healing IoT Edge Framework using GitOps

## About
This project implements a self-healing DevOps framework for IoT edge systems. 
When a deployed IoT application fails on a Raspberry Pi, the system 
automatically detects the failure and rolls back to the last stable version 
using GitOps principles — without any human intervention.

## Key Features
- Automated failure detection using health monitoring
- GitOps-based deployment (Git as single source of truth)
- Automatic rollback to stable version on failure
- Dockerized IoT application on Raspberry Pi 3
- CI/CD pipeline using GitHub Actions

## Tech Stack
- Raspberry Pi 3
- Docker
- GitHub Actions (CI/CD)
- MQTT (IoT communication)
- Python
- Bash scripting

## Research Objective
To reduce IoT edge system downtime by replacing manual recovery 
with an automated self-healing mechanism.

## Status
🚧 Work in progress — MSc Research Project 2025
