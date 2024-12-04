# Installation Steps for the Debezium Tutorial Blog (Part 2)

|Sr No | Command | Description |
|--    |--       |--           |
|01    | Install PostgreSQL RDBMS |    |
|02    | Create a new database in PostgreSQL RDBMS | CREATE database exampledatabase; |
|03    | Download and extract Apache Kafka from official Apache Kafka Website depending on your operating system |    |
|04    | Download and extract Debezium Connector for PostgreSQL Source RDBMS |   |
|05    | Run the SQLScripts.sql file to create database tables and records.  |   |
|06    | Edit the server.properties file under config folder of Kafka as per the attached file.      |   |
|07    | Edit the zookeeper.properties file under config folder of Kafka as per the attached file. |  |
|08    | Add the home directory of Kafka to the PATH variable.C:\kafka_2.12-3.9.0 | |
|09    | | bin\windows\zookeeper-server-start.bat config\zookeeper.properties|
|10    | | bin\windows\kafka-server-start.bat config\server.properties  |
|11    | | bin\windows\kafka-console-consumer.bat --topic dbserver1.public.account --from-beginning --bootstrap-server localhost:9092 |
|12    | | bin\windows\kafka-console-consumer.bat --topic dbserver1.public.transactions --from-beginning --bootstrap-server localhost:9092 |
|13    | | bin\windows\kafka-topics.bat --bootstrap-server localhost:9092 --list   |
|14    | | \c exampledatabase | 
|15    |   Edit the postgresql.conf file as per the attached file. | |
|16    |   Go to services.msc on windows. Restart the postgresql service. | |
|17    |   Create a new file called - debezium-postgres-source.properties, add properties in it. The sample file is attached. |  |
|18    |  Copy Debezium folder to C:\kafka_2.12-3.9.0\plugins\debezium   | |
|19    |  edit the config/connect-standalone.properties, add the property: plugin.path=C:/kafka_2.12-3.9.0/plugins/debezium   |   |
|20    |   | C:\kafka_2.12-3.9.0>bin\windows\connect-standalone.bat config\connect-standalone.properties config\debezium-postgres-source.properties |
|21    | Show streamed transactions from PostgreSQL schema1 and sink to kafka consumer window, in the Kafka Consumer Window. |   |