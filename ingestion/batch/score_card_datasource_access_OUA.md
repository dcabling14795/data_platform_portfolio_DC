# Access Permissions Process - OUA (Oracle Utilities Analytics)

## 1. Purpose

Process map for accessing NWL's main oracle environment.


---

## 2. Scope

This process applies to:

- [Environments: OUA]
- [Datasets: CC&B, MIPS, LIMS, MAXIMO]

---

## 3. Roles and Responsibilities

| Role | Responsibility | People|
|---|---| --- |
| Requester | Submits access request | Aiimi Consultants |
| NWL Contact | Reviews and approves business need | Michael Porritt / James Trevett / Jack Redgate |
| Data Owner | Approves access to data | Steve Rudland / James Trevett |
| Implementer | Validates security requirements | Peter Napier / DBA Team |
| Platform Lead | Provisions technical access | Steve Rudland |
| Data Governance | Performs periodic access review | Central Data Engineering |

---

# 4. Access Request Process

```mermaid
flowchart TD

    A([Access Required])
    B[User submits access request to NWL Contact]
    C{NWL Contact Approves?}
    D[Re-evaluate need for access]
    E[Data Owner approval]
    F{Data Owner approved?}
    G[Reject request]
    K[Implementer set up]
    L[Provision access and access details]
    M[Notify user]
    N([Access Granted])

    A --> B
    B --> C

    C -- No --> D
    D --> B

    C -- Yes --> E
    E --> F

    F -- No --> G
    F -- Yes --> K

    K --> L
    L --> M
    M --> N

