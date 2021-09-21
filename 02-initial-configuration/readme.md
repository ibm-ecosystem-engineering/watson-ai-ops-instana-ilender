# WAIOps Demo with Instana and iLender App : 2 - Initial Configuration

This article explains about Initial Configuration required to do the Watson AIOps demo setup with Instana and iLender App.

The article is based on the the following.

- RedHat OpenShift 4.6.x / 4.7.x on IBM Cloud (ROKS)
- Watson AIOps 3.1.x

## 1. Deploy iLender App

Deploy iLender application in Kubernetes Cluster. The detailed steps are given [here](./deploy-app).

## 2. Install Humio

Setup Humio on a single node (16 core, 64 GB)

Refer: https://github.com/diimallya/humio-single-node

## 3. Create Slack account	

Setup free slack account and create workspace, channels and slack app.

Refer: https://github.com/ibm-gsi-ecosystem/watson-ai-ops-310-guide/tree/main/300-aiops-initial-configuration/13-slack-account-creation-and-integration

## 4. Update Event Manager Gateway

Need to update the Event Manager Gateway Filter with to allow events from Instana.

Add the below text to the `Filter` property of the Event Manager Gateway.

```
OR (Manager = \'Instana\') 
```

Refer: https://github.com/ibm-gsi-ecosystem/watson-ai-ops-310-guide/tree/main/400-configure-event-manager-gateway#user-content-2-update-filters-in-event-manager-gateway


## 5. Create ServiceNow account

#### Create ServiceNow developer instance 
https://pages.github.ibm.com/up-and-running/watson-aiops/3.1.1%20PoC%20Cookbooks/ServiceNow/#procure-a-servicenow-developer-instance

#### Installing Watson AIOps App plugin in ServiceNow Developer Instance
https://community.ibm.com/community/user/aiops/blogs/jeya-gandhi-rajan-m1/2021/09/08/snow-waiops-2-installing-waiops-app-plugin

#### Configuring Watson AIOps roles to ServiceNow users
https://community.ibm.com/community/user/aiops/blogs/jeya-gandhi-rajan-m1/2021/09/08/snow-waiops-3-configuring-waiops-roles-in-snow


## 6. Integrate Instana and Watson AIOps

Instana and Watson AIOps to be integrated. Refer the below URL.

https://community.ibm.com/community/user/aiops/blogs/jeya-gandhi-rajan-m1/2021/09/08/ins-waiops-1-integrating-instana-with-watson-aiops



