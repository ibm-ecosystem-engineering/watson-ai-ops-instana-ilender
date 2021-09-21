# WAIOps Demo with Instana and iLender App : 7 - Inferencing

This article explains about Inferencing Steps required as part of the Watson AIOps demo setup with Instana and iLender App.

- Generate load on the iLender App to simulate memory high issue in CreditScore Service
- Instana generates alerts and send to Event Manager as an event
- Humio logs observed by the AIManager detects the log anomaly
- Both the log anomaly and Instana Events get correlated 
- Slack story and ServiceNow Incident get created 

The article is based on the the following.

- RedHat OpenShift 4.6.x / 4.7.x on IBM Cloud (ROKS)
- Watson AIOps 3.1.x


## 1. Enabling Dataflow 

Make sure DataFlow is on in `Humio`, `Kafka` and `ServiceNow` integrations.

### Humio

Here `Data flow` is ON and it is in inferencing mode.

<img src="images/image-00001.png">
<img src="images/image-00002.png">

### Event Mgr (Kafka)

Here `Data flow` is ON and it is in inferencing mode.

<img src="images/image-00003.png">
<img src="images/image-00004.png">

### ServiceNow

Here `Data flow` is ON and it is in inferencing mode.

<img src="images/image-00005.png">
<img src="images/image-00006.png">
<img src="images/image-00007.png">

## 2. Before generating Load in app

Observe `Instana`, `Application Mgmt` and `Event Manager` before creating load in the iLender app.

### CreditScore service memory in Instana

The used percentage of `JVM memory` of the `CreditScore` service is `36%` only.

<img src="images/image-00008.png">

### iLender Application 

There is no error highlighted for `CreditScore` pod in the topology of the iLender application in Watson AIOps.

<img src="images/image-00009.png">
<img src="images/image-00010.png">

### Events in Event Manager

There is no event related to the `CreditScore` in Event manager.

<img src="images/image-00011.png">

## 3. Run the Demo Script

Demo script is available in [files/demo-scripts](files/demo-scripts).

This script will increase the load in the application and simulate the memory high problem in the creditscore.

### Update Config file

The config file `config.sh` to be updated.

#### Update API_URL

Update API_URL with the `frontweb` service url

```
API_URL=http://1.1.1.1:30500
```

#### Update API_URL_CREDIT_SCORE

Update API_URL with the `creditscore` service url

```
API_URL_CREDIT_SCORE=http://1.1.1.1:30501
```

## 4. Generate Load in app

1. Run the below command to start the demo script.

```
sh demo.sh
```

2. Choose the option 1 to generate load and simulate memory high problem.

<img src="images/image-00012.png">
<img src="images/image-00013.png">

## 5. After generating Load in app

Lets observe what is happend after the load is generated.

### Humio shows logs

Humio shows log entries from iLender app.

<img src="images/image-00014.png">

### Application Summary in Instana

 Application Summary shows no. of calls, latency and etc.

<img src="images/image-00015.png">

### Incident as Slack Story

Incident is created in slack. It shows Title, Description, links to servicenow incident, localization, blast radius, alerts and log anomalies count.

<img src="images/image-00016.png">
<img src="images/image-00017.png">

#### View Relevant Event

It shows the Instana event `Creditscore memory high issue` as an alert.

Click on `Show more` to see the event detail.

<img src="images/image-00018.png">

Click on `Show more` to see the event detail.

<img src="images/image-00019.png">
<img src="images/image-00020.png">

Click on `Show more` to see the log anomaly detail.

<img src="images/image-00021.png">

Click on `Preview logs` to see the logs detail.

<img src="images/image-00022.png">

Click on `Search Similar Incident` to open Similar incidents window.

#### View Similar Incidents

Click on `Search` to see the Similar incidents list.

<img src="images/image-00023.png">

Similar incidents list is displayed.

Click on any of the similar incident to see its details.

<img src="images/image-00024.png">

The similar incident detail is displayed in ServiceNow.

<img src="images/image-00025.png">


<img src="images/image-00026.png">
<img src="images/image-00027.png">

#### Blast Radius

Click on the blast radius link in the slack story to view the blast radius.


<img src="images/image-00028.png">

#### Incident

Click on the `Incident` link to see the incident created for the memory issue in servicenow .

<img src="images/image-00029.png">
<img src="images/image-00030.png">

See the 2 events associated with this incident.

<img src="images/image-00031.png">

#### Credit Score service memory in Instana

Observe the memory high in Instana

<img src="images/image-00032.png">

See the incident created in Instana

<img src="images/image-00033.png">

#### Event in Event Manager

See the Event in Event Manager

<img src="images/image-00034.png">

## Story in WebConsole

See the application screen contains the stories.

<img src="images/image-00035.png">
<img src="images/image-00036.png">

Click on the `View Details` link to see the story details in webconsole .

<img src="images/image-00037.png">
