
Overview on pubsub vs kafka - 06/05/2026
pub sub is an architecture that aims to solve synchronous message passing problem. The receiver asks for a service from the sender and the sender serves a request and waits for requester acknowledgement. If the sender is waiting for acknowledgement then the sender is blocked from serving others.

The Pub/Sub model is a messaging pattern where a message broker routes messages from publishers to subscribers based on subscriptions, ensuring scalable and reliable delivery.

```mermaid
flowchart LR
    subgraph Producers
        P1[Producer Service]
    end

    subgraph Broker["Distributed Message Broker"]
        T1[(Topic)]
        PRT1[Partition 1]
        PRT2[Partition 2]
        PRT3[Partition 3]
    end

    subgraph ConsumerGroup["Consumer Group"]
        C1[Consumer Instance 1]
        C2[Consumer Instance 2]
    end

    P1 -->|Publish Events| T1

    T1 --> PRT1
    T1 --> PRT2
    T1 --> PRT3

    PRT1 --> C1
    PRT2 --> C2
    PRT3 --> C1
```
