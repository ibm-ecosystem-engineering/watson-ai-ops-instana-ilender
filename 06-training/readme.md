# WAIOps Demo with Instana and iLender App : 6 - Training

This article explains about Training Steps required as part of the Watson AIOps demo setup with Instana and iLender App.

The article is based on the following.

- RedHat OpenShift 4.6.x / 4.7.x on IBM Cloud (ROKS)
- Watson AIOps 3.1.x


## 1. Training - Log Anomaly Detection

Refer the steps given in the below url. 

https://github.com/ibm-gsi-ecosystem/watson-ai-ops-310-guide/tree/main/330-aiops-training/10-log-anomaly-detection-training

Note: For creating load in the application, refer the steps given below.

### Creating load in the app

1. Open the [run-load.sh](./files/run-load.sh) file.

2. Update the below property with the right url of the application.

    ```
    export P_HOST=http://1.1.1.4:30500
    ```

3. When you want to create load in the app, run the below command.

    ```
    sh run-load.sh
    ```

## 2. Training - Event Grouping

Refer the steps given in the below url. 

https://github.com/ibm-gsi-ecosystem/watson-ai-ops-310-guide/tree/main/330-aiops-training/11-event-grouping-training


## 3. Training - Similar Incidents

Refer the steps given in the below url. 

https://github.com/ibm-gsi-ecosystem/watson-ai-ops-310-guide/tree/main/330-aiops-training/12-similar-incidents-training


To create sample ServiceNow incidents for Similar Incidents in Watson AIOps, refer the below url

https://community.ibm.com/community/user/aiops/blogs/jeya-gandhi-rajan-m1/2021/09/08/snow-waiops-1-create-snow-incidents

