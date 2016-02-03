# Edited by Naga Ravi Chaitanya Elluri
# List of Projects
# Description about each project

•	Log Processing, Search using Apache Kafka and Apache Spark  on Amazon EC2:
Description: Log processing is done using Apache Kafka a high throughput distributed messaging system which handles high volumes of data. The brokers (cluster of servers) will be handling reads and writes from thousands of clients. Webserver will be running in the producer end which is written in Node.js, the logs generated will be updated to a specific topic in the cluster. The logs received by the consumer who has subscribed to a particular topic in kafka are streamed, searched for specific content using Apache Spark. Docker is used to automate the workflow and to make the application independent of platform.

•	Migration of MySQL to MongoDB:
Description: Migrated database in MySQL to MongoDB by onverting toCSV format and then using mongoimport.

•	Developed a shell script to monitor servers and email System Administrator:
Description: The script is run in the background every hour using crontab. It checks the network connections, CPU load and disk usage. If they exceed a threshold, a email is sent to the system administrator.


•	Hadoop Mapreduce to find frequent occurring data:
Description: Hadoop is installed on Amazon EC2. The cluster consists of 1 namenode and 20 datanodes.Map and reduce programs are written in python to find the most frequently occurring data from a huge public dataset.

•	Web Service application Using Java EE:
Description: Developed an application for employees to schedule a leave conveniently. Absence details are stored in MySQL and REST web service is used to parse the decision, display the decision to the employee. 

• Secure remote servers access using VNC
To overcome the disadvantages of SSH, I installed vncserver package on production machines for all the users so that vncserver deamon running  will allow the users to access the servers GUI from anywhere.


