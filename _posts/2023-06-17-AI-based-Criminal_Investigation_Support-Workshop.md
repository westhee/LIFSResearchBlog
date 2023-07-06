---
layout: post
title: "Workshop on the Third-Year of AI Criminal Investigation Support Project"
author: 2022jeewon
icon: star-o
tags: [seminar, review]
---
Hallym University's Legal Informatics and Forensics Science (LIFS) lab , hosted a workshop on June 20th at the Ramada Plaza Jeju, Jeju Island, focusing on the research project "AI-based Criminal Investigation Support." The workshop brought together practitioners and officials from various collaborating institutions, including the Korean National Police University, SPELIX, NHN Diquest, Korea Electronics Technology Institute, and HM Company.

We were honored to have Mr. Choi Yang-hee, the President of Hallym University, as a special guest at the workshop. His presence added immense value to our discussions and further enriched the collaborative atmosphere among the participating institutions.

![workshop1](/img/news/workshop1.jpg)

The main objective of this workshop was to facilitate the exchange of valuable updates and advancements regarding the objectives and progress of the Third-Year of our research project. Additionally, we aimed to present significant research findings based on the objectives set for the Second-Year. Through engaging discussions and active participation, our goal was to foster collaborative solutions and enhance the effectiveness of our work.

![workshop2](/img/news/workshop_discussion1.jpg)

![workshop3](/img/news/workshop_discussion2.jpg)

Following the completion of the presentations, the participating institutions engaged in in-depth discussions. These discussions provided a platform for sharing the latest progress made by each institution, specifically in relation to the objectives set for the third year. The exchange of ideas and insights was accompanied by thought-provoking questions, contributing to a comprehensive understanding of the progress made by each institution and fostering an environment of shared knowledge.

### 1. Objectives of the Third-Year on "AI-based Criminal Investigation Support"

In the Third-Year, our primary objectives are centered around the "Advancement of Core Functions" to pave the way for the establishment of a Prototype-level System by the Fourth- Year. These objectives entail several key steps, including the initial integration of core technologies that enable target services and the commencement of integrated prototype development in close consultation with expert groups.

During this phase, our focus is on further enhancing and refining the core functionalities of our research project. We aim to incorporate and harmonize various technologies to ensure seamless operation and optimal performance of the target services. This involves carefully assessing the compatibility and effectiveness of the integrated technologies and making necessary adjustments to achieve the desired outcomes.

To achieve our goals, we recognize the importance of collaboration with expert groups. Their insights and expertise will be invaluable in guiding the prototype development process, ensuring that it aligns with industry standards and meets the requirements of criminal investigation support. Through their involvement, we aim to leverage their knowledge and experience to create a robust and efficient system.

### 2. Research Execution and Results of Hallym University

This section focused on the results of the Second-Years' research achievements of the LIFS lab, Hallym University

**Goal 1 : Automated Collection and Refinement of Judgments**

Hallym University presented their work on automating the collection of court judgments during the workshop.
The process involved converting PDF-formatted court judgment cases into TXT format using OCR (Optical Character Recognition), followed by structuring the data and converting it into and additional JSON format. The collected data is then utilized for various purposes, including judgment analysis, tool-based structural analysis, and model training.

As of now, a total of 72,132 cases have been collected and structured.

**Goal 2 : Building Criminal Information Ground Truth Set and Model Development**

This involves extracting word and phrase information from crime facts to enhance the analysis and investigation process. Initially, the GPT-3.5 API was utilized for the preliminary annotation of the data. Subsequently, a secondary annotation was performed using the annotation tool, Docanno. Through these annotation stages, a final golden dataset was constructed after undergoing a thorough final review.

Currently, the annotation process has been completed for 1,200 murder cases, specifically focusing on court decision documents. The project aims to expand this annotation effort to target a total of 2,600 cases.

The extracted information serves various purposes in the field of criminal investigation. One application involves conducting a similar case search based on the extracted information, which can provide valuable insights and assist in establishing connections between different cases. Additionally, the extracted information contributes to enhancing the completeness of investigation reports by providing additional details and context. Furthermore, the extraction of time-related information aids in constructing a comprehensive timeline of events, facilitating a better understanding of the sequence and chronology of the crime.

By leveraging the extracted information, the research project aims to improve the efficiency and effectiveness of investigations and contribute to the overall advancement of criminal analysis techniques.

##Goal 3 : Automatic Extraction of Argument Structure from Judgments

The task of "Automatic extraction of argument structure from judgments" is carried out through the following steps: automatic classification of argument elements based on KoBERT, automatic classification of argument relationships based on KLUE-BERT, and extraction and visualization of judgment argument structure based on classified argument elements and relationships.

The process of constructing an argument dataset based on the expanded Toulmin+ argument structure, which extends Toulmin's argument structure, has been carried out to automatically extract argument structures from criminal judgments by fine-tuning pre-trained language models (KoBERT, KLUE-BERT). Additionally, argument error checking has been performed through the generation and visualization of an argument dataset using the system. This development has future potential for applications such as searching for similar cases based on argument graphs.


##Goal 4 : Automatic Document Analysis and Visualization for Hypothesis Review Support 

This work involves the development of a Tool for Automatic Document Analysis and Visualization for Hypothesis Review Support, including the creation of a Hypothesis NLI Model based on KoElectra v3 (leap v.1.0), the automatic extraction of support/opposition/inference-impossible relationships between investigative documents (judgments) and hypothesis sentences, and the development of a visualization and analysis tool for each data pair relationship. It is a collaborative effort between HM COMPANY and Hallym University.

The Analysis Visualization Tool for Investigative Judges currently retrieves pre-segmented paragraph-level data (investigation materials) from the database, divides the input text (investigator's materials) into sentence-level, utilizes it as an input for the Hypothesis NLI model, adds data from a new document to an existing graph, and enables visual verification of the relationship between each document and the investigator's claim.

Furthermore, the Filter function, available by relationship/model score, includes the following capabilities: Attack relationship, which allows for preparation against the defendant's defense strategy; Undetermined relationship, which enables confirmation of irrelevant or missing core elements; and automatic analysis of the relationship between the investigator's opinion and investigation materials for initial verification.

We thank the active participation and commitment to the success of this workshop, and are looking forward to engaging in productive discussions and establishing meaningful collaborations as we collectively work towards our research goals.

![workshopgroup](/img/news/workshop_group_photo.jpg)
