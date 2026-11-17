# Formal Verification of the Needham-Schroeder Public-Key Protocol Using ProVerif

**Students:** HELLAL Ayoub , KHANCHOUCHE Amina , KEBBAB Youcef  
**Supervisor:**   
**Institution:** FERHAT ABBAS UNIVERSITY 
**Module:** Computer-Aided Verification

> Replace placeholders and insert actual ProVerif output. Do not present expected results as executed results.

## Abstract
This project formally analyzes the Needham-Schroeder Public-Key (NSPK) protocol using ProVerif. The original protocol and Lowe's corrected variant are modeled under a symbolic active-attacker assumption. The study focuses on secrecy and authentication properties.

## 1. Introduction
Security protocols aim to provide confidentiality and authentication over networks that may be controlled by attackers. Strong cryptographic primitives do not automatically prevent logical protocol flaws.

## 2. Problem statement
The original NSPK protocol is susceptible to Lowe's man-in-the-middle attack. This project examines selected security properties and evaluates Lowe's identity-binding correction.

## 3. Objectives
- Describe the NSPK message flow.
- Model public-key encryption symbolically.
- Define an active Dolev-Yao attacker.
- Express authentication properties using events and correspondence queries.
- Analyze the original model and its attack trace.
- Model and analyze Lowe's corrected protocol.

## 4. Protocol
Original:
1. A -> B: `{Na,A}pkB`
2. B -> A: `{Na,Nb}pkA`
3. A -> B: `{Nb}pkB`

Lowe's correction:
2. B -> A: `{Na,Nb,B}pkA`

## 5. Threat model and assumptions
The public channel is attacker-controlled. The symbolic attacker can intercept, replay, construct, and forward messages and use public keys. The model does not represent real RSA, PKI deployment, certificate validation, endpoint compromise, or side-channel attacks.

## 6. Requirements
Functional: represent protocol roles, fresh nonces, encryption/decryption, message exchange, events, and queries.
Non-functional: reproducible execution, separate source and result folders, traceable claims, and readable documentation.

## 7. Architecture
Alice is the initiator, Bob is the responder, the public channel is attacker-controlled, and ProVerif evaluates the specified queries.

## 8. Implementation
Describe `models/original/NSPK_Original.pv` and `models/improved/NSPK_Lowe_Fix.pv`. Explain the primitives, roles, events, and queries.

## 9. Testing and results
- OS: [Windows version]
- ProVerif version: [actual version]
- Commands: [exact commands]
- Original output: [paste actual output]
- Attack trace: [paste or summarize actual trace]
- Improved output: [paste actual output]

| Property | Original actual result | Improved actual result | Interpretation |
|---|---|---|---|
| Responder authentication | [fill] | [fill] | [explain] |
| Initiator authentication | [fill] | [fill] | [explain] |

## 10. Security considerations
Discuss attacker capabilities, symbolic assumptions, nonce freshness, identity binding, and the exact properties expressed by the queries.

## 11. Limitations
Conclusions apply only to the supplied model, assumptions, and queries. A successful proof does not establish that all real implementations or key-management systems are secure.

## 12. Future work
Model a trusted PKI, certificate validation, compromised keys, additional replay scenarios, and other protocol variants.

## 13. Conclusion
Summarize only what the actual ProVerif runs demonstrated.

## References
- ProVerif official site and documentation: https://bblanche.gitlabpages.inria.fr/proverif/
- Lowe, G. (1995), *An Attack on the Needham-Schroeder Public-Key Authentication Protocol*.
- Needham, R. M. and Schroeder, M. D. (1978), *Using Encryption for Authentication in Large Networks of Computers*.
