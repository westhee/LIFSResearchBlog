---
layout: post
title: "Transformer-based Legal Argument Structure Extraction Model for Crime Investigation Analysis"
author: 2022jeewon
icon: star-o
tags: [news]
---
Ye-ri Gu, Department of International Studies, Major in Legal Informatics and Forensic Science (LIFS), at Hallym University Graduate School has published her Master's thesis paper, titled "Transformer-based Legal Argument Structure Extraction Model for Crime Investigation Analysis," .

This paper discusses the implementation of the revised Korean Criminal Procedure Act in 2020, which grants the police a subjective position in primary investigations and emphasizes the importance of their case review process. The revised legislation also strengthens the direct investigation of evidence in courts, requiring logical proof based on objective evidence. However, existing case analysis tools focus on evidence collection rather than logical verification. 

Therefore, the paper aims to develop an argument mining model that can extract argument components and classify the relationship between them, providing a quick and objective perspective for investigators. Transformer-based architectures, commonly used in natural language processing, are employed to enhance the model's performance. The study utilizes 256 criminal judgments to analyze argument components and relations based on the Toulmin+ argument model. 

The first task involves multi-classifying seven argument components using the Korean BERT model, which shows comparable performance to the Support Vector Machine. The second task uses the BertForMultipleChoice and KLUE BERT-base NLI models to extract related phrases and classify their relationships, demonstrating outstanding performance. Finally, the study proposes a system that visualizes argument structures through graph representations. 

The results reveal specific types of argument structures present in court decisions and demonstrate the effectiveness of the developed model. The findings have potential applications in artificial intelligence investigation systems, such as similar case retrieval, by utilizing the extracted argument graph embeddings through further technological advancements.

In conclusion, the analysis of the model errors revealed that the misclassifications primarily stemmed from the lack of contextual information. To address this issue, future research can focus on enhancing the models by incorporating the understanding of pronouns and conjunctions used in the text. Additionally, this paper proposes utilizing graph-based embeddings to develop a system capable of retrieving similar or opposite cases based on the argument graph's embedding values. These improvements hold promise for advancing the field of legal argument structure extraction.

![yeri_thesis](/img/news/yeri_thesis.png)