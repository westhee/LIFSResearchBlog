---
layout: post
title: "Workshop on the Third-Year of AI Criminal Investigation Support Project"
author: 2022jeewon
icon: star-o
tags: [seminar, review]
---
Hallym University's Legal Informatics and Forensics Science (LIFS) lab , hosted a workshop on June 20th at the Ramada Plaza Jeju, Jeju Island, focusing on the research project "AI-based Criminal Investigation Support." The workshop brought together practitioners and officials from the collaborating institutions : the Korean National Police University, SPELIX, NHN Diquest, Korea Electronics Technology Institute, and HM Company.

We were honored to have Mr. Choi Yang-hee, the President of Hallym University, as a special guest at the workshop. His presence added immense value to our discussions and further enriched the cooperative environment among the participating institutions.

![workshop1](/img/news/workshop1.jpg)

The primary goal of this workshop was to facilitate the exchange of valuable updates and advancements regarding the objectives and progress of the Third-Year research project. An additional key focus was to share the up-to-date research status and findings of each participating institution based on the objectives set for the Second-Year. This allowed us to have a comprehensive understanding of the progress made by each institution and provided an opportunity to learn from one another's findings and insights. By exchanging our latest research progress, we were able to identify potential synergies, address challenges, and collectively advance the project towards its goals.

![workshop2](/img/news/workshop_discussion1.jpg)

![workshop3](/img/news/workshop_discussion2.jpg)

Following the completion of the presentations, the participating institutions engaged in in-depth discussions. These discussions provided a platform for sharing the latest progress made by each institution, specifically in relation to the objectives set for the Third-Year. The exchange of ideas and insights was accompanied by thought-provoking questions, contributing to a comprehensive understanding of the progress made by each institution and fostering an environment of shared knowledge.

### 1. Objectives of the Third-Year on "AI-based Criminal Investigation Support"

In the Third-Year, our primary objectives are centered around the "Advancement of Core Functions" to pave way for the establishment of a Prototype-level System by the Fourth-Year. These objectives entail several key steps, including the initial integration of core technologies that enable target services and the commencement of integrated prototype development in close consultation with expert groups.

During this phase, our focus is on further enhancing and refining the core functionalities of our research project. We aim to incorporate and harmonize various technologies to ensure seamless operation and optimal performance of the target services. This involves carefully assessing the compatibility and effectiveness of the integrated technologies and making necessary adjustments to achieve the desired outcomes.

### 2. Research Execution and Results of Hallym University

This section focuses on the results of the Second-Years' research achievements of the LIFS lab, Hallym University.

The main goals were to automate collection and refine court judgment cases, build ground truth datasets and develop models on criminal information, automate extraction of argument structure from judgments, and to automate document analysis and visualization for hypothesis review support. 


**Automated Collection and Refinement of Judgments**

Hallym University presented their work on the automative collection of court judgments.
The process involved converting PDF-formatted court judgment cases into TXT format using OCR (Optical Character Recognition), followed by structuring the data and converting it into and additional JSON format. The collected data is then utilized for various purposes, including judgment analysis, tool-based structural analysis, and model training.

As of now, a total of 72,132 cases have been collected and structured.

**Building Criminal Information Ground Truth Set and Model Development**

In this task, word and phrase information is extracted from crime facts to enhance analysis and investigation processes. Initially, the GPT-3.5 API was used for preliminary data annotation, followed by secondary annotation using the tool Docanno. After a thorough final review, a final golden dataset was constructed. 
Currently, 1,200 murder cases have been annotated, with a goal to expand to 2,600 cases. 
The extracted information serves various purposes, including conducting similar case searches, enhancing investigation reports, and constructing comprehensive timelines of events. By leveraging this information, the project aims to improve investigation efficiency and contribute to advancements in criminal analysis techniques.
 
**Automatic Extraction of Argument Structure from Judgments**

This task is carried out through the following steps: (1)automatic classification of argument elements based on KoBERT, (2)automatic classification of argument relationships based on KLUE-BERT, and (3)extraction and visualization of judgment argument structure based on classified argument elements and relationships.

The construction of an argument dataset based on the expanded Toulmin+ argument structure has been conducted to extract argument structures from criminal judgments. This involved fine-tuning pre-trained language models like KoBERT and KLUE-BERT. 
Furthermore, argument error checking was performed by generating and visualizing an argument dataset using the system. This development opens up possibilities for future applications, including searching for similar cases using argument graphs.

**Automatic Document Analysis and Visualization for Hypothesis Review Support**

This task was conducted in collaboration between Hallym University and HM Company. It involved the creation of a Hypothesis NLI Model based on KoElectra v3 (leap v.1.0), the automatic extraction of support, opposition, and inference-impossible relationships between investigative documents (judgments) and hypothesis sentences, as well as the development of a visualization and analysis tool for each data pair relationship.

The Analysis Visualization Tool for Investigative Judges currently retrieves pre-segmented paragraph-level data (investigation materials) from the database, divides the input text (investigator's materials) into sentence-level which utilizes it as an input for the Hypothesis NLI model. Then, it adds data from a new document to an existing graph that enables visual verification of the relationship between each document and the investigator's claim.

**Closing Remarks**
Through collaborative research discussions, we were able to successfully conclude the workshop. We thank the active participation and commitment to the success of this workshop, and are looking forward to engaging in productive discussions and establishing meaningful collaborations as we collectively work towards our research goals.

![workshopgroup](/img/news/workshop_group_photo.jpg)
