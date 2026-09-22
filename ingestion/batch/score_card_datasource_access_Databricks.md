# Access Permissions Process - Databricks

## 1. Purpose

Process map for accessing NWL's Databricks Environments environment. The access will be different across the different environments. However the process to getting access to them is the same. You will then get access to all databases within their unity catalog. Additional Access to specific objects is done on a bespoke basis.


---

## 2. Scope

This process applies to:

- [Environments: NWG-IA-Wastewater-Dev, NWG-IA-Wastewater-Test, NWG-IA-Wastewater-Prod]
- [Datasets: Unity Catalog]

---

## 3. Roles and Responsibilities

| Role | Responsibility | People|
|---|---| --- |
| Requester | Submits access request | Aiimi Consultants |
| NWL Contact | Reviews and approves business need | Michael Porritt / James Trevett / Darren Anderson |
| Data Owner | Approves access to data | Darren Anderson / James Trevett |
| Implementer | Provisions technical access | Darren Anderson / Central Data Engineering |
| Platform Lead | Escalation Point | Darren Anderson |
| Data Governance | Performs periodic access review | Darren Anderson |

---

# 4. Access Request Process

```mermaid
flowchart TD

    A([Access Required])
    B[Access request to </br> NWL Contact]
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

