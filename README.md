# Telegramm-ICMP-Ping
This Script ping's Hosts and if they not reachable it will create an notification to a Telegramm Chat

If the Server is not Online or responding

```mermaid
sequenceDiagram
Monitoring ->> Client: Are you there?
Client-->>Monitoring: ?
Monitoring-->> Telegramm: Server is OFFLINE!

```
If the Server is Online and responding

```mermaid
sequenceDiagram
Monitoring ->> Client: Are you there?
Client-->>Monitoring: Yes im here
Monitoring-->> Telegramm: Nothing to do!
```
