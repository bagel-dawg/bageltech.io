---
layout: default
---
# Qualifications

## Amazon Web Services (AWS)
*   EC2, EKS, IAM, SSO, S3
*   VPC, Transit Gateway, Network Firewall
*   Functional experience using AWS and serverless architecture
*   Cloud Cost: EC2 Spot Fleet, AWS EC2 Savings Plan, KubeCost

## Kubernetes
*   EKS, AKS, kubeadm-based on-prem deployments
*   ArgoCD, Kustomize, Helm, FluxCD
*   Karpenter, Prometheus, MongoDB, RabbitMQ, PostgreSQL

## Coding
*   HCL (Terraform, Packer), Ansible, Jenkins declarative pipelines, Github Actions CI Syntax
*   Non-Compiled/scripting languages: Python, Bash
*   Version control via git

# Work History

## Swimlane
June 2019 - Current

Principal Infrastructure Engineer, SRE Team

*    Desgiend and Maintained CICD pipelines on Github Actions with custom ephemeral EC2-based self-hosted agents.
*    Ground-up design and implementation of the Swimlane Cloud Turbine Cloud Kubernetes platforms.
*    Provided site reliability for customers running in Swimlane's Dedicated Cloud and Turbine Cloud platform.
*    Managed multi-region cloud-native Kubernetes clusters containing hundereds of nodes per region.
*    Managed dozens of individual Kubernetes clusters with hundereds of individual nodes combined.
*    Provided last-escelation level support for the on-prem version of the Swimlane product deployed on top of a kubeadm-based distro + KOTS.

## Alion Science and Technology
Oct 2018 - June 2019

Linux Administrator

*    Required SCI security clearance (no longer active).
*    General Linux administration and upkeep.
*    Managed deployment of 1,500+RHEL 6/7 server and desktop deployments.
*    The Foreman / Satellite 6 deployment and provisioning.
*    Configuration Management utilizing Puppet and Ansible.

## Systems Group, Old Dominion University
Feb 2014 - Oct 2018

Systems Engineer

*    Windows Administration and Linux Administration
*    Exchange, Hyper-V, SCCM, SQL Server, Active Directory,
*    Server 2003, 2008, 2012 (R2), 2016
*    Ubuntu, CentOS, LAMP, basic web development
*    Virtualization Experiencing including VMware and Hyper-V

# Education
## Bachelor of Science in Cyber Security, minor in Computer Science
Old Dominion University, 2017

# Certifications
COMPTIA Security+ (Verification: 2RMBVDTGYHRQQR53), Dec 2018
COMPTIA Linux+ / LPIC-1 (Verification: Q7J FPK6PFHR4QDKZ), Nov 2018


# Personal Projects
[Online CV](https://github.com/bagel-dawg/bageltech.io). This project is what is used to host [my online CV](https://bageltech.io). It includes not only the website's content, but also the terraform code for the underlying infrastructure, as well as the CICD process. This repo is meant to showcase competancy in using AWS and CICD to publish a simple website that is declaratively defined.

[screensaver / screenserver](https://github.com/bagel-dawg/screensaver). A self-hosted version of the popular tool "Gyazo". It takes screenshots and stores them into an object store. This can be used to self-host screenshots to share with friends or colleagues, and can easily be adapted to use a vanity domain. It is hosted in AWS using API Gateway, Lambda, and S3. Images are stored under this vanity domain and are served by CloudFront.

[Github Slack Mentions](https://github.com/bagel-dawg/github-slack-mentions). This project's purpose is to notify github users via Slack when their reviews are requested, or if they are mentioned in a project. It is built on AWS using API gateway, Lambda, and DynamoDB to be completely serverless.
