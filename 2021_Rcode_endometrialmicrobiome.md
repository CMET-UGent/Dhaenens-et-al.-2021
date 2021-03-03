---
title: "Amplicon Sequencing EDA report"
author: "CMET - Center for Microbial Ecology and Technology"
date: "January 15, 2021"
output:
  bookdown::html_document2: 
    code_folding: none
    css: /Projects1/Kim/2020_Verstraelen/raw_data/AmpliMET/dependencies/report_data.css
    fig_caption: yes
    highlight: espresso
    keep_md: yes
    number_sections: yes
    theme: united
    toc: yes
    toc_float:
      collapsed: no
      smooth_scroll: yes
      toc_depth: 2
editor_options: 
  chunk_output_type: console
bibliography: ref.bib
---






```
## [1] "you are using MOTHUR"
```

```
## [1] "I found a metadata file and will use it downstream."
```

```
##            Code    SampleName Fertility Type    PCR  ID
## 1      TAOBLK01      EF_BLK_1       BLK   EF normal BLK
## 2      TAOBLK02      EF_BLK_2       BLK   EF normal BLK
## 3         TAO01      EF_RIF_1       RIF   EF normal   1
## 4         TAO02      EF_RIF_2       RIF   EF normal   2
## 5         TAO03       EF_NF_1        NF   EF normal   1
## 6         TAO04       EF_NF_2        NF   EF normal   2
## 7         TAO05       EF_NF_3        NF   EF normal   3
## 8         TAO06      EF_RIF_3       RIF   EF normal   3
## 9         TAO07       EF_NF_4        NF   EF normal   4
## 10        TAO08       EF_NF_5        NF   EF normal   5
## 11        TAO09       EF_NF_6        NF   EF normal   6
## 12        TAO10       EF_NF_7        NF   EF normal   7
## 13        TAO11       EF_NF_8        NF   EF normal   8
## 14        TAO12      EF_RIF_4       RIF   EF normal   4
## 15        TAO13       EF_NF_9        NF   EF normal   9
## 16        TAO14      EF_RIF_5       RIF   EF normal   5
## 17   EswabBLK01      VS_BLK_1       BLK   VS normal BLK
## 18   EswabBLK02      VS_BLK_2       BLK   VS normal BLK
## 19      Eswab01      VS_RIF_1       RIF   VS normal   1
## 20      Eswab02      VS_RIF_2       RIF   VS normal   2
## 21      Eswab03       VS_NF_1        NF   VS normal   1
## 22      Eswab04       VS_NF_2        NF   VS normal   2
## 23      Eswab05       VS_NF_3        NF   VS normal   3
## 24      Eswab06      VS_RIF_3       RIF   VS normal   3
## 25      Eswab07       VS_NF_4        NF   VS normal   4
## 26      Eswab08       VS_NF_5        NF   VS normal   5
## 27      Eswab09       VS_NF_6        NF   VS normal   6
## 28      Eswab10       VS_NF_7        NF   VS normal   7
## 29      Eswab11       VS_NF_8        NF   VS normal   8
## 30      Eswab12      VS_RIF_4       RIF   VS normal   4
## 31      Eswab13       VS_NF_9        NF   VS normal   9
## 32      Eswab14      VS_RIF_5       RIF   VS normal   5
## 33 TAOBLKnest01 EF_BLK_nest_1       BLK   EF nested BLK
## 34 TAOBLKnest02 EF_BLK_nest_2       BLK   EF nested BLK
## 35    TAOnest01 EF_RIF_nest_1       RIF   EF nested   1
## 36    TAOnest02 EF_RIF_nest_2       RIF   EF nested   2
## 37    TAOnest03  EF_NF_nest_1        NF   EF nested   1
## 38    TAOnest04  EF_NF_nest_2        NF   EF nested   2
## 39    TAOnest05  EF_NF_nest_3        NF   EF nested   3
## 40    TAOnest06 EF_RIF_nest_3       RIF   EF nested   3
## 41    TAOnest07  EF_NF_nest_4        NF   EF nested   4
## 42    TAOnest08  EF_NF_nest_5        NF   EF nested   5
## 43    TAOnest09  EF_NF_nest_6        NF   EF nested   6
## 44    TAOnest10  EF_NF_nest_7        NF   EF nested   7
## 45    TAOnest11  EF_NF_nest_8        NF   EF nested   8
## 46    TAOnest12 EF_RIF_nest_4       RIF   EF nested   4
## 47    TAOnest13  EF_NF_nest_9        NF   EF nested   9
## 48    TAOnest14 EF_RIF_nest_5       RIF   EF nested   5
```

# Introduction

This report was automatically generated and is intended for you, as a researcher, to develop hypotheses based upon an initial *exploratory data analysis* (EDA).

# Data processing



Read assembly and cleanup was largely derived from the MiSeq SOP described by the Schloss lab (Schloss et al., 2011, Kozich et al., 2013).


# Clean-up

Prior to generating this report, an additional clean-up step was implemented. 
When the total amount of target over all samples was lower or equal to 1, the OTU was removed.



Table: (\#tab:Step2-Loading-data)Sequences retained during each step of the pipeline

|   |Row.names | contigs| ambiglen| screen| filter| vsearch| lineage|    OTU| OTU_filtered|
|:--|:---------|-------:|--------:|------:|------:|-------:|-------:|------:|------------:|
|7  |EF_NF_3   |    1031|      111|     41|     41|      41|      41|     41|           31|
|8  |EF_NF_4   |    1100|      341|    288|    288|     288|     286|    286|          277|
|9  |EF_NF_5   |    2706|     1107|    986|    986|     979|     979|    979|          974|
|10 |EF_NF_6   |    1724|      633|    562|    562|     562|     562|    562|          555|
|11 |EF_NF_7   |     674|      252|    219|    219|     219|     219|    219|          216|
|12 |EF_NF_8   |    2021|      547|    392|    392|     392|     392|    392|          385|
|13 |EF_NF_9   |     743|      142|     63|     63|      62|      62|     62|           59|
|23 |EF_RIF_1  |    3633|     1771|   1657|   1657|    1655|    1655|   1655|         1647|
|24 |EF_RIF_2  |    7689|     5781|   5686|   5686|    5558|    5538|   5538|         5502|
|25 |EF_RIF_3  |    1065|      221|    145|    145|     145|     145|    145|          138|
|26 |EF_RIF_4  |    1975|      258|    158|    158|     157|     150|    150|          143|
|27 |EF_RIF_5  |  175229|   149184| 148930| 148930|  148640|  148639| 148639|       148163|
|33 |VS_BLK_1  |      36|       30|     30|     30|      30|      30|     30|           NA|
|34 |VS_BLK_2  |      28|       15|     15|     15|      15|      15|     15|           NA|
|35 |VS_NF_1   |    4545|     3668|   3658|   3658|    3658|    3657|   3657|         3629|
|36 |VS_NF_2   |   18022|    13716|  13686|  13686|   13686|   13686|  13686|        13617|
|37 |VS_NF_3   |   11262|     9307|   9289|   9289|    9285|    9284|   9284|         9228|
|38 |VS_NF_4   |   28657|    23764|  23709|  23709|   23709|   23705|  23705|        23592|
|39 |VS_NF_5   |   47087|    36975|  36844|  36844|   34533|   34533|  34533|        34295|
|40 |VS_NF_6   |   22040|    18184|  18157|  18157|   18157|   18156|  18156|        18047|
|41 |VS_NF_7   |   31341|    23942|  23871|  23871|   23492|   23492|  23492|        23325|
|42 |VS_NF_8   |   17643|    14671|  14624|  14624|   14617|   14617|  14617|        14523|
|43 |VS_NF_9   |   17914|    14531|  14486|  14486|   14253|   14253|  14253|        14138|
|44 |VS_RIF_1  |   22134|    17902|  17874|  17874|   17723|   17722|  17722|        17614|
|45 |VS_RIF_2  |   32971|    26817|  26777|  26777|   26175|   26175|  26175|        26019|
|46 |VS_RIF_3  |   40898|    32934|  32907|  32907|   31908|   31908|  31908|        31762|
|47 |VS_RIF_4  |   20321|    16449|  16427|  16427|   16418|   16418|  16418|        16312|
|48 |VS_RIF_5  |   55960|    45497|  45439|  45439|   45411|   45410|  45410|        45162|

```
## [1] "contigs"      "ambiglen"     "screen"       "filter"       "vsearch"     
## [6] "lineage"      "OTU"          "OTU_filtered"
```

<img src="REPORT_versionKim_files/figure-html/Step2-Loading-data-1.png" width="100%" />

# Stacked bar plots
## Genus level


<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-genera-1.png" alt="Top  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective genus, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-genera-1)Top  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective genus, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-genera-2.png" alt="Top  13   OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective genus, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-genera-2)Top  13   OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective genus, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-genera-3.png" alt="Top  13 genera were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other genera were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-genera-3)Top  13 genera were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other genera were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-genera-4.png" alt="Top  13 genera were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other genera were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-genera-4)Top  13 genera were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other genera were labeled as 'Other'</p>
</div>
## Family level


<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-families-1.png" alt="Top  13  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-families-1)Top  13  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-families-2.png" alt="Top  13  OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-families-2)Top  13  OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-families-3.png" alt="Top  13 families were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other families were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-families-3)Top  13 families were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other families were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3-Stacked-bar-plots-families-4.png" alt="Top  13 families were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other families were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3-Stacked-bar-plots-families-4)Top  13 families were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other families were labeled as 'Other'</p>
</div>

## Order level


<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-orders-1.png" alt="Top  13  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-orders-1)Top  13  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-orders-2.png" alt="Top  13  OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-orders-2)Top  13  OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective family, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-orders-3.png" alt="Top  13 orders were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other orders were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-orders-3)Top  13 orders were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other orders were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-orders-4.png" alt="Top  13 orders were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other orders were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-orders-4)Top  13 orders were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other orders were labeled as 'Other'</p>
</div>


## Phylum level



<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-phyla-1.png" alt="Top  13  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective phyla, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-phyla-1)Top  13  OTU s were calculated based on their combined absolute read count across all samples and labeled with their respective phyla, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-phyla-2.png" alt="Top  13  OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective phyla, all other  OTU s were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-phyla-2)Top  13  OTU s were calculated based on their combined relative abundance across all samples and labeled with their respective phyla, all other  OTU s were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-phyla-3.png" alt="Top  13 orders were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other orders were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-phyla-3)Top  13 orders were calculated based on their combined absolute read count across all samples and plotted as  OTU s, all other orders were labeled as 'Other'</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step3b-Stacked-bar-plots-phyla-4.png" alt="Top  13 orders were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other orders were labeled as 'Other'" width="100%" />
<p class="caption">(\#fig:Step3b-Stacked-bar-plots-phyla-4)Top  13 orders were calculated based on their combined relative abundance across all samples and plotted as  OTU s, all other orders were labeled as 'Other'</p>
</div>
# Heatmaps

Heatmaps are made to represent the community diversity of the most important OTU's.



<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step4-Heatmaps-1.png" alt="Heatmap of top 30  OTU s in absolute read count" width="100%" />
<p class="caption">(\#fig:Step4-Heatmaps-1)Heatmap of top 30  OTU s in absolute read count</p>
</div>

|        |Kingdom  |Phylum         |Class               |Order               |Family               |Genus                 |
|:-------|:--------|:--------------|:-------------------|:-------------------|:--------------------|:---------------------|
|Otu0001 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0002 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0003 |Bacteria |Firmicutes     |Clostridia          |Clostridiales       |Lachnospiraceae      |BVAB1                 |
|Otu0004 |Bacteria |Actinobacteria |Actinobacteria_c    |Bifidobacteriales   |Bifidobacteriaceae   |Gardnerella           |
|Otu0005 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0006 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0007 |Bacteria |Bacteroidetes  |Bacteroidia         |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0008 |Bacteria |Firmicutes     |Negativicutes       |Veillonellales      |Veillonellaceae      |Megasphaera           |
|Otu0009 |Bacteria |Actinobacteria |Actinobacteria_c    |Propionibacteriales |Propionibacteriaceae |Cutibacterium         |
|Otu0011 |Bacteria |Actinobacteria |Coriobacteriia      |Coriobacteriales    |Coriobacteriaceae    |Atopobium             |
|Otu0012 |Bacteria |Fusobacteria   |Fusobacteria_c      |Fusobacteriales     |Leptotrichiaceae     |Sneathia              |
|Otu0013 |Bacteria |Bacteroidetes  |Bacteroidia         |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0014 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Streptococcaceae     |Streptococcus         |
|Otu0015 |Bacteria |Bacteroidetes  |Bacteroidia         |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0016 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Streptococcaceae     |Streptococcus         |
|Otu0017 |Bacteria |Firmicutes     |Negativicutes       |Veillonellales      |Veillonellaceae      |Dialister             |
|Otu0018 |Bacteria |Actinobacteria |Actinobacteria_c    |Micrococcales       |Micrococcaceae       |Micrococcus           |
|Otu0019 |Bacteria |Bacteroidetes  |Bacteroidia         |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0020 |Bacteria |Fusobacteria   |Fusobacteria_c      |Fusobacteriales     |Leptotrichiaceae     |Sneathia              |
|Otu0022 |Bacteria |Actinobacteria |Actinobacteria_c    |Bifidobacteriales   |Bifidobacteriaceae   |Bifidobacterium       |
|Otu0024 |Bacteria |Actinobacteria |Coriobacteriia      |Coriobacteriales    |Coriobacteriaceae    |KQ959671_g            |
|Otu0027 |Bacteria |Proteobacteria |Gammaproteobacteria |Pasteurellales      |Pasteurellaceae      |Haemophilus           |
|Otu0028 |Bacteria |Firmicutes     |Clostridia          |Clostridiales       |Clostridiaceae       |Clostridium           |
|Otu0029 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Aerococcaceae        |Aerococcus            |
|Otu0038 |Bacteria |Firmicutes     |Negativicutes       |Veillonellales      |Veillonellaceae      |Veillonella           |
|Otu0041 |Bacteria |Firmicutes     |Tissierellia        |Tissierellales      |Peptoniphilaceae     |Peptoniphilus         |
|Otu0053 |Bacteria |Firmicutes     |Clostridia          |Clostridiales       |Clostridiaceae       |Clostridium           |
|Otu0056 |Bacteria |Firmicutes     |Erysipelotrichi     |Erysipelotrichales  |Erysipelotrichaceae  |Clostridium_g6        |
|Otu0057 |Bacteria |Firmicutes     |Negativicutes       |Acidaminococcales   |Acidaminococcaceae   |Phascolarctobacterium |
|Otu0062 |Bacteria |Firmicutes     |Bacilli             |Lactobacillales     |Streptococcaceae     |Streptococcus         |

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step4-Heatmaps-2.png" alt="Heatmap of top 30  OTU s in relative abundance" width="100%" />
<p class="caption">(\#fig:Step4-Heatmaps-2)Heatmap of top 30  OTU s in relative abundance</p>
</div>

|        |Kingdom  |Phylum         |Class            |Order               |Family               |Genus                 |
|:-------|:--------|:--------------|:----------------|:-------------------|:--------------------|:---------------------|
|Otu0001 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0002 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0003 |Bacteria |Firmicutes     |Clostridia       |Clostridiales       |Lachnospiraceae      |BVAB1                 |
|Otu0004 |Bacteria |Actinobacteria |Actinobacteria_c |Bifidobacteriales   |Bifidobacteriaceae   |Gardnerella           |
|Otu0005 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0006 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Lactobacillaceae     |Lactobacillus         |
|Otu0007 |Bacteria |Bacteroidetes  |Bacteroidia      |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0008 |Bacteria |Firmicutes     |Negativicutes    |Veillonellales      |Veillonellaceae      |Megasphaera           |
|Otu0009 |Bacteria |Actinobacteria |Actinobacteria_c |Propionibacteriales |Propionibacteriaceae |Cutibacterium         |
|Otu0010 |Bacteria |Actinobacteria |Actinobacteria_c |Micrococcales       |Microbacteriaceae    |Microbacterium        |
|Otu0011 |Bacteria |Actinobacteria |Coriobacteriia   |Coriobacteriales    |Coriobacteriaceae    |Atopobium             |
|Otu0012 |Bacteria |Fusobacteria   |Fusobacteria_c   |Fusobacteriales     |Leptotrichiaceae     |Sneathia              |
|Otu0013 |Bacteria |Bacteroidetes  |Bacteroidia      |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0014 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Streptococcaceae     |Streptococcus         |
|Otu0016 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Streptococcaceae     |Streptococcus         |
|Otu0018 |Bacteria |Actinobacteria |Actinobacteria_c |Micrococcales       |Micrococcaceae       |Micrococcus           |
|Otu0019 |Bacteria |Bacteroidetes  |Bacteroidia      |Bacteroidales       |Prevotellaceae       |Prevotella            |
|Otu0021 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Streptococcaceae     |Streptococcus         |
|Otu0028 |Bacteria |Firmicutes     |Clostridia       |Clostridiales       |Clostridiaceae       |Clostridium           |
|Otu0029 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Aerococcaceae        |Aerococcus            |
|Otu0034 |Bacteria |Firmicutes     |Bacilli          |Bacillales          |Staphylococcaceae    |Staphylococcus        |
|Otu0047 |Bacteria |Actinobacteria |Actinobacteria_c |Corynebacteriales   |Corynebacteriaceae   |Corynebacterium       |
|Otu0053 |Bacteria |Firmicutes     |Clostridia       |Clostridiales       |Clostridiaceae       |Clostridium           |
|Otu0056 |Bacteria |Firmicutes     |Erysipelotrichi  |Erysipelotrichales  |Erysipelotrichaceae  |Clostridium_g6        |
|Otu0057 |Bacteria |Firmicutes     |Negativicutes    |Acidaminococcales   |Acidaminococcaceae   |Phascolarctobacterium |
|Otu0062 |Bacteria |Firmicutes     |Bacilli          |Lactobacillales     |Streptococcaceae     |Streptococcus         |
|Otu0122 |Bacteria |Firmicutes     |Bacilli          |Bacillales          |Staphylococcaceae    |Staphylococcus        |
|Otu0143 |Bacteria |Actinobacteria |Actinobacteria_c |Micrococcales       |Dermabacteraceae     |Brachybacterium       |
|Otu0224 |Bacteria |Firmicutes     |Clostridia       |Clostridiales       |Ruminococcaceae      |Faecalibacterium      |
|Otu0720 |Bacteria |Bacteroidetes  |Bacteroidia      |Bacteroidales       |Porphyromonadaceae   |Porphyromonas         |

# Rarefaction curves

For appropriate sampling depth, curves should "level off". Do note that data filtering may have an impact on this result.



<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step4-Rarefaction-curves-1.png" alt="Rarefaction after quality filtering and processing with MOTHUR" width="100%" />
<p class="caption">(\#fig:Step4-Rarefaction-curves)Rarefaction after quality filtering and processing with MOTHUR</p>
</div>

# Alpha diversity
## Diversity metrics
Diversity metrics Shannon and Simpson are reported below.


Table: (\#tab:Step4-Alpha-Diversity)Richness estimators

|         |   Shannon|   Simpson| InvSimpson|
|:--------|---------:|---------:|----------:|
|VS_RIF_1 | 0.2222057| 0.0961526|   1.106381|
|VS_RIF_2 | 0.5036616| 0.3017827|   1.432219|
|VS_NF_1  | 0.6741446| 0.3926866|   1.646596|
|VS_NF_2  | 0.0736964| 0.0152148|   1.015450|
|VS_NF_3  | 0.0514290| 0.0112341|   1.011362|
|VS_RIF_3 | 0.5333325| 0.3113634|   1.452145|
|VS_NF_4  | 0.0439444| 0.0081215|   1.008188|
|VS_NF_5  | 2.0423724| 0.7850984|   4.653293|
|VS_NF_6  | 0.0388178| 0.0071902|   1.007242|
|VS_NF_7  | 0.8734263| 0.5210887|   2.088070|
|VS_NF_8  | 0.1910589| 0.0563391|   1.059703|
|VS_RIF_4 | 0.2477179| 0.0840431|   1.091754|
|VS_NF_9  | 1.5883020| 0.5647382|   2.297468|
|VS_RIF_5 | 0.0940673| 0.0229399|   1.023478|
|EF_RIF_1 | 0.3629418| 0.1723197|   1.208196|
|EF_RIF_2 | 1.4197001| 0.5824136|   2.394714|
|EF_NF_1  | 1.8224567| 0.7700831|   4.349398|
|EF_NF_2  | 0.4680409| 0.1620643|   1.193409|
|EF_NF_3  | 1.7746152| 0.7242456|   3.626415|
|EF_RIF_3 | 1.3175215| 0.5022054|   2.008861|
|EF_NF_4  | 1.5621417| 0.6614188|   2.953501|
|EF_NF_5  | 2.3493650| 0.8507225|   6.698932|
|EF_NF_6  | 0.1960782| 0.0567097|   1.060119|
|EF_NF_7  | 1.3326196| 0.5643433|   2.295385|
|EF_NF_8  | 1.1550137| 0.5799022|   2.380398|
|EF_RIF_4 | 2.0112493| 0.7620911|   4.203289|
|EF_NF_9  | 2.2889720| 0.8560758|   6.948104|
|EF_RIF_5 | 0.0967984| 0.0283211|   1.029146|

<img src="REPORT_versionKim_files/figure-html/Step4-Alpha-Diversity-1.png" width="100%" /><img src="REPORT_versionKim_files/figure-html/Step4-Alpha-Diversity-2.png" width="100%" /><img src="REPORT_versionKim_files/figure-html/Step4-Alpha-Diversity-3.png" width="100%" /><img src="REPORT_versionKim_files/figure-html/Step4-Alpha-Diversity-4.png" width="100%" /><img src="REPORT_versionKim_files/figure-html/Step4-Alpha-Diversity-5.png" width="100%" /><img src="REPORT_versionKim_files/figure-html/Step4-Alpha-Diversity-6.png" width="100%" />

# Beta diversity

## Basic ordination

This is on the raw, unnormalized counts (but given the large differences in sampling depth, the proportional data should be used - repeated see below)



<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step5-Beta-Diversity-1.png" alt="Ordination on OTU level" width="100%" />
<p class="caption">(\#fig:Step5-Beta-Diversity-1)Ordination on OTU level</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step5-Beta-Diversity-2.png" alt="Ordination on OTU level" width="100%" />
<p class="caption">(\#fig:Step5-Beta-Diversity-2)Ordination on OTU level</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step5-Beta-Diversity-3.png" alt="Ordination on Genus level" width="100%" />
<p class="caption">(\#fig:Step5-Beta-Diversity-3)Ordination on Genus level</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step5-Beta-Diversity-4.png" alt="Ordination on Genus level" width="100%" />
<p class="caption">(\#fig:Step5-Beta-Diversity-4)Ordination on Genus level</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step5-Beta-Diversity-5.png" alt="Ordination on Phylum level" width="100%" />
<p class="caption">(\#fig:Step5-Beta-Diversity-5)Ordination on Phylum level</p>
</div><div class="figure">
<img src="REPORT_versionKim_files/figure-html/Step5-Beta-Diversity-6.png" alt="Ordination on Phylum level" width="100%" />
<p class="caption">(\#fig:Step5-Beta-Diversity-6)Ordination on Phylum level</p>
</div>


# 2021 KIM

Extra analyses were performed as discussed during the previous meeting. All figures can be provided as high resolution tiffs with lzw compression for publication purposes. The sample names were adjusted as requested. A unique identifier was introduced (subject ID 1-14) as every subject belonged either to the NF or to the RIF group and using identifiers 1-5 twice in both groups was confusing and interfered with the multivariate analysis procedures.

Except for the alpha-diversity and Sparse Partial Least Squares Discriminant Analysis, the data was filtered according to the arbitrary cut-offs described by McMurdie and Holmes (2014) and normalized to proportions to deal with differences in sampling depth [@McMurdie2014]. 

## Alpha-diversity 

### Detailed explanation
Species richness and diversity were estimated by calculating Hill numbers using the iNEXT package version \Sexpr{packageVersion("iNEXT")} developed for microbial ecology data [@Chiu2016;@Chao2014;@Colwell2012]. The basic principle behind richness and diversity estimators, is to use rare species e.g. singletons (reads observed just once in a sample) and doubletons (reads observed just twice in a sample), to estimate the unobserved true diversity. The iNEXT package differs from the common macro-ecology approach by using the Good-Turing frequency model to estimate the true singleton abundance based on the frequency of doubletons, tripletons ans quadrupletons. This is required because next-generation amplicon sequencing results in many spurious singletons emerging from sequencing errors. A boostrap method (50 iterations) was used to calculate 95% confidence intervals of all the richness and diversity estimates. Since extrapolation is not accurate beyond two times the sample size, samples were normalized to the maximal extrapolated sample coverage achieved in the most shallow sequenced sample to compare the Hill numbers calculated according to Chao _et al._, 2014 [@Chao2014]. Hill number 0, 1 and 2 correspond to respectively the richness, the Shannon and the Inverse Simpson index. Non-overlapping 95% bootstrap confidence intervals indicate statistically significant Hill numbers, whereas an overlap does not necessarily imply non-significance. 

### Materials and methods 
Species richness and diversity were estimated by calculating Hill numbers using the iNEXT package version 2.0.20 developed for microbial ecology data [@Chiu2016;@Chao2014;@Colwell2012]. A boostrap method (50 iterations) was used to calculate 95% confidence intervals of all the richness and diversity estimates. Since extrapolation is not accurate beyond two times the sample size, samples were normalized to the maximum extrapolated sample coverage achieved in the most shallow sequenced sample to compare the Hill numbers calculated according to Chao _et al._, 2014 [@Chao2014]. Samples EF_NF_1, EF_NF_2, EF_NF_3 and EF_NF_9 were omitted due to low sample coverages, corresponding to low read numbers (<100). Hill number 0, 1 and 2 correspond to respectively the richness, the Shannon and the Inverse Simpson index. Non-overlapping 95% bootstrap confidence intervals indicate statistically significant Hill numbers, whereas an overlap does not necessarily imply non-significance. Significant differences in Hill numbers between Sample types (Vaginal Secretions and Endometrial Fluid) and Fertility status (Normal Fertility versus Repeated Implantation Failure) were assessed based on Krusal-Wallis Rank Sum Tests.

### Results 

```r
p <- ggplot() + theme_void()
papertheme(p,sizeselect=12)
```

```r
papertheme(ggplot() + theme_void(),sizeselect=12)
```






```r
# Remove blank and nested PCR samples 
tab.phy <- phyloseq::otu_table(tab, taxa_are_rows = TRUE)
tax.phy <- phyloseq::tax_table(as.matrix(tax.clean))
sam.phy <- phyloseq::sample_data(metadata)
phylobj_unfiltered <- phyloseq(tab.phy,tax.phy, sam.phy, fas.phy)
phylobj_unfiltered  <- subset_taxa(phylobj_unfiltered,Kingdom %in% targetspecies)
phylobj_unfiltered  = subset_samples(phylobj_unfiltered,PCR != "nested")
phylobj_unfiltered  = subset_samples(phylobj_unfiltered,ID != "BLK")
tab.sampleselect = data.frame(otu_table(phylobj_unfiltered))

set.seed=711

cl <- parallel::makeCluster(30,outfile="")
detectCores()
#registerDoParallel(cl)
registerDoSNOW(cl)

icov <- foreach(i=1:ncol(tab.sampleselect),.packages="iNEXT",.export="iNEXT") %dopar% 
  { setTxtProgressBar(txtProgressBar(min = 1, max = ncol(tab.sampleselect), style = 3), i)
    print(i)
    iNEXT(tab.sampleselect[,i],q=0,datatype="abundance")
      }
icov
stopCluster(cl)

icov_list <- lapply(icov,function(x) {fortify(x,type=1)})
icov_df <- rbindlist(icov_list,idcol=TRUE)
icov_df$site <- icov_df$.id
icov_df <- icov_df[,-1] 
icov_df$site <- as.character(icov_df$site)

sizerare <- ggiNEXT_df(data.frame(icov_df),se=FALSE,type=1,grey=FALSE,color.var="site",pointsize=1,linesize=0.5) +scale_shape_manual(values=rep(19,177)) + guides(color=FALSE,shape=FALSE,fill=FALSE)

icov_list <- lapply(icov,function(x) {fortify(x,type=3)})
icov_df <- rbindlist(icov_list,idcol=TRUE)
icov_df$site <- icov_df$.id
icov_df <- icov_df[,-1] 
icov_df$site <- as.character(icov_df$site)

covrare <- ggiNEXT_df(data.frame(icov_df),se=FALSE,type=3,grey=FALSE,color.var="site",pointsize=1,linesize=0.5) +scale_shape_manual(values=rep(19,177)) + guides(color=FALSE,shape=FALSE,fill=FALSE)

plot_grid(papertheme(sizerare,12),papertheme(covrare,12),ncol=2,nrow=1,rel_widths = c(0.5,0.5),rel_heights = c(0.5,0.5),labels="AUTO")
```

<div class="figure" style="text-align: center">
<img src="REPORT_versionKim_files/figure-html/Sample-coverage-based-rarefaction-curves-16S-rRNA-gene-sequencing-data-selected-samples-1.png" alt="Size (A) and Coverage (B) sample-based rarefaction curves of the unfiltered 16S rRNA gene sequence count data. The colors represent different samples." width="90%" height="100%" />
<p class="caption">(\#fig:Sample-coverage-based-rarefaction-curves-16S-rRNA-gene-sequencing-data-selected-samples)Size (A) and Coverage (B) sample-based rarefaction curves of the unfiltered 16S rRNA gene sequence count data. The colors represent different samples.</p>
</div>


```r
# Range of the sample coverage of samples
p <- ggplot(icov_df[method=="observed"],aes(x="Site",y=x,color=site)) + geom_jitter(position=position_jitter(width=.5, height=0),size=2) + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2) 
p <- papertheme(p,sizeselect=8) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1))
p <- p + ylab("Sample Coverage") + xlab("") + theme(legend.position = "none")
p
```

<div class="figure" style="text-align: center">
<img src="REPORT_versionKim_files/figure-html/Sample-coverage-of-the-16S-rRNA-gene-sequencing-data-selected-samples-1.png" alt="Observed sample coverage across all samples. The colors represent different samples." width="60%" height="40%" />
<p class="caption">(\#fig:Sample-coverage-of-the-16S-rRNA-gene-sequencing-data-selected-samples)Observed sample coverage across all samples. The colors represent different samples.</p>
</div>

```r
# very low coverage corresponds to extremely low read counts
colSums(tab.sampleselect)
```

Sample EF_NF_1, EF_NF_2, EF_NF_3 and EF_NF_9 had very low sample coverages (\@ref(fig:Sample-coverage-of-the-16S-rRNA-gene-sequencing-data-selected-samples)), corresponding to very low read numbers. They were removed for further alpha-diversity analysis. 


```r
# Remove sample site 17,18,19 and 27
phylobj_unfiltered  = subset_samples(phylobj_unfiltered ,SampleName!="EF_NF_1")
phylobj_unfiltered  = subset_samples(phylobj_unfiltered ,SampleName!="EF_NF_2")
phylobj_unfiltered  = subset_samples(phylobj_unfiltered ,SampleName!="EF_NF_3")
phylobj_unfiltered  = subset_samples(phylobj_unfiltered ,SampleName!="EF_NF_9")
tab.sampleselect = data.frame(otu_table(phylobj_unfiltered ))

# Identify the sample with the minimal sample coverage in the rarefaction part of the curve
SCmin_extrapolate <- icov_df[method=="extrapolated",] %>% dplyr::group_by(site) %>% subset(site!=17&site!=18&site!=19&site!=27) %>% dplyr::summarise(maxSC = max(x)) %>%  arrange(site) %>% summarise(minofmax = min(maxSC))
SCmin_extrapolate <- SCmin_extrapolate[[1]]

cl <- parallel::makeCluster(30,outfile="")
detectCores()
#registerDoParallel(cl)
registerDoSNOW(cl)

Hill_equalSC_extrapolate <- foreach(i=1:ncol(tab.sampleselect),.packages="iNEXT",.export="iNEXT") %dopar% 
  { setTxtProgressBar(txtProgressBar(min = 1, max = ncol(tab.sampleselect), style = 3), i)
    print(i)
    estimateD(as.vector(tab.sampleselect[,i]),datatype="abundance",base="coverage",level=SCmin_extrapolate,conf=0.95)
      }
Hill_equalSC_extrapolate
stopCluster(cl)

Hill_equalSC_extrapolate_list <- lapply(Hill_equalSC_extrapolate,function(x) {fortify(x)})
Hill_equalSC_extrapolate_df <- rbindlist(Hill_equalSC_extrapolate_list,idcol=TRUE)
Hill_equalSC_extrapolate_df$site <- Hill_equalSC_extrapolate_df$.id
Hill_equalSC_extrapolate_df <- Hill_equalSC_extrapolate_df[,-1] 
Hill_equalSC_extrapolate_df$site <- as.character(Hill_equalSC_extrapolate_df$site)
Hill_equalSC_extrapolate_df$SampleName <- mapvalues(Hill_equalSC_extrapolate_df$site,from=c(1:ncol(tab.sampleselect)),to=c(colnames(tab.sampleselect))) 

Hill_equalSC_extrapolate_df <- join(Hill_equalSC_extrapolate_df,metadata,by="SampleName",type="left")

write.table(Hill_equalSC_extrapolate_df,paste0("REPORT_files/","Hill_equalSC_extrapolate_df.txt"),row.names=TRUE)
```
 

```r
# Hill 0
     Hill_equalSC_extrapolate_df0 <- Hill_equalSC_extrapolate_df
     Hill_equalSC_extrapolate_df0_stat <- Hill_equalSC_extrapolate_df0 %>% subset(order=="0")
     write.table(Hill_equalSC_extrapolate_df0_stat,paste0("REPORT_files/","Hill_equalSC_extrapolate_df.txt"),row.names = TRUE)

     fertility_stat <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df0_stat$qD,Hill_equalSC_extrapolate_df0_stat$Fertility,padj="holm")$letters),letters,sep=" ")$letters)
```

```r
     type_stat <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df0_stat$qD,Hill_equalSC_extrapolate_df0_stat$Type,padj="holm")$letters),letters,sep=" ")$letters)
```

```r
     fertility_type <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df0_stat$qD,Hill_equalSC_extrapolate_df0_stat$TypeFertility,padj="holm",minobs=2)$letters),letters,sep=" ")$letters)
```

```r
     maxqD <- aggregate(Hill_equalSC_extrapolate_df0_stat%>% subset(order=="0") %>% dplyr::select("qD"),by=list(Hill_equalSC_extrapolate_df0_stat$Type,Hill_equalSC_extrapolate_df0_stat$Fertility),max) 
     colnames(maxqD) <- c("Type","Fertility","qD")
     maxqD <- maxqD[,colnames(maxqD)%in%c(colnames(metadata),"qD")]
    #maxqD$PPI_arm <- paste0(maxqD$PPI_arm,"PPI")
     maxqD <- join(x= maxqD, y = metadata,type="right")
     maxqD <- na.omit(maxqD)
     maxqD$letters <- mapvalues(maxqD$TypeFertility,from=data.frame(univariatestat(Hill_equalSC_extrapolate_df0_stat$qD,Hill_equalSC_extrapolate_df0_stat$TypeFertility,padj="holm",minobs=2)$letters)$rowname,to=data.frame(univariatestat(Hill_equalSC_extrapolate_df0_stat$qD,Hill_equalSC_extrapolate_df0_stat$TypeFertility,padj="holm",minobs=2)$letters)$letters)
```

```r
     maxqD$Type <- mapvalues(maxqD$Type,from=levels(factor(maxqD$Type)),to=type_stat)
     maxqD$Fertility <- mapvalues(maxqD$Fertility,from=levels(factor(maxqD$Fertility)),to=fertility_stat)
     maxqD$Type <- factor(maxqD$Type,levels=c("EF a","VS b"))
     maxqD$Fertility <- factor(maxqD$Fertility,levels=c("NF a","RIF a"))
     
     Hill_equalSC_extrapolate_df0$Type <- mapvalues(Hill_equalSC_extrapolate_df0$Type,from=levels(factor(Hill_equalSC_extrapolate_df0$Type)),to=type_stat)
     Hill_equalSC_extrapolate_df0$Fertility <- mapvalues(Hill_equalSC_extrapolate_df0$Fertility,from=levels(factor(Hill_equalSC_extrapolate_df0$Fertility)),to=fertility_stat)
     Hill_equalSC_extrapolate_df0$Type <- factor(Hill_equalSC_extrapolate_df0$Type,levels=c("EF a","VS b"))
     Hill_equalSC_extrapolate_df0$Fertility <- factor(Hill_equalSC_extrapolate_df0$Fertility,levels=c("NF a","RIF a"))
     
   
## Plotting
    boxp_Type <- ggplot(data= Hill_equalSC_extrapolate_df0 %>% subset(order=="0"),aes(y=factor(Type,levels=rev(levels(Type))),x=qD)) + geom_pointrange(aes(xmin=qD.LCL,xmax=qD.UCL,colour=IDunique),position=position_jitter(width=0,height=0.2),size=0.05)  + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2)
    boxp_Type <- papertheme(boxp_Type,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1),axis.text.y = element_blank()) + scale_colour_manual(name='',values=ID_14)
    boxp_Type <- boxp_Type + xlab(substitute(paste("",H[0]," at SC","=",SC),list(SC=round(SCmin_extrapolate,2)))) + ylab("") + theme(legend.position = "none")+  theme(plot.margin = unit(c(0,0,0,0), "cm"))
   
    boxp_Fertility <- ggplot(data= Hill_equalSC_extrapolate_df0 %>% subset(order=="0"),aes(x=Fertility,y=qD)) + geom_pointrange(aes(ymin=qD.LCL,ymax=qD.UCL,colour=IDunique),position=position_jitter(width=0.2,height=0),size=0.05)  + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2)
    boxp_Fertility <- papertheme(boxp_Fertility,sizeselect=12) + theme(strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1),axis.text.x = element_blank()) + scale_colour_manual(name='',values= ID_14)
    boxp_Fertility <- boxp_Fertility + ylab(substitute(paste("",H[0]," at SC","=",SC),list(SC=round(SCmin_extrapolate,2)))) + xlab("") + theme(legend.position = "none")+    theme(plot.margin = unit(c(0,0,0,0), "cm"))
    
    subject_p <- ggplot(data= Hill_equalSC_extrapolate_df0 %>% subset(order=="0"),aes(x=IDunique,y=qD))
    subject_p <- subject_p + geom_point(aes(colour=IDunique),size=1)  + facet_grid(Type~Fertility,scales="free",space="free_x")
    subject_p <- subject_p + geom_errorbar(aes(x=IDunique,ymin=qD.LCL,ymax=qD.UCL ,color=IDunique),width=0.002)
    #subject_p <-  subject_p + geom_text(data=maxqD,aes(x=5,y= max(qD)+max(qD)/10,label=letters),size=2)
    #subject_p <- subject_p + geom_text_repel(aes(label=ID),size=2)
    subject_p <- papertheme(subject_p,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1)) +scale_colour_manual(name='',values=ID_14)
    subject_p <- subject_p+ ylab(substitute(paste("",H[0]," Richness at extrapolated sample coverage","=",SC),list(SC=round(SCmin_extrapolate,2)))) + xlab("Subject ID") + theme(plot.margin = unit(c(0,0,0,0), "cm"))
    subject_p <- subject_p + theme(legend.position="none")
    subject_p <- OverlappingStripLabels(subject_p)
```

```r
    boxp_subject_combo <- plot_grid(boxp_Fertility,NULL,NULL,NULL,NULL,NULL,subject_p,NULL,boxp_Type ,ncol=3,nrow=3,rel_widths=c(0.8,0,0.2),rel_heights = c(0.3,0,0.7),align="vh",axis="lbtr")
```


```r
boxp_subject_combo
```

<div class="figure" style="text-align: center">
<img src="REPORT_versionKim_files/figure-html/Extrapolated-richness-16S-rRNA-gene-sequencing-data-plotting-1.png" alt="Extrapolated richness across Sample types (EF-VS) and Fertility status (NF-RIF). Identical letters indicate no statistically significant differences (p&gt;0.05) as determined by Kruskal-Wallis Rank Sum Tests. 95\% bootstrap confidence intervals are shown as error bars." width="90%" height="90%" />
<p class="caption">(\#fig:Extrapolated-richness-16S-rRNA-gene-sequencing-data-plotting)Extrapolated richness across Sample types (EF-VS) and Fertility status (NF-RIF). Identical letters indicate no statistically significant differences (p>0.05) as determined by Kruskal-Wallis Rank Sum Tests. 95\% bootstrap confidence intervals are shown as error bars.</p>
</div>

```r
tiff("./Figures_Kim/Richness.tiff",width=14*dpi,height=10*dpi,res=dpi,compression="lzw")
boxp_subject_combo
dev.off()
```


```r
# Hill 1
     Hill_equalSC_extrapolate_df1 <- Hill_equalSC_extrapolate_df
     Hill_equalSC_extrapolate_df1_stat <- Hill_equalSC_extrapolate_df1 %>% subset(order=="1")
     write.table(Hill_equalSC_extrapolate_df1_stat,paste0("REPORT_files/","Hill_equalSC_extrapolate_df.txt"),row.names = TRUE)

     fertility_stat <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df1_stat$qD,Hill_equalSC_extrapolate_df1_stat$Fertility,padj="holm")$letters),letters,sep=" ")$letters)
```

```r
     type_stat <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df1_stat$qD,Hill_equalSC_extrapolate_df1_stat$Type,padj="holm")$letters),letters,sep=" ")$letters)
```

```r
     fertility_type <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df1_stat$qD,Hill_equalSC_extrapolate_df1_stat$TypeFertility,padj="holm",minobs=2)$letters),letters,sep=" ")$letters)
```

```r
     maxqD <- aggregate(Hill_equalSC_extrapolate_df1_stat%>% subset(order=="1") %>% dplyr::select("qD"),by=list(Hill_equalSC_extrapolate_df1_stat$Type,Hill_equalSC_extrapolate_df1_stat$Fertility),max) 
     colnames(maxqD) <- c("Type","Fertility","qD")
     maxqD <- maxqD[,colnames(maxqD)%in%c(colnames(metadata),"qD")]
    #maxqD$PPI_arm <- paste0(maxqD$PPI_arm,"PPI")
     maxqD <- join(x= maxqD, y = metadata,type="right")
     maxqD <- na.omit(maxqD)
     maxqD$letters <- mapvalues(maxqD$TypeFertility,from=data.frame(univariatestat(Hill_equalSC_extrapolate_df1_stat$qD,Hill_equalSC_extrapolate_df1_stat$TypeFertility,padj="holm",minobs=2)$letters)$rowname,to=data.frame(univariatestat(Hill_equalSC_extrapolate_df1_stat$qD,Hill_equalSC_extrapolate_df1_stat$TypeFertility,padj="holm",minobs=2)$letters)$letters)
```

```r
     maxqD$Type <- mapvalues(maxqD$Type,from=levels(factor(maxqD$Type)),to=type_stat)
     maxqD$Fertility <- mapvalues(maxqD$Fertility,from=levels(factor(maxqD$Fertility)),to=fertility_stat)
     maxqD$Type <- factor(maxqD$Type,levels=c("EF a","VS b"))
     maxqD$Fertility <- factor(maxqD$Fertility,levels=c("NF a","RIF a"))
     
     Hill_equalSC_extrapolate_df1$Type <- mapvalues(Hill_equalSC_extrapolate_df1$Type,from=levels(factor(Hill_equalSC_extrapolate_df1$Type)),to=type_stat)
     Hill_equalSC_extrapolate_df1$Fertility <- mapvalues(Hill_equalSC_extrapolate_df1$Fertility,from=levels(factor(Hill_equalSC_extrapolate_df1$Fertility)),to=fertility_stat)
     Hill_equalSC_extrapolate_df1$Type <- factor(Hill_equalSC_extrapolate_df1$Type,levels=c("EF a","VS b"))
     Hill_equalSC_extrapolate_df1$Fertility <- factor(Hill_equalSC_extrapolate_df1$Fertility,levels=c("NF a","RIF a"))
     
   
## Plotting
    boxp_Type <- ggplot(data= Hill_equalSC_extrapolate_df1 %>% subset(order=="1"),aes(y=factor(Type,levels=rev(levels(Type))),x=qD)) + geom_pointrange(aes(xmin=qD.LCL,xmax=qD.UCL,colour=IDunique),position=position_jitter(width=0,height=0.2),size=0.05)  + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2)
    boxp_Type <- papertheme(boxp_Type,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1),axis.text.y = element_blank()) + scale_colour_manual(name='',values=ID_14)
    boxp_Type <- boxp_Type + xlab(substitute(paste("",H[1]," at SC","=",SC),list(SC=round(SCmin_extrapolate,2)))) + ylab("") + theme(legend.position = "none")+  theme(plot.margin = unit(c(0,0,0,0), "cm"))
   
    boxp_Fertility <- ggplot(data= Hill_equalSC_extrapolate_df1 %>% subset(order=="1"),aes(x=Fertility,y=qD)) + geom_pointrange(aes(ymin=qD.LCL,ymax=qD.UCL,colour=IDunique),position=position_jitter(width=0.2,height=0),size=0.05)  + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2)
    boxp_Fertility <- papertheme(boxp_Fertility,sizeselect=12) + theme(strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1),axis.text.x = element_blank()) + scale_colour_manual(name='',values= ID_14)
    boxp_Fertility <- boxp_Fertility + ylab(substitute(paste("",H[1]," at SC","=",SC),list(SC=round(SCmin_extrapolate,2)))) + xlab("") + theme(legend.position = "none")+    theme(plot.margin = unit(c(0,0,0,0), "cm"))
    
    subject_p <- ggplot(data= Hill_equalSC_extrapolate_df1 %>% subset(order=="1"),aes(x=IDunique,y=qD))
    subject_p <- subject_p + geom_point(aes(colour=IDunique),size=1)  + facet_grid(Type~Fertility,scales="free",space="free_x")
    subject_p <- subject_p + geom_errorbar(aes(x=IDunique,ymin=qD.LCL,ymax=qD.UCL ,color=IDunique),width=0.002)
    #subject_p <-  subject_p + geom_text(data=maxqD,aes(x=5,y= max(qD)+max(qD)/10,label=letters),size=2)
    #subject_p <- subject_p + geom_text_repel(aes(label=ID),size=2)
    subject_p <- papertheme(subject_p,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1)) +scale_colour_manual(name='',values=ID_14)
    subject_p <- subject_p+ ylab(substitute(paste("",H[1]," Richness at extrapolated sample coverage","=",SC),list(SC=round(SCmin_extrapolate,2)))) + xlab("Subject ID") + theme(plot.margin = unit(c(0,0,0,0), "cm"))
    subject_p <- subject_p + theme(legend.position = "none")
    subject_p <- OverlappingStripLabels(subject_p)
```

```r
    boxp_subject_combo <- plot_grid(boxp_Fertility,NULL,NULL,NULL,NULL,NULL,subject_p,NULL,boxp_Type ,ncol=3,nrow=3,rel_widths=c(0.8,0,0.2),rel_heights = c(0.3,0,0.7),align="vh",axis="lbtr")
```


```r
boxp_subject_combo
```

<div class="figure" style="text-align: center">
<img src="REPORT_versionKim_files/figure-html/Extrapolated-Shannon-diversity-16S-rRNA-gene-sequencing-data-plotting-1.png" alt="Extrapolated Shannon diversity across Sample types (EF-VS) and Fertility status (NF-RIF). Identical letters indicate no statistically significant differences (p&gt;0.05) as determined by Kruskal-Wallis Rank Sum Tests. 95\% bootstrap confidence intervals are shown as error bars." width="90%" height="90%" />
<p class="caption">(\#fig:Extrapolated-Shannon-diversity-16S-rRNA-gene-sequencing-data-plotting)Extrapolated Shannon diversity across Sample types (EF-VS) and Fertility status (NF-RIF). Identical letters indicate no statistically significant differences (p>0.05) as determined by Kruskal-Wallis Rank Sum Tests. 95\% bootstrap confidence intervals are shown as error bars.</p>
</div>

```r
tiff("./Figures_Kim/Shannon.tiff",width=14*dpi,height=10*dpi,res=dpi,compression="lzw")
boxp_subject_combo
dev.off()
```


```r
# Hill 2
     Hill_equalSC_extrapolate_df2 <- Hill_equalSC_extrapolate_df
     Hill_equalSC_extrapolate_df2_stat <- Hill_equalSC_extrapolate_df2 %>% subset(order=="2")
     write.table(Hill_equalSC_extrapolate_df2_stat,paste0("REPORT_files/","Hill_equalSC_extrapolate_df.txt"),row.names = TRUE)

     fertility_stat <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df2_stat$qD,Hill_equalSC_extrapolate_df2_stat$Fertility,padj="holm")$letters),letters,sep=" ")$letters)
```

```r
     type_stat <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df2_stat$qD,Hill_equalSC_extrapolate_df2_stat$Type,padj="holm")$letters),letters,sep=" ")$letters)
```

```r
     fertility_type <- c(unite(data.frame(univariatestat(Hill_equalSC_extrapolate_df2_stat$qD,Hill_equalSC_extrapolate_df2_stat$TypeFertility,padj="holm",minobs=2)$letters),letters,sep=" ")$letters)
```

```r
     maxqD <- aggregate(Hill_equalSC_extrapolate_df2_stat%>% subset(order=="2") %>% dplyr::select("qD"),by=list(Hill_equalSC_extrapolate_df2_stat$Type,Hill_equalSC_extrapolate_df2_stat$Fertility),max) 
     colnames(maxqD) <- c("Type","Fertility","qD")
     maxqD <- maxqD[,colnames(maxqD)%in%c(colnames(metadata),"qD")]
    #maxqD$PPI_arm <- paste0(maxqD$PPI_arm,"PPI")
     maxqD <- join(x= maxqD, y = metadata,type="right")
     maxqD <- na.omit(maxqD)
     maxqD$letters <- mapvalues(maxqD$TypeFertility,from=data.frame(univariatestat(Hill_equalSC_extrapolate_df2_stat$qD,Hill_equalSC_extrapolate_df2_stat$TypeFertility,padj="holm",minobs=2)$letters)$rowname,to=data.frame(univariatestat(Hill_equalSC_extrapolate_df2_stat$qD,Hill_equalSC_extrapolate_df2_stat$TypeFertility,padj="holm",minobs=2)$letters)$letters)
```

```r
     maxqD$Type <- mapvalues(maxqD$Type,from=levels(factor(maxqD$Type)),to=type_stat)
     maxqD$Fertility <- mapvalues(maxqD$Fertility,from=levels(factor(maxqD$Fertility)),to=fertility_stat)
     maxqD$Type <- factor(maxqD$Type,levels=c("EF a","VS b"))
     maxqD$Fertility <- factor(maxqD$Fertility,levels=c("NF a","RIF a"))
     
     Hill_equalSC_extrapolate_df2$Type <- mapvalues(Hill_equalSC_extrapolate_df2$Type,from=levels(factor(Hill_equalSC_extrapolate_df2$Type)),to=type_stat)
     Hill_equalSC_extrapolate_df2$Fertility <- mapvalues(Hill_equalSC_extrapolate_df2$Fertility,from=levels(factor(Hill_equalSC_extrapolate_df2$Fertility)),to=fertility_stat)
     Hill_equalSC_extrapolate_df2$Type <- factor(Hill_equalSC_extrapolate_df2$Type,levels=c("EF a","VS b"))
     Hill_equalSC_extrapolate_df2$Fertility <- factor(Hill_equalSC_extrapolate_df2$Fertility,levels=c("NF a","RIF a"))
     
   
## Plotting
    boxp_Type <- ggplot(data= Hill_equalSC_extrapolate_df2 %>% subset(order=="2"),aes(y=factor(Type,levels=rev(levels(Type))),x=qD)) + geom_pointrange(aes(xmin=qD.LCL,xmax=qD.UCL,colour=IDunique),position=position_jitter(width=0,height=0.2),size=0.05)  + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2)
    boxp_Type <- papertheme(boxp_Type,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1),axis.text.y = element_blank()) + scale_colour_manual(name='',values=ID_14)
    boxp_Type <- boxp_Type + xlab(substitute(paste("",H[2]," at SC","=",SC),list(SC=round(SCmin_extrapolate,2)))) + ylab("") + theme(legend.position = "none")+  theme(plot.margin = unit(c(0,0,0,0), "cm"))
   
    boxp_Fertility <- ggplot(data= Hill_equalSC_extrapolate_df2 %>% subset(order=="2"),aes(x=Fertility,y=qD)) + geom_pointrange(aes(ymin=qD.LCL,ymax=qD.UCL,colour=IDunique),position=position_jitter(width=0.2,height=0),size=0.05)  + stat_summary(fun.data=mean_sdl,mult=1,geom="pointrange", color="black",size=0.2)
    boxp_Fertility <- papertheme(boxp_Fertility,sizeselect=12) + theme(strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1),axis.text.x = element_blank()) + scale_colour_manual(name='',values= ID_14)
    boxp_Fertility <- boxp_Fertility + ylab(substitute(paste("",H[2]," at SC","=",SC),list(SC=round(SCmin_extrapolate,2)))) + xlab("") + theme(legend.position = "none")+    theme(plot.margin = unit(c(0,0,0,0), "cm"))
    
    subject_p <- ggplot(data= Hill_equalSC_extrapolate_df2 %>% subset(order=="2"),aes(x=IDunique,y=qD))
    subject_p <- subject_p + geom_point(aes(colour=IDunique),size=1)  + facet_grid(Type~Fertility,scales="free",space="free_x")
    subject_p <- subject_p + geom_errorbar(aes(x=IDunique,ymin=qD.LCL,ymax=qD.UCL ,color=IDunique),width=0.002)
    #subject_p <-  subject_p + geom_text(data=maxqD,aes(x=5,y= max(qD)+max(qD)/10,label=letters),size=2)
    #subject_p <- subject_p + geom_text_repel(aes(label=ID),size=2)
    subject_p <- papertheme(subject_p,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1)) +scale_colour_manual(name='',values=ID_14)
    subject_p <- subject_p+ ylab(substitute(paste("",H[2]," Richness at extrapolated sample coverage","=",SC),list(SC=round(SCmin_extrapolate,2)))) + xlab("Subject ID") + theme(plot.margin = unit(c(0,0,0,0), "cm"))
    subject_p <- subject_p + theme(legend.position = "none")
    subject_p <- OverlappingStripLabels(subject_p)
```

```r
    boxp_subject_combo <- plot_grid(boxp_Fertility,NULL,NULL,NULL,NULL,NULL,subject_p,NULL,boxp_Type ,ncol=3,nrow=3,rel_widths=c(0.8,0,0.2),rel_heights = c(0.3,0,0.7),align="vh",axis="lbtr")
```


```r
boxp_subject_combo
```

<div class="figure" style="text-align: center">
<img src="REPORT_versionKim_files/figure-html/Extrapolated-Inverse-Simpson-diversity-16S-rRNA-gene-sequencing-data-plotting-1.png" alt="Extrapolated Inverse Simpson diversity across Sample types (EF-VS) and Fertility status (NF-RIF). Identical letters indicate no statistically significant differences (p&gt;0.05) as determined by Kruskal-Wallis Rank Sum Tests. 95\% bootstrap confidence intervals are shown as error bars." width="90%" height="90%" />
<p class="caption">(\#fig:Extrapolated-Inverse-Simpson-diversity-16S-rRNA-gene-sequencing-data-plotting)Extrapolated Inverse Simpson diversity across Sample types (EF-VS) and Fertility status (NF-RIF). Identical letters indicate no statistically significant differences (p>0.05) as determined by Kruskal-Wallis Rank Sum Tests. 95\% bootstrap confidence intervals are shown as error bars.</p>
</div>

```r
tiff("./Figures_Kim/InverseSimpson.tiff",width=14*dpi,height=10*dpi,res=dpi,compression="lzw")
boxp_subject_combo
dev.off()
```

### Interpretation 

Between individuals, statistically significant differences in Hill numbers (non-overlapping 95% bootstrap confidence intervals) were observed ($\alpha$ = 0.05) (Figures \@ref(fig:Extrapolated-richness-16S-rRNA-gene-sequencing-data-plotting), \@ref(fig:Extrapolated-Shannon-diversity-16S-rRNA-gene-sequencing-data-plotting), \@ref(fig:Extrapolated-Inverse-Simpson-diversity-16S-rRNA-gene-sequencing-data-plotting)). 

No significant differences were found in richness, Shannon or Inverse Simpson diversity between normal fertile women and women with repeated implantation failures. In contrast, endometrial fluid samples displayed a significantly increased richness and diversity compared to vaginal secretions (Figures \@ref(fig:Extrapolated-richness-16S-rRNA-gene-sequencing-data-plotting), \@ref(fig:Extrapolated-Shannon-diversity-16S-rRNA-gene-sequencing-data-plotting), \@ref(fig:Extrapolated-Inverse-Simpson-diversity-16S-rRNA-gene-sequencing-data-plotting)). 
 

## Bargraphs for paper
Barplots were made in replacement of the 4 separate figures in the draft (Figures \@ref(fig:barplotting-genus-av-phylum), \@ref(fig:barplotting-OTU)).   

### Material and methods

The OTU, genus and phylum level proportional microbial community composition was visualized in ggplot 2 3.3.2.

### Results 

```r
p <- ggplot() + theme_void()
papertheme(p,sizeselect=12)
```

```r
papertheme(ggplot() + theme_void(),sizeselect=12)
```


```r
topn <- 5
# Phylum level average
phylobj.filter = subset_samples(phylobj.filter, PCR != "nested")
phylobj.filter = subset_samples(phylobj.filter, ID != "BLK")
phylobj.filter.phylum = aggregate_taxa(phylobj.filter,"Phylum") 
phylobj.filter.phylum.sampleselect = transform_sample_counts(phylobj.filter.phylum, function(OTU) OTU/sum(OTU))
phylobj.filter.phylum.sampleselect = data.frame(otu_table(phylobj.filter.phylum.sampleselect))

  barplot <- phylobj.filter.phylum.sampleselect
  selecttop20par <- rowSums(barplot)
  barplot <- tibble::rownames_to_column(barplot)
  barplot <- as.data.frame(barplot  %>% top_n(topn,selecttop20par))
  other <- 1-colSums(barplot[,-1])
  rownames(barplot) <- barplot$rowname
  barplot <- barplot[,-1]
  barplot <- rbind(barplot,other)
  rownames(barplot)[nrow(barplot)] <- "Other"

  phylobj.filter.phylum.sampleselect = data.frame(t(barplot))
  phylobj.filter.phylum.sampleselect = tibble::rownames_to_column(phylobj.filter.phylum.sampleselect,var="SampleName")
  phylobj.filter.phylum.sampleselect = join(phylobj.filter.phylum.sampleselect,metadata,"SampleName")

phylobj.filter.phylum.sampleselect_av = aggregate(phylobj.filter.phylum.sampleselect %>% dplyr::select(-colnames(metadata)),by=phylobj.filter.phylum.sampleselect["TypeFertility"],FUN=mean)
phylobj.filter.phylum.sampleselect_av = separate(phylobj.filter.phylum.sampleselect_av,TypeFertility,into=c("Type","Fertility"),sep="_")
phylobj.filter.phylum.sampleselect_av = reshape2::melt(phylobj.filter.phylum.sampleselect_av,id.vars=c("Type","Fertility"))
phylobj.filter.phylum.sampleselect_av$ID = "av \n Phylum"
phylobj.filter.phylum.sampleselect_av$IDunique = "av \n Phylum"

phylobj.filter.phylum.sampleselect_sd = aggregate(phylobj.filter.phylum.sampleselect %>% dplyr::select(-colnames(metadata)),by=phylobj.filter.phylum.sampleselect["TypeFertility"],FUN=sd)
phylobj.filter.phylum.sampleselect_sd = separate(phylobj.filter.phylum.sampleselect_sd,TypeFertility,into=c("Type","Fertility"),sep="_")
phylobj.filter.phylum.sampleselect_sd =reshape2::melt(phylobj.filter.phylum.sampleselect_sd,id.vars=c("Type","Fertility"))
phylobj.filter.phylum.sampleselect_sd$ID = "av \n Phylum"
phylobj.filter.phylum.sampleselect_sd$IDunique = "av \n Phylum"

phylobj.filter.phylum.sampleselect_av_sd <- cbind(phylobj.filter.phylum.sampleselect_av,sd=phylobj.filter.phylum.sampleselect_sd$value)

phylobj.filter.phylum.sampleselect_av_sd_cum <- data.frame(phylobj.filter.phylum.sampleselect_av_sd %>% dplyr::group_by(Type,Fertility) %>% dplyr::mutate(cum_av = cumsum(value)))

topn <- 14
# Genus level
# Remove blank and nested PCR samples 
phylobj.filter = subset_samples(phylobj.filter, PCR != "nested")
phylobj.filter = subset_samples(phylobj.filter, ID != "BLK")
phylobj.filter.genus = aggregate_taxa(phylobj.filter,"Genus") 
phylobj.filter.genus.sampleselect = transform_sample_counts(phylobj.filter.genus, function(OTU) OTU/sum(OTU))
phylobj.filter.genus.sampleselect = data.frame(otu_table(phylobj.filter.genus.sampleselect))
  
  barplot <- phylobj.filter.genus.sampleselect
  selecttop20par <- rowSums(barplot)
  barplot <- tibble::rownames_to_column(barplot)
  barplot <- as.data.frame(barplot  %>% top_n(topn,selecttop20par))
  other <- 1-colSums(barplot[,-1])
  rownames(barplot) <- barplot$rowname
  barplot <- barplot[,-1]
  barplot <- rbind(barplot,other)
  rownames(barplot)[nrow(barplot)] <- "Other"
  barplot <- as.data.frame(t(barplot))
  barplot <- tibble::rownames_to_column(barplot)
  colnames(barplot)[1] <- "SampleName"
  barplot <- join(barplot,metadata,by="SampleName")
  barplot <- reshape2::melt(barplot,id.vars=colnames(metadata))

# Colour names for levels of variable
  genusvar <- as.character(barplot$variable)
  phylumvar <- as.character(phylobj.filter.phylum.sampleselect_av_sd_cum$variable)
  colvar <- unique(c(phylumvar,genusvar))
  #names(thirtycolors) <- colvar
  coldf <- data.frame(cbind(var=colvar,colour=thirtycolors[1:length(colvar)]))
  colorbarplots <- paste("\'",coldf$var,"\'","=","\'",coldf$colour,"\'",sep="",collapse=",")
  colorbarplots <- paste("c(", colorbarplots,")",sep="")
  cat(colorbarplots)

# Combine Genus and average Phylum
  p <- ggplot(data=barplot,aes(x=IDunique,y=value)) + facet_grid(Type~Fertility,drop=TRUE,scales="free",space="free")
  p <- p + geom_bar(aes(fill=variable,colour=variable),stat="identity") 
  p <- p + geom_bar(data=data.frame(phylobj.filter.phylum.sampleselect_av_sd),aes(fill=variable),stat="identity") 
  p <- p + geom_errorbar(data=data.frame(phylobj.filter.phylum.sampleselect_av_sd_cum),aes(ymin=1-cum_av,ymax=1-cum_av+sd,colour=variable),stat="identity",width=0.2)
  p <- papertheme(p,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1))+scale_fill_manual(name='Genus',values=c('Actinobacteria'='#323F24','Bacteroidetes'='#CB51D7','Firmicutes'='#72E245','Fusobacteria'='#DE4F2D','Proteobacteria'='#81DDC7','Other'='#6584C6','Gardnerella'='#CFAE3C','Corynebacterium'='#914261','Microbacterium'='#BFDC86','Micrococcus'='#CDC6BE','Cutibacterium'='#D3469A','Atopobium'='#3C315A','Prevotella'='#607B30','Staphylococcus'='#DD4469','Lactobacillus'='#5B9072','Streptococcus'='#CA9FC7','Clostridium'='#7F592D','BVAB1'='#5A656D','Faecalibacterium'='#D1867F','Megasphaera'='#4C2426')) +scale_colour_manual(name='Genus',values=c('Actinobacteria'='#323F24','Bacteroidetes'='#CB51D7','Firmicutes'='#72E245','Fusobacteria'='#DE4F2D','Proteobacteria'='#81DDC7','Other'='#6584C6','Gardnerella'='#CFAE3C','Corynebacterium'='#914261','Microbacterium'='#BFDC86','Micrococcus'='#CDC6BE','Cutibacterium'='#D3469A','Atopobium'='#3C315A','Prevotella'='#607B30','Staphylococcus'='#DD4469','Lactobacillus'='#5B9072','Streptococcus'='#CA9FC7','Clostridium'='#7F592D','BVAB1'='#5A656D','Faecalibacterium'='#D1867F','Megasphaera'='#4C2426'))
  p <- p + ylab("Relative abundance") + xlab("Subject ID") + theme(legend.position="none")
  #p <- p + geom_text(aes(label = "Genus",x=3,y = -Inf),size=2,vjust=5,fontface="plain",family="sans")
  #p <- p +   coord_cartesian(clip = "off")  
  #p <- p + labs(tag = "Genus") + theme(plot.tag.position = c(0.3,0))
  p <- p+ scale_y_continuous(breaks=c(0.00,0.25,0.50,0.75,1.00))
  
  legend1 <- ggplot(data=barplot,aes(x=ID,y=value)) + facet_grid(Type~Fertility,drop=TRUE,scales="free")
  legend1 <- legend1  + geom_bar(aes(fill=variable,colour=variable),stat="identity") +scale_fill_manual(name='Genus',values=c('Actinobacteria'='#323F24','Bacteroidetes'='#CB51D7','Firmicutes'='#72E245','Fusobacteria'='#DE4F2D','Proteobacteria'='#81DDC7','Other'='#6584C6','Gardnerella'='#CFAE3C','Corynebacterium'='#914261','Microbacterium'='#BFDC86','Micrococcus'='#CDC6BE','Cutibacterium'='#D3469A','Atopobium'='#3C315A','Prevotella'='#607B30','Staphylococcus'='#DD4469','Lactobacillus'='#5B9072','Streptococcus'='#CA9FC7','Clostridium'='#7F592D','BVAB1'='#5A656D','Faecalibacterium'='#D1867F','Megasphaera'='#4C2426')) +scale_colour_manual(name='Genus',values=c('Actinobacteria'='#323F24','Bacteroidetes'='#CB51D7','Firmicutes'='#72E245','Fusobacteria'='#DE4F2D','Proteobacteria'='#81DDC7','Other'='#6584C6','Gardnerella'='#CFAE3C','Corynebacterium'='#914261','Microbacterium'='#BFDC86','Micrococcus'='#CDC6BE','Cutibacterium'='#D3469A','Atopobium'='#3C315A','Prevotella'='#607B30','Staphylococcus'='#DD4469','Lactobacillus'='#5B9072','Streptococcus'='#CA9FC7','Clostridium'='#7F592D','BVAB1'='#5A656D','Faecalibacterium'='#D1867F','Megasphaera'='#4C2426')) + theme(legend.text = element_text(face="italic")) + guides(fill=guide_legend(nrow=4,title.vjust=0.95))
  legend1 <- get_legend(legend1)
  
  legend2 <- ggplot(data=barplot,aes(x=ID,y=value)) + facet_grid(Type~Fertility,drop=TRUE,scales="free")
  legend2  <- legend2  + geom_bar(data=data.frame(phylobj.filter.phylum.sampleselect_av_sd),aes(fill=variable),stat="identity")  +scale_fill_manual(name='Phylum',values=c('Actinobacteria'='#323F24','Bacteroidetes'='#CB51D7','Firmicutes'='#72E245','Fusobacteria'='#DE4F2D','Proteobacteria'='#81DDC7','Other'='#6584C6','Gardnerella'='#CFAE3C','Corynebacterium'='#914261','Microbacterium'='#BFDC86','Micrococcus'='#CDC6BE','Cutibacterium'='#D3469A','Atopobium'='#3C315A','Prevotella'='#607B30','Staphylococcus'='#DD4469','Lactobacillus'='#5B9072','Streptococcus'='#CA9FC7','Clostridium'='#7F592D','BVAB1'='#5A656D','Faecalibacterium'='#D1867F','Megasphaera'='#4C2426')) +scale_colour_manual(name='Phylum',values=c('Actinobacteria'='#323F24','Bacteroidetes'='#CB51D7','Firmicutes'='#72E245','Fusobacteria'='#DE4F2D','Proteobacteria'='#81DDC7','Other'='#6584C6','Gardnerella'='#CFAE3C','Corynebacterium'='#914261','Microbacterium'='#BFDC86','Micrococcus'='#CDC6BE','Cutibacterium'='#D3469A','Atopobium'='#3C315A','Prevotella'='#607B30','Staphylococcus'='#DD4469','Lactobacillus'='#5B9072','Streptococcus'='#CA9FC7','Clostridium'='#7F592D','BVAB1'='#5A656D','Faecalibacterium'='#D1867F','Megasphaera'='#4C2426')) + theme(legend.text = element_text(face="italic")) + guides(fill=guide_legend(nrow=2,title.vjust=0.95))
  legend2 <- get_legend(legend2)
  
  bars <- plot_grid(p,plot_grid(legend1,legend2,ncol=2,rel_widths = c(0.6,0.4),axis=2,align="h"),nrow=2,rel_heights = c(0.8,0.2))
  bars <- ggdraw(bars) + draw_text("Genus", x = 0.2, y = 0.23, size = 12, family="sans", hjust =0, vjust = 0,color="grey30")
  bars <- ggdraw(bars) + draw_text("Genus", x = 0.8, y = 0.23, size = 12, family="sans", hjust =0, vjust = 0,color="grey30")
  bars
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/barplotting-genus-av-phylum-1.png" alt="\label{fig:fig10} Genus level and average (NF:n=9 and RIF:n=5) phylum level microbial community composition of Endometrial Fluid (EF) and Vaginal Secretions (VS) of women with Normal Fertility (NF) or Repeated Implantantion Failure (RIF)." angle=90 />
<p class="caption">(\#fig:barplotting-genus-av-phylum)\label{fig:fig10} Genus level and average (NF:n=9 and RIF:n=5) phylum level microbial community composition of Endometrial Fluid (EF) and Vaginal Secretions (VS) of women with Normal Fertility (NF) or Repeated Implantantion Failure (RIF).</p>
</div>

```r
tiff("./Figures_Kim/Barplots_GENUS_avphylum.tiff",width=14*dpi,height=10*dpi,res=dpi,compression="lzw")
bars
dev.off()
```


```r
# Proportional OTU table 
  phylobj.filter.OTU.sampleselect = transform_sample_counts(phylobj.filter,function(OTU) OTU/sum(OTU))
  metadata.sampleselect = data.frame(sample_data(phylobj.filter.OTU.sampleselect))
  phylobj.filter.OTU.sampleselect = data.frame(otu_table(phylobj.filter.OTU.sampleselect))
  
topn <- 29
# OTU level

  barplot <- phylobj.filter.OTU.sampleselect
  selecttop20par <- rowSums(barplot)
  barplot <- tibble::rownames_to_column(barplot)
  barplot <- as.data.frame(barplot  %>% top_n(topn,selecttop20par))
  other <- 1-colSums(barplot[,-1])
  rownames(barplot) <- barplot$rowname
  barplot <- barplot[,-1]
  barplot <- rbind(barplot,other)
  rownames(barplot)[nrow(barplot)] <- "Other"
  barplot <- as.data.frame(t(barplot))
  barplot <- tibble::rownames_to_column(barplot)
  colnames(barplot)[1] <- "SampleName"
  barplot <- join(barplot,metadata,by="SampleName")
  barplot <- reshape2::melt(barplot,id.vars=colnames(metadata))
  barplot$variable <- gsub("Otu[0]+","OTU\\",barplot$variable)
  barplot$variable  <- factor(barplot$variable,levels=unique(barplot$variable))
 
# Combine Genus and average Phylum
  p <- ggplot(data=barplot,aes(x=IDunique,y=value)) + facet_grid(Type~Fertility,drop=TRUE,scales="free",space="free")
  p <- p + geom_bar(aes(fill=variable),stat="identity") 
  p <- papertheme(p,sizeselect=12) + theme(axis.text.x = element_text(angle =0),strip.text.y =element_text(angle = 0, hjust = 1),panel.background = element_rect(color="black",size=1))+scale_fill_manual(name='OTU',values=thirtycolors)
  p <- p + ylab("Relative abundance") + xlab("Subject ID") 
  #p <- p + geom_text(aes(label = "Genus",x=3,y = -Inf),size=2,vjust=5,fontface="plain",family="sans")
  #p <- p +   coord_cartesian(clip = "off")  
  #p <- p + labs(tag = "Genus") + theme(plot.tag.position = c(0.3,0))
  p <- p+ scale_y_continuous(breaks=c(0.00,0.25,0.50,0.75,1.00))+ guides(fill=guide_legend(nrow=3))
  p
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/barplotting-OTU-1.png" alt="\label{fig:fig10} Genus level and average (NF:n=9 and RIF:n=5) phylum level microbial community composition of Endometrial Fluid (EF) and Vaginal Secretions (VS) of women with Normal Fertility (NF) or Repeated Implantantion Failure (RIF)." angle=90 />
<p class="caption">(\#fig:barplotting-OTU)\label{fig:fig10} Genus level and average (NF:n=9 and RIF:n=5) phylum level microbial community composition of Endometrial Fluid (EF) and Vaginal Secretions (VS) of women with Normal Fertility (NF) or Repeated Implantantion Failure (RIF).</p>
</div>

```r
tiff("./Figures_Kim/Barplots_OTU.tiff",width=14*dpi,height=10*dpi,res=dpi,compression="lzw")
p
dev.off()
```


## Beta-diversity analysis: unsupervised PCoA

### Material and methods

The variation in OTU and genus level proportional microbial community composition in relation to the study design factors (Sample type and Fertility status), was first explored by means of unsupervised (unconstrained) Principal Coordinates Analysis (PCoA; stats 4.0.3) based on the Bray-Curtis dissimilarity matrix (vegan 2.5.7) [@Gower1966;@Cailliez1983;@Becker1988;@Cox2001;@Anderson2006;@Ramette2007;@Borcard2011;@Oksanen2016]. Screeplots indicate a knee after the first 2 dimensions, suggesting that the variation in community composition is well captured in 2D.

### Results 


```r
  # Ordination
  ordinationplot <- function(ordinationpoints,colordesign,label,colorvector,designfactorname,Dim1,Dim2,Stress){
    if(missing(Stress)){
      plotobj <- ggplot(ordinationpoints) + geom_point(aes(x=fa,y=sa,color=colordesign),size=1,alpha=0.5) + scale_colour_manual(values=colorvector,name=designfactorname) + xlab(paste('PCoA Dim1',Dim1,'%',sep=" ")) + ylab(paste('PCoA Dim2',Dim2,'%',sep=" ")) 
      plotobj <- papertheme(plotobj,sizeselect=12)  + geom_text_repel(data=ordinationpoints,aes(x=fa,y=sa,label=label,color=colordesign),size=3,alpha=1,show.legend=FALSE,max.overlaps=30) + theme(legend.position = c(0.6,1),legend.justification = c(0.6,1),legend.text = element_text(size=10))
      # + annotate(geom="text",x=Inf,y=Inf,hjust=0.99,vjust=0.99,label=designfactorname,size=12*(5/14),family='sans',angle=0) 
      return(plotobj)}
    
    if(missing(Dim1)){
      plotobj <- ggplot(ordinationpoints)+geom_point(aes(x=fa,y=sa,color=colordesign),size=5,alpha=0.5) + scale_colour_manual(values=colorvector,name="Donor") + xlab("NMDS1") + ylab("NMDS2") 
      plotobj <- papertheme(plotobj,sizeselect=12) + geom_text(data=ordinationpoints,aes(x=fa,y=sa,label=colordesign,color=colordesign),size=3,alpha=1,show.legend=FALSE) + theme(legend.position = "none") + annotate(geom="text",x=Inf,y=Inf,hjust=0.99,vjust=0.99,label=designfactorname,size=12*(5/14),family='sans',angle=0) + annotate(geom="text",x=-0.9,y=-1.1,label=paste("Stress =",round(Stress,2),sep=" "),size=8*(5/14),family='sans',angle=0) 
      return(plotobj)} 
  }
```
    

```r
# Proportional OTU table 
  phylobj.filter.OTU.sampleselect = transform_sample_counts(phylobj.filter,function(OTU) OTU/sum(OTU))
  metadata.sampleselect = data.frame(sample_data(phylobj.filter.OTU.sampleselect))
  phylobj.filter.OTU.sampleselect = data.frame(otu_table(phylobj.filter.OTU.sampleselect))

# Dissimilarity matrix
  bray_OTUtable_prop <- vegdist(t(phylobj.filter.OTU.sampleselect),method="bray",binary="FALSE")
      
  # Ordination
  set.seed(250)
  pcoail <- cmdscale(bray_OTUtable_prop,k=(ncol(phylobj.filter.OTU.sampleselect)-1),eig=TRUE,add=TRUE)
  ordiplot(scores(pcoail),c(1,2),type="t",main="PCoA with species")
  speciespcoa <- wascores(pcoail$points[,1:2],t(phylobj.filter.OTU.sampleselect))
  text(speciespcoa,rownames(speciespcoa),cex=0.7,col="red")
```

```r
  Dim1 <- pcoail$eig[1]/sum(pcoail$eig)
  Dim2 <- pcoail$eig[2]/sum(pcoail$eig)
  Dim1 <- round(Dim1*100,0)
  Dim2 <-  round(Dim2*100,0)
      
  barplot(pcoail$eig, names = paste ('PCoA', 1:length(pcoail$eig)), las = 3, ylab = 'eigenvalues')
```

```r
  firstaxispoints <- pcoail$points[,1]
  secondaxispoints <- pcoail$points[,2]
      
  OTU_PCOApoints <- data.frame(SampleName=names(firstaxispoints),fa=as.numeric(as.character(firstaxispoints)),sa=as.numeric(as.character(secondaxispoints)))
  OTU_PCOApoints <- join(OTU_PCOApoints,metadata,by="SampleName")
  rownames(OTU_PCOApoints) <- OTU_PCOApoints$SampleName
```
        

```r
# ggplot visualization
  PCOA_OTU_type <- ordinationplot(OTU_PCOApoints,OTU_PCOApoints$Type,OTU_PCOApoints$IDunique,Type_2,"Sample type",Dim1,Dim2)
  PCOA_OTU_fertility <- ordinationplot(OTU_PCOApoints,OTU_PCOApoints$Fertility,OTU_PCOApoints$IDunique,Fertility_2,"Fertility",Dim1,Dim2) 
  PCOA_OTU_ID <- ordinationplot(OTU_PCOApoints,OTU_PCOApoints$IDunique,OTU_PCOApoints$IDunique,ID_14,"Subject ID",Dim1,Dim2) + guides(color=guide_legend(ncol=2))
  
  OTUpcoas <- plot_grid(PCOA_OTU_type,PCOA_OTU_fertility,PCOA_OTU_ID,ncol=1,nrow=3,rel_heights = c(0.33,0.33,0.33))
 
  OTUpcoas  
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/PcoA-at-OTU-level-plotting-1.png" alt="A PCoA biplot of the proportional microbial community composition at OTU level as determined by 16S rRNA gene amplicon sequencing with points colored by Sample type (EF = Endometerial Fluid and VS = Vaginal Secretions), Fertility status (NF = Normal Fertility and RIF = Repeated Implantation Failure) and Subject ID (labeled 1-14)." width="100%" height="90%" />
<p class="caption">(\#fig:PcoA-at-OTU-level-plotting)A PCoA biplot of the proportional microbial community composition at OTU level as determined by 16S rRNA gene amplicon sequencing with points colored by Sample type (EF = Endometerial Fluid and VS = Vaginal Secretions), Fertility status (NF = Normal Fertility and RIF = Repeated Implantation Failure) and Subject ID (labeled 1-14).</p>
</div>

```r
tiff("./Figures_Kim/PCOA_OTU.tiff",width=6*dpi,height=10*dpi,res=dpi,compression="lzw")
OTUpcoas
dev.off()
```
        

```r
# Dissimilarity matrix
  bray_Genustable_prop <- vegdist(t(phylobj.filter.genus.sampleselect),method="bray",binary="FALSE")
      
# Ordination
  set.seed(250)
  pcoail <- cmdscale(bray_Genustable_prop,k=(ncol(phylobj.filter.genus.sampleselect)-1),eig=TRUE,add=TRUE)
  ordiplot(scores(pcoail),c(1,2),type="t",main="PCoA with species")
  speciespcoa <- wascores(pcoail$points[,1:2],t(phylobj.filter.genus.sampleselect))
  text(speciespcoa,rownames(speciespcoa),cex=0.7,col="red")
```

```r
  Dim1 <- pcoail$eig[1]/sum(pcoail$eig)
  Dim2 <- pcoail$eig[2]/sum(pcoail$eig)
  Dim1 <- round(Dim1*100,0)
  Dim2 <-  round(Dim2*100,0)
      
  barplot(pcoail$eig, names = paste ('PCoA', 1:length(pcoail$eig)), las = 3, ylab = 'eigenvalues')
```

```r
  firstaxispoints <- pcoail$points[,1]
  secondaxispoints <- pcoail$points[,2]
      
  Genus_PCOApoints <- data.frame(SampleName=names(firstaxispoints),fa=as.numeric(as.character(firstaxispoints)),sa=as.numeric(as.character(secondaxispoints)))
  Genus_PCOApoints <- join(Genus_PCOApoints,metadata,by="SampleName")
  rownames(Genus_PCOApoints) <- Genus_PCOApoints$SampleName
```
  

```r
# ggplot visualization
  PCOA_genus_type <- ordinationplot(Genus_PCOApoints,Genus_PCOApoints$Type,Genus_PCOApoints$ID,Type_2,"Sample type",Dim1,Dim2)
  PCOA_genus_fertility <- ordinationplot(Genus_PCOApoints,Genus_PCOApoints$Fertility,Genus_PCOApoints$ID,Fertility_2,"Fertility",Dim1,Dim2) 
  PCOA_genus_ID <- ordinationplot(Genus_PCOApoints,Genus_PCOApoints$IDunique,Genus_PCOApoints$IDunique,ID_14,"Subject ID",Dim1,Dim2) + guides(color=guide_legend(ncol=2))
  #PCOA_genus_typefertility <- ordinationplot(Genus_PCOApoints,Genus_PCOApoints$TypeFertility,Genus_PCOApoints$ID,FertilityType_4,"Sample type - Fertility",Dim1,Dim2) 
  
genuspcoas <- plot_grid(PCOA_genus_type,PCOA_genus_fertility,PCOA_genus_ID,ncol=1,nrow=3,rel_heights = c(0.33,0.33,0.33))

genuspcoas
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/PcoA-at-Genus-level-plotting-1.png" alt="A PCoA biplot of the proportional microbial community composition at genus level as determined by 16S rRNA gene amplicon sequencing with points colored by Sample type (EF = Endometerial Fluid and VS = Vaginal Secretions), Fertility status (NF = Normal Fertility and RIF = Repeated Implantation Failure) and Subject ID (labeled 1-14)." width="100%" height="90%" />
<p class="caption">(\#fig:PcoA-at-Genus-level-plotting)A PCoA biplot of the proportional microbial community composition at genus level as determined by 16S rRNA gene amplicon sequencing with points colored by Sample type (EF = Endometerial Fluid and VS = Vaginal Secretions), Fertility status (NF = Normal Fertility and RIF = Repeated Implantation Failure) and Subject ID (labeled 1-14).</p>
</div>

```r
tiff("./Figures_Kim/PCOA_GENUS.tiff",width=6*dpi,height=10*dpi,res=dpi,compression="lzw")
genuspcoas
dev.off()
```
        

```r
# Get legends
  PCOA_type_legend <- get_legend(PCOA_OTU_type + theme(legend.position = "right",legend.justification = c(0,1)))
  PCOA_fertility_legend <- get_legend(PCOA_OTU_fertility + theme(legend.position = "right",legend.justification = c(0,1)))
  #PCOA_typefertility_legend <- get_legend(PCOA_OTU_typefertility + theme(legend.position = "right",legend.justification = c(0,1)))
  PCOA_ID_legend <- get_legend(PCOA_OTU_ID + theme(legend.position = "right",legend.justification = c(0,1)))
  
# Plots without legend   
OTUpcoas <- plot_grid(PCOA_OTU_type+theme(legend.position = "none"),PCOA_OTU_fertility+theme(legend.position = "none"),PCOA_OTU_ID+theme(legend.position = "none"),ncol=1,nrow=3,rel_heights = c(0.33,0.33,0.33))
  
genuspcoas <- plot_grid(PCOA_genus_type+theme(legend.position = "none"),PCOA_genus_fertility+theme(legend.position = "none"),PCOA_genus_ID+theme(legend.position = "none"),ncol=1,nrow=3,rel_heights = c(0.33,0.33,0.33))
  
PCOAlegend <- plot_grid(PCOA_type_legend,PCOA_fertility_legend,PCOA_ID_legend,ncol=1,nrow=3,rel_heights = c(0.33,0.33,0.33))

plot_grid(OTUpcoas,genuspcoas,PCOAlegend,ncol=3,rel_widths = c(0.4,0.4,0.2),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5)
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/PcoA-at-Genus-and-OTU-level-plotting-1.png" alt="A PCoA biplot of the proportional microbial community composition at OTU and genus level as determined by 16S rRNA gene amplicon sequencing with points colored by Sample type (EF = Endometerial Fluid and VS = Vaginal Secretions), Fertility status (NF = Normal Fertility and RIF = Repeated Implantation Failure) and Subject ID (labeled 1-14)." width="100%" height="90%" />
<p class="caption">(\#fig:PcoA-at-Genus-and-OTU-level-plotting)A PCoA biplot of the proportional microbial community composition at OTU and genus level as determined by 16S rRNA gene amplicon sequencing with points colored by Sample type (EF = Endometerial Fluid and VS = Vaginal Secretions), Fertility status (NF = Normal Fertility and RIF = Repeated Implantation Failure) and Subject ID (labeled 1-14).</p>
</div>

```r
tiff("./Figures_Kim/PCOA_GENUS_OTU.tiff",width=8*dpi,height=10*dpi,res=dpi,compression="lzw")
plot_grid(OTUpcoas,genuspcoas,PCOAlegend,ncol=3,rel_widths = c(0.4,0.4,0.2),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5)
dev.off()
```

### Interpretation
At OTU level, endometrial fluid and vaginal secretion samples from the same subject tend to aggregate as a result of the inter-individual variability. At genus level, endometrial and vaginal samples are better separated, with the exception of some subjects. Subject 5, characterized by a very distinct relative microbial community composition and an increased richness and diversity, clusters separately (Figure \@ref(fig:PcoA-at-Genus-and-OTU-level-plotting)). 

## Beta-diversity analysis: constrained RDA

### Material and methods 

The fact that the microbial community composition was mainly determined by inter-individual differences was confirmed through distance based redundancy analyses (dbRDA, vegan 2.5.7) [@Borcard2011]. The scores obtained by a PCoA based on the Bray-Curtis dissimilarity matrix were modeled in function of the subject ID, Sample type (EF versus VS), and Fertility status (NF versus RIF). To differentiate between the different constraining variables, variation partitioning (varpart, vegan 2.5.7) was performed. This approach consists of multiple RDAs that represent every possible model of all explanatory factors individually, as well as combinations thereof, including models in which factors are partialled out. Based on the varpart results, interesting models were further inspected and visualized with a dbRDA using the capscale function of the package vegan (version 2.5.7). The constrained fraction of the variance, explained by the exploratory variables was adjusted using Ezekiel's formula or by means of a subtractive procedure in case of partial db RDA [@Banerjee1993;@Peres-Neto2006]. Interpretation of the results is preceded by permutational manova of the db RDA results to confirm that a relationship exists between the response data and the exploratory variables [@Legendre2011;@Borcard2011]. 

RDA results were visualized in type II scaling correlation triplots, displaying the first two constrained canonical (labeled RDA Dim1/RDA Dim2) axes or in case of the two-level 'Sample Type' factor, the first canonical and the first unconstrained residual axis. Both axes were annotated with the proportional eigenvalues representing their contribution to the total (both constrained and unconstrained) variance. The coordinates of the sites were derived from the weighed sums of the scores of the response variables and explanatory variables are represented by centroids denoting the factor levels. In order to improve readability of the graph, the number of OTUs and genera represented as vectors in the triplot were limited to the most abundant taxa.


### Results 


```r
 RDAplot <- function(RDAscores,RDAvars,RDA_constraint,label,labelcolor,colordesign,colorvector,designfactorname,Dim1,Dim2,pointsize,constraintlevels){ 
  if(constraintlevels>2){
  plotobj <- ggplot(RDAscores)+geom_point(aes(x=CAP1,y=CAP2, color=colordesign),size=pointsize,alpha=0.5)
  plotobj <- plotobj + scale_colour_manual(values=colorvector,name=designfactorname) + xlab(paste('RDA Dim1',Dim1,'%',sep=" ")) + ylab(paste('RDA Dim2',Dim2,'%',sep=" ")) 
  plotobj <- papertheme(plotobj,sizeselect=10) 
  plotobj <- plotobj + geom_text_repel(data=RDAscores,aes(x=CAP1,y=CAP2,label=label),color=mapvalues(label,from=levels(label),to=labelcolor),size=3,alpha=1,show.legend=FALSE,max.overlaps=30)
  #plotobj <- plotobj + geom_text(data=RDAscores,aes(x=CAP1,y=CAP2,label=colordesign,color=colordesign),size=3,alpha=1,show.legend=FALSE) + theme(legend.position = "none")
  plotobj <- plotobj + geom_segment(data=RDAvars,aes(x=0,y=0,xend=CAP1,yend=CAP2),color='red',arrow=arrow(length = unit(0.01, "npc")),alpha=0.5) + geom_text_repel(data=RDAvars,aes(x=CAP1,y=CAP2,label=rownames(RDAvars)),color='red',hjust=1,segment.alpha=0.1,size=2,max.overlaps=30)
  plotobj <- plotobj +  geom_text_repel(data=RDA_constraint,aes(x=CAP1,y=CAP2,label=rownames(RDA_constraint)),color='blue',hjust=1,segment.alpha=0.1,size=2)
  plotobj <- plotobj + guides(colour=guide_legend(nrow=2))
  return(plotobj)}else{
  plotobj <- ggplot(RDAscores)+geom_point(aes(x=CAP1,y=MDS1, color=colordesign),size=pointsize,alpha=0.5)
  plotobj <- plotobj + scale_colour_manual(values=colorvector,name=designfactorname) + xlab(paste('RDA Dim1',Dim1,'%',sep=" ")) + ylab(paste('RDA Dim2',Dim2,'%',sep=" ")) 
  plotobj <- papertheme(plotobj,sizeselect=10) 
  plotobj <- plotobj + geom_text_repel(data=RDAscores,aes(x=CAP1,y=MDS1,label=label),color=mapvalues(label,from=levels(label),to=labelcolor),size=3,alpha=1,show.legend=FALSE,max.overlaps=30)
  #plotobj <- plotobj + geom_text(data=RDAscores,aes(x=CAP1,y=MDS1,label=colordesign,color=colordesign),size=3,alpha=1,show.legend=FALSE) + theme(legend.position = "none")
  plotobj <- plotobj + geom_segment(data=RDAvars,aes(x=0,y=0,xend=CAP1,yend=MDS1),color='red',arrow=arrow(length = unit(0.01, "npc")),alpha=0.5) + geom_text_repel(data=RDAvars,aes(x=CAP1,y=MDS1,label=rownames(RDAvars)),color='red',hjust=0,segment.alpha=0.1,size=2,max.overlaps=30,nudge_x = 0.02,nudge_y=0.05)
  plotobj <- plotobj +  geom_text_repel(data=RDA_constraint,aes(x=CAP1,y=MDS1,label=rownames(RDA_constraint)),color='blue',hjust=1,segment.alpha=0.1,size=2)
  plotobj <- plotobj + guides(colour=guide_legend(nrow=2))  
  }
 } 
```


```r
OTU_varp <- varpart(bray_OTUtable_prop,~Type,~Fertility,~IDunique,data=metadata.sampleselect)

  OTU_varp
  OTU_varp_Type <- OTU_varp$part$indfract[1,3]
  OTU_varp_Fertility <- OTU_varp$part$indfract[2,3]
  OTU_varp_ID <- OTU_varp$part$indfract[3,3]

  OTU_varp_Type_sign <- anova.cca(vegan::capscale(t(phylobj.filter.OTU.sampleselect)~Type,dist="bray",data=metadata.sampleselect),step=1000,permutations=1000,parallel=40)
  OTU_varp_Fertility_sign <- anova.cca(vegan::capscale(t(phylobj.filter.OTU.sampleselect)~Fertility,dist="bray",data=metadata.sampleselect) ,step=1000,permutations=1000,parallel=40)
  OTU_varp_ID_sign <- anova.cca(vegan::capscale(t(phylobj.filter.OTU.sampleselect)~IDunique,dist="bray",data=metadata.sampleselect),step=1000,permutations=1000,parallel=40)
  
 OTU_varp_Type_sign_p <- OTU_varp_Type_sign$`Pr`[1]
 OTU_varp_Fertility_sign_p <- OTU_varp_Fertility_sign$`Pr`[1]
 OTU_varp_ID_sign_p <- OTU_varp_ID_sign$`Pr`[1]
```


```r
genus_varp <- varpart(bray_Genustable_prop,~Type,~Fertility,~IDunique,data=metadata.sampleselect)

  genus_varp
  genus_varp_Type <- genus_varp$part$indfract[1,3]
  genus_varp_Fertility <- genus_varp$part$indfract[2,3]
  genus_varp_ID <- genus_varp$part$indfract[3,3]

  genus_varp_Type_sign <- anova.cca(vegan::capscale(t(phylobj.filter.genus.sampleselect)~Type,dist="bray",data=metadata.sampleselect),step=1000,permutations=1000,parallel=40)
  genus_varp_Fertility_sign <- anova.cca(vegan::capscale(t(phylobj.filter.genus.sampleselect)~Fertility,dist="bray",data=metadata.sampleselect) ,step=1000,permutations=1000,parallel=40)
  genus_varp_ID_sign <- anova.cca(vegan::capscale(t(phylobj.filter.genus.sampleselect)~IDunique,dist="bray",data=metadata.sampleselect),step=1000,permutations=1000,parallel=40)
  
 genus_varp_Type_sign_p <- genus_varp_Type_sign$`Pr`[1]
 genus_varp_Fertility_sign_p <- genus_varp_Fertility_sign$`Pr`[1]
 genus_varp_ID_sign_p <- genus_varp_ID_sign$`Pr`[1]
```


```r
tiff("./Figures_Kim/varpart_OTU.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
plot(OTU_varp,digits=1,bg = fifteencolors,Xnames=c("Type","Fertility","ID"))
dev.off()

tiff("./Figures_Kim/varpart_GENUS.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
plot(genus_varp,digits=1,bg = fifteencolors,Xnames=c("Type","Fertility","ID"))
dev.off()

OTU_varp_img <- image_read("./Figures_Kim/varpart_OTU.tiff")
Genus_varp_img <- image_read("./Figures_Kim/varpart_GENUS.tiff")

plot_grid(image_ggplot(OTU_varp_img),image_ggplot(Genus_varp_img),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5)
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/varpart-at-OTU-and-genus-level-plotting-1.png" alt="Variation partitioning Venn diagram displaying the adjusted R squared value indicating the explanatory power of the metadata design variables and their interactions (intersections of the diagram) with respect to the observed variation in the OTU resp. genus level relative microbial community composition."  />
<p class="caption">(\#fig:varpart-at-OTU-and-genus-level-plotting)Variation partitioning Venn diagram displaying the adjusted R squared value indicating the explanatory power of the metadata design variables and their interactions (intersections of the diagram) with respect to the observed variation in the OTU resp. genus level relative microbial community composition.</p>
</div>

```r
tiff("./Figures_Kim/varpart_GENUS_OTU.tiff",width=12*dpi,height=6*dpi,res=dpi,compression="lzw")
plot_grid(image_ggplot(OTU_varp_img),image_ggplot(Genus_varp_img),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5)
dev.off()
```


```r
# Homogeneity of the within-group variance-covariance matrixes. Assumptions met for all factors
Type_betadisper <- betadisper(vegdist(t(phylobj.filter.OTU.sampleselect),method="bray"),metadata.sampleselect$Type)
anova(Type_betadisper)
permutest(Type_betadisper)
plot(Type_betadisper)
```

```r
boxplot(Type_betadisper)
```

```r
Fertility_betadisper <- betadisper(vegdist(t(phylobj.filter.OTU.sampleselect),method="bray"),metadata.sampleselect$Fertility)
anova(Fertility_betadisper)
permutest(Fertility_betadisper)
plot(Fertility_betadisper)
```

```r
boxplot(Fertility_betadisper)
```

```r
ID_betadisper <- betadisper(vegdist(t(phylobj.filter.OTU.sampleselect),method="bray"),metadata.sampleselect$IDunique)
anova(ID_betadisper)
permutest(ID_betadisper)
plot(ID_betadisper)
```

```r
boxplot(ID_betadisper)
```

```r
# Formula RDA to test all explanatory variables and possible interactions
RDA_global_OTU <- vegan::capscale(t(phylobj.filter.OTU.sampleselect)~Type+Fertility+IDunique,dist="bray",data=metadata.sampleselect) 
RDA_global_OTU 
summary(RDA_global_OTU)
coef(RDA_global_OTU)  
Dim1 <- round(summary(RDA_global_OTU)$cont$importance[2,1]*100,2) # concont is the constrained fraction of the eigenvalues 
Dim2 <- round(summary(RDA_global_OTU)$cont$importance[2,2]*100,2) # concont is the constrained fraction of the eigenvalues 

barplot(summary(RDA_global_OTU)$cont$importance[1,], names = colnames(summary(RDA_global_OTU)$cont$importance), las = 3, ylab = 'eigenvalues')
```

```r
# Permutation test of the results
anova.cca(RDA_global_OTU,step=1000,permutations=1000,parallel=40)
#anova.cca(RDA_global_OTU,by="axis",step=1000,permutations=1000,parallel=40)
anova.cca(RDA_global_OTU,by="term",step=1000,permutations=1000,parallel=40)

# Explanatory power of the variables included
Runadj <- RsquareAdj(RDA_global_OTU)$r.squared
Radj <- RsquareAdj(RDA_global_OTU)$adj.r.squared
Radj

# Plotting the results using scaling 1 
plot(RDA_global_OTU,scaling=1,main="Triplot RDA - scaling 1 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_global_OTU,scaling=1,main="Triplot - scaling 1 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_global_OTU_scores_scaling1 <- data.frame(scores(RDA_global_OTU,choices=1:2,scaling=1,display="sites"))
RDA_global_OTU_var_scaling1 <- data.frame(scores(RDA_global_OTU,choices=1:2,scaling=1,display="species"))
RDA_global_OTU_var_scaling1_distance <- mutate(RDA_global_OTU_var_scaling1,Dist=sqrt(RDA_global_OTU_var_scaling1[,1]^2+RDA_global_OTU_var_scaling1[,2]^2),Abundance=rowSums(phylobj.filter.OTU.sampleselect))
RDA_global_OTU_constraint_scaling1 <- data.frame(summary(RDA_global_OTU)$centroids)
rownames(RDA_global_OTU_constraint_scaling1) <- gsub("Type","Type ",rownames(RDA_global_OTU_constraint_scaling1))
rownames(RDA_global_OTU_constraint_scaling1) <- gsub("Fertility","Fertility ",rownames(RDA_global_OTU_constraint_scaling1))
rownames(RDA_global_OTU_constraint_scaling1) <- gsub("ID","ID ",rownames(RDA_global_OTU_constraint_scaling1))

# Plotting the results using scaling 2 
plot(RDA_global_OTU,scaling=2,main="Triplot RDA - scaling 2 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_global_OTU,scaling=2,main="Triplot - scaling 2 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_global_OTU_scores_scaling2 <- data.frame(scores(RDA_global_OTU,choices=1:2,scaling=2,display="sites"))
RDA_global_OTU_var_scaling2 <- data.frame(scores(RDA_global_OTU,choices=1:2,scaling=2,display="species"))
RDA_global_OTU_var_scaling2_distance <- mutate(RDA_global_OTU_var_scaling2,Dist=sqrt(RDA_global_OTU_var_scaling2[,1]^2+RDA_global_OTU_var_scaling2[,2]^2),Abundance=rowSums(phylobj.filter.OTU.sampleselect))
RDA_global_OTU_constraint_scaling2 <- data.frame(summary(RDA_global_OTU)$centroids)
rownames(RDA_global_OTU_constraint_scaling2) <- gsub("Type","Type ",rownames(RDA_global_OTU_constraint_scaling2))
rownames(RDA_global_OTU_constraint_scaling2) <- gsub("Fertility","Fertility ",rownames(RDA_global_OTU_constraint_scaling2))
rownames(RDA_global_OTU_constraint_scaling2) <- gsub("ID","ID ",rownames(RDA_global_OTU_constraint_scaling2))
```
  

```r
# Most abundant taxa to plot
select_top_taxa <- RDA_global_OTU_var_scaling2_distance$Abundance
taxaforplot <- tibble::rownames_to_column(data.frame(RDA_global_OTU_var_scaling2_distance))
taxaforplot$rowname <- gsub("OTU","",taxaforplot$rowname)
taxaforplot <- as.data.frame(taxaforplot  %>% top_n(13,select_top_taxa))
rownames(taxaforplot) <- taxaforplot[,1]
taxaforplot <- taxaforplot[,-1] 
rownames(taxaforplot) <- gsub("Otu[0]+","OTU\\",rownames(taxaforplot))

# Centroids to plot
centroidsforplot <- RDA_global_OTU_constraint_scaling2[c(1:4),]

# ggplot visualization
RDA_global_OTU_plot <- RDAplot(RDA_global_OTU_scores_scaling2,taxaforplot,centroidsforplot,metadata.sampleselect$IDunique,ID_14,metadata.sampleselect$IDunique,ID_14,"Subject",Dim1,Dim2,1,4)

# Add explanatory power 
RDA_global_OTU_plot <- RDA_global_OTU_plot + geom_text(aes(x=Inf,y=Inf,vjust=1, hjust=1),label=paste("R[adj~ID]^2","==",round(OTU_varp_ID,2)),parse=TRUE)
RDA_global_OTU_plot <- RDA_global_OTU_plot + geom_text(aes(x=Inf,y=Inf,vjust=2, hjust=1),label=paste("R[adj~Fertility]^2","==",round(OTU_varp_Fertility,3)),parse=TRUE)
RDA_global_OTU_plot <- RDA_global_OTU_plot + geom_text(aes(x=Inf,y=Inf,vjust=3, hjust=1),label=paste("R[adj~Type]^2","==",round(OTU_varp_Type,3)),parse=TRUE)
RDA_global_OTU_plot
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Global-dbRDA-at-OTU-level-plotting-1.png" alt="Global redundancy analysis type II scaling correlation triplot with the response variables (most abundant OTUs) indicated in red and the different factors represented by centroid factor levels in blue. All factors in the global model significantly contributed to the variation in relative microbial community composition, albeit the negligible explanatory power (R^2^ adjusted) of the Sample type and Fertility status."  />
<p class="caption">(\#fig:Global-dbRDA-at-OTU-level-plotting)Global redundancy analysis type II scaling correlation triplot with the response variables (most abundant OTUs) indicated in red and the different factors represented by centroid factor levels in blue. All factors in the global model significantly contributed to the variation in relative microbial community composition, albeit the negligible explanatory power (R^2^ adjusted) of the Sample type and Fertility status.</p>
</div>
 

```r
# Homogeneity of the within-group variance-covariance matrixes. Assumptions met for all factors
Type_betadisper <- betadisper(vegdist(t(phylobj.filter.genus.sampleselect),method="bray"),metadata.sampleselect$Type)
anova(Type_betadisper)
permutest(Type_betadisper)
plot(Type_betadisper)
```

```r
boxplot(Type_betadisper)
```

```r
Fertility_betadisper <- betadisper(vegdist(t(phylobj.filter.genus.sampleselect),method="bray"),metadata.sampleselect$Fertility)
anova(Fertility_betadisper)
permutest(Fertility_betadisper)
plot(Fertility_betadisper)
```

```r
boxplot(Fertility_betadisper)
```

```r
ID_betadisper <- betadisper(vegdist(t(phylobj.filter.genus.sampleselect),method="bray"),metadata.sampleselect$IDunique)
anova(ID_betadisper)
permutest(ID_betadisper)
plot(ID_betadisper)
```

```r
boxplot(ID_betadisper)
```

```r
# Formula RDA to test all explanatory variables and possible interactions
RDA_global_genus <- vegan::capscale(t(phylobj.filter.genus.sampleselect)~Type+Fertility+IDunique,dist="bray",data=metadata.sampleselect) 
RDA_global_genus 
summary(RDA_global_genus)
coef(RDA_global_genus)  
Dim1 <- round(summary(RDA_global_genus)$cont$importance[2,1]*100,2) # concont is the constrained fraction of the eigenvalues 
Dim2 <- round(summary(RDA_global_genus)$cont$importance[2,2]*100,2) # concont is the constrained fraction of the eigenvalues 

barplot(summary(RDA_global_genus)$cont$importance[1,], names = colnames(summary(RDA_global_genus)$cont$importance), las = 3, ylab = 'eigenvalues')
```

```r
# Permutation test of the results
anova.cca(RDA_global_genus,step=1000,permutations=1000,parallel=40)
#anova.cca(RDA_global_genus,by="axis",step=1000,permutations=1000,parallel=40)
anova.cca(RDA_global_genus,by="term",step=1000,permutations=1000,parallel=40)

# Explanatory power of the variables included
Runadj <- RsquareAdj(RDA_global_genus)$r.squared
Radj <- RsquareAdj(RDA_global_genus)$adj.r.squared
Radj

# Plotting the results using scaling 1 
plot(RDA_global_genus,scaling=1,main="Triplot RDA - scaling 1 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_global_genus,scaling=1,main="Triplot - scaling 1 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_global_genus_scores_scaling1 <- data.frame(scores(RDA_global_genus,choices=1:2,scaling=1,display="sites"))
RDA_global_genus_var_scaling1 <- data.frame(scores(RDA_global_genus,choices=1:2,scaling=1,display="species"))
RDA_global_genus_var_scaling1_distance <- mutate(RDA_global_genus_var_scaling1,Dist=sqrt(RDA_global_genus_var_scaling1[,1]^2+RDA_global_genus_var_scaling1[,2]^2),Abundance=rowSums(phylobj.filter.genus.sampleselect))
RDA_global_genus_constraint_scaling1 <- data.frame(summary(RDA_global_genus)$centroids)
rownames(RDA_global_genus_constraint_scaling1) <- gsub("Type","Type ",rownames(RDA_global_genus_constraint_scaling1))
rownames(RDA_global_genus_constraint_scaling1) <- gsub("Fertility","Fertility ",rownames(RDA_global_genus_constraint_scaling1))
rownames(RDA_global_genus_constraint_scaling1) <- gsub("ID","ID ",rownames(RDA_global_genus_constraint_scaling1))

# Plotting the results using scaling 2 
plot(RDA_global_genus,scaling=2,main="Triplot RDA - scaling 2 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_global_genus,scaling=2,main="Triplot - scaling 2 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_global_genus_scores_scaling2 <- data.frame(scores(RDA_global_genus,choices=1:2,scaling=2,display="sites"))
RDA_global_genus_var_scaling2 <- data.frame(scores(RDA_global_genus,choices=1:2,scaling=2,display="species"))
RDA_global_genus_var_scaling2_distance <- mutate(RDA_global_genus_var_scaling2,Dist=sqrt(RDA_global_genus_var_scaling2[,1]^2+RDA_global_genus_var_scaling2[,2]^2),Abundance=rowSums(phylobj.filter.genus.sampleselect))
RDA_global_genus_constraint_scaling2 <- data.frame(summary(RDA_global_genus)$centroids)
rownames(RDA_global_genus_constraint_scaling2) <- gsub("Type","Type ",rownames(RDA_global_genus_constraint_scaling2))
rownames(RDA_global_genus_constraint_scaling2) <- gsub("Fertility","Fertility ",rownames(RDA_global_genus_constraint_scaling2))
rownames(RDA_global_genus_constraint_scaling2) <- gsub("ID","ID ",rownames(RDA_global_genus_constraint_scaling2))
```
  

```r
# Most abundant taxa to plot
select_top_taxa <- RDA_global_genus_var_scaling2_distance$Abundance
taxaforplot <- tibble::rownames_to_column(data.frame(RDA_global_genus_var_scaling2_distance))
taxaforplot$rowname <- gsub("genus","",taxaforplot$rowname)
taxaforplot <- as.data.frame(taxaforplot  %>% top_n(15,select_top_taxa))
rownames(taxaforplot) <- taxaforplot[,1]
taxaforplot <- taxaforplot[,-1] 

# Centroids to plot
centroidsforplot <- RDA_global_genus_constraint_scaling2[c(1:4),]

# ggplot visualization
RDA_global_genus_plot <- RDAplot(RDA_global_genus_scores_scaling2,taxaforplot,centroidsforplot,metadata.sampleselect$IDunique,ID_14,metadata.sampleselect$IDunique,ID_14,"Subject",Dim1,Dim2,1,4)

# Add explanatory power 
RDA_global_genus_plot <- RDA_global_genus_plot + geom_text(aes(x=0.8,y=Inf,vjust=1, hjust=0),label=paste("R[adj~ID]^2","==",round(genus_varp_ID,2)),parse=TRUE)
RDA_global_genus_plot <- RDA_global_genus_plot + geom_text(aes(x=0.8,y=Inf,vjust=2, hjust=0),label=paste("R[adj~Fertility]^2","==",round(genus_varp_Fertility,3)),parse=TRUE)
RDA_global_genus_plot <- RDA_global_genus_plot + geom_text(aes(x=0.8,y=Inf,vjust=3, hjust=0),label=paste("R[adj~Type]^2","==",round(genus_varp_Type,3)),parse=TRUE)
RDA_global_genus_plot
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Global-dbRDA-at-genus-level-plotting-1.png" alt="\label{fig:fig23} Global redundancy analysis type II scaling correlation triplot with the response variables (most abundant taxa) indicated in red and the different factors represented by centroid factor levels in blue. All factors in the global model significantly contributed to the variation in relative microbial community composition, albeit the negligible explanatory power (R^2^ adjusted) of the Sample type and Fertility status."  />
<p class="caption">(\#fig:Global-dbRDA-at-genus-level-plotting)\label{fig:fig23} Global redundancy analysis type II scaling correlation triplot with the response variables (most abundant taxa) indicated in red and the different factors represented by centroid factor levels in blue. All factors in the global model significantly contributed to the variation in relative microbial community composition, albeit the negligible explanatory power (R^2^ adjusted) of the Sample type and Fertility status.</p>
</div>
  

```r
tiff("./Figures_Kim/globalRDA_OTU.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
RDA_global_OTU_plot
dev.off()

tiff("./Figures_Kim/globalRDA_GENUS.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
RDA_global_genus_plot
dev.off()

RDA_global_legend <- get_legend(RDA_global_OTU_plot)

plot_grid(plot_grid(RDA_global_OTU_plot+theme(legend.position = "none"),RDA_global_genus_plot+theme(legend.position = "none"),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5),RDA_global_legend,nrow=2,rel_heights = c(0.8,0.2))
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Global-dbRDA-at-OTU-and-genus-level-plotting-1.png" alt="\label{fig:fig24} Global redundancy analysis type II scaling correlation triplot with the response variables (most abundant OTUs resp. genera) indicated in red and the different factors represented by centroid factor levels in blue. All factors in the global model significantly contributed to the variation in relative microbial community composition, albeit the negligible explanatory power (R^2^ adjusted) of the Sample type and Fertility status."  />
<p class="caption">(\#fig:Global-dbRDA-at-OTU-and-genus-level-plotting)\label{fig:fig24} Global redundancy analysis type II scaling correlation triplot with the response variables (most abundant OTUs resp. genera) indicated in red and the different factors represented by centroid factor levels in blue. All factors in the global model significantly contributed to the variation in relative microbial community composition, albeit the negligible explanatory power (R^2^ adjusted) of the Sample type and Fertility status.</p>
</div>

```r
tiff("./Figures_Kim/globalRDA_GENUS_OTU.tiff",width=12*dpi,height=6*dpi,res=dpi,compression="lzw")
plot_grid(plot_grid(RDA_global_OTU_plot+theme(legend.position = "none"),RDA_global_genus_plot+theme(legend.position = "none"),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5),RDA_global_legend,nrow=2,rel_heights = c(0.8,0.2))
dev.off()
```
  
  

```r
# Formula RDA to test 
RDA_partial_OTU <- vegan::capscale(t(phylobj.filter.OTU.sampleselect)~Type+Condition(IDunique),dist="jaccard",data=metadata.sampleselect) 
RDA_partial_OTU 
summary(RDA_partial_OTU)
coef(RDA_partial_OTU)  
Dim1 <- round(summary(RDA_partial_OTU)$cont$importance[2,1]*100,2) # concont is the constrained fraction of the eigenvalues 
Dim2 <- round(summary(RDA_partial_OTU)$cont$importance[2,2]*100,2) # concont is the constrained fraction of the eigenvalues 

barplot(summary(RDA_partial_OTU)$cont$importance[1,], names = colnames(summary(RDA_partial_OTU)$cont$importance), las = 3, ylab = 'eigenvalues')
```

```r
# Permutation test of the results
p <- anova.cca(RDA_partial_OTU,step=1000,permutations=1000,parallel=40)
#anova.cca(RDA_partial_OTU,by="axis",step=1000,permutations=1000,parallel=40)
anova.cca(RDA_partial_OTU,by="term",step=1000,permutations=1000,parallel=40)
p_partial_OTU <- anova.cca(RDA_partial_OTU,by="term",step=1000,permutations=1000,parallel=40)$`Pr`[1]

# Explanatory power of the variables included
Runadj <- RsquareAdj(RDA_partial_OTU)$r.squared
Radj <- RsquareAdj(RDA_partial_OTU)$adj.r.squared
Radj_OTU <- Radj

# Plotting the results using scaling 1 
plot(RDA_partial_OTU,scaling=1,main="Triplot RDA - scaling 1 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_partial_OTU,scaling=1,main="Triplot - scaling 1 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_partial_OTU_scores_scaling1 <- data.frame(scores(RDA_partial_OTU,choices=1:2,scaling=1,display="sites"))
RDA_partial_OTU_var_scaling1 <- data.frame(scores(RDA_partial_OTU,choices=1:2,scaling=1,display="species"))
RDA_partial_OTU_var_scaling1_distance <- mutate(RDA_partial_OTU_var_scaling1,Dist=sqrt(RDA_partial_OTU_var_scaling1[,1]^2+RDA_partial_OTU_var_scaling1[,2]^2),Abundance=rowSums(phylobj.filter.OTU.sampleselect))
RDA_partial_OTU_constraint_scaling1 <- data.frame(summary(RDA_partial_OTU)$centroids)
rownames(RDA_partial_OTU_constraint_scaling1) <- gsub("Sporebiotics","",rownames(RDA_partial_OTU_constraint_scaling1))

# Plotting the results using scaling 2 
plot(RDA_partial_OTU,scaling=2,main="Triplot RDA - scaling 2 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_partial_OTU,scaling=2,main="Triplot - scaling 2 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_partial_OTU_scores_scaling2 <- data.frame(scores(RDA_partial_OTU,choices=1:2,scaling=2,display="sites"))
RDA_partial_OTU_var_scaling2 <- data.frame(scores(RDA_partial_OTU,choices=1:2,scaling=2,display="species"))
RDA_partial_OTU_var_scaling2_distance <- mutate(RDA_partial_OTU_var_scaling2,Dist=sqrt(RDA_partial_OTU_var_scaling2[,1]^2+RDA_partial_OTU_var_scaling2[,2]^2),Abundance=rowSums(phylobj.filter.OTU.sampleselect))
RDA_partial_OTU_constraint_scaling2 <- data.frame(summary(RDA_partial_OTU)$centroids)
rownames(RDA_partial_OTU_constraint_scaling2) <- gsub("Sporebiotics","Sporebiotics ",rownames(RDA_partial_OTU_constraint_scaling2))
```
  

```r
# Most abundant taxa to plot
select_top_taxa <- RDA_partial_OTU_var_scaling2_distance$Abundance
taxaforplot <- tibble::rownames_to_column(data.frame(RDA_partial_OTU_var_scaling2_distance))
taxaforplot$rowname <- gsub("OTU","",taxaforplot$rowname)
taxaforplot <- as.data.frame(taxaforplot  %>% top_n(10,select_top_taxa))
rownames(taxaforplot) <- taxaforplot[,1]
taxaforplot <- taxaforplot[,-1] 
rownames(taxaforplot) <- gsub("Otu[0]+","OTU\\",rownames(taxaforplot))

# ggplot visualization
RDA_TypeFertility_OTU_plot <- RDAplot(RDA_partial_OTU_scores_scaling2,taxaforplot,RDA_partial_OTU_constraint_scaling2,metadata.sampleselect$IDunique,rep("#000000",14),metadata.sampleselect$TypeFertility,FertilityType_4,"Type",Dim1,Dim2,4,2) 

RDA_TypeFertility_OTU_plot <- RDA_TypeFertility_OTU_plot + geom_text(aes(x=-Inf,y=Inf,vjust=1, hjust=0),label=paste("R[adj~Sample~type]^2","==",round(Radj_OTU,2)),parse=TRUE)
RDA_TypeFertility_OTU_plot <- RDA_TypeFertility_OTU_plot + geom_text(aes(x=-Inf,y=Inf,vjust=2, hjust=0),label=paste("R[adj~Conditional]^2","==",round(OTU_varp$part$fract[3,3],2)),parse=TRUE)
#RDA_TypeFertility_OTU_plot
```


```r
# 0% variance explained by fertility 
# Formula RDA to test 
RDA_partial_genus <- vegan::capscale(t(phylobj.filter.genus.sampleselect)~Type+Condition(IDunique),dist="jaccard",data=metadata.sampleselect) 
RDA_partial_genus 
summary(RDA_partial_genus)
coef(RDA_partial_genus)  
Dim1 <- round(summary(RDA_partial_genus)$cont$importance[2,1]*100,2) # concont is the constrained fraction of the eigenvalues 
Dim2 <- round(summary(RDA_partial_genus)$cont$importance[2,2]*100,2) # concont is the constrained fraction of the eigenvalues 

barplot(summary(RDA_partial_genus)$cont$importance[1,], names = colnames(summary(RDA_partial_genus)$cont$importance), las = 3, ylab = 'eigenvalues')
```

```r
# Permutation test of the results
p <- anova.cca(RDA_partial_genus,step=1000,permutations=1000,parallel=40)
#anova.cca(RDA_partial_genus,by="axis",step=1000,permutations=1000,parallel=40)
anova.cca(RDA_partial_genus,by="term",step=1000,permutations=1000,parallel=40)
p_partial_genus <- anova.cca(RDA_partial_genus,by="term",step=1000,permutations=1000,parallel=40)$`Pr`[1]

# Explanatory power of the variables included
Runadj <- RsquareAdj(RDA_partial_genus)$r.squared
Radj <- RsquareAdj(RDA_partial_genus)$adj.r.squared
Radj_genus <- Radj

# Plotting the results using scaling 1 
plot(RDA_partial_genus,scaling=1,main="Triplot RDA - scaling 1 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_partial_genus,scaling=1,main="Triplot - scaling 1 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_partial_genus_scores_scaling1 <- data.frame(scores(RDA_partial_genus,choices=1:2,scaling=1,display="sites"))
RDA_partial_genus_var_scaling1 <- data.frame(scores(RDA_partial_genus,choices=1:2,scaling=1,display="species"))
RDA_partial_genus_var_scaling1_distance <- mutate(RDA_partial_genus_var_scaling1,Dist=sqrt(RDA_partial_genus_var_scaling1[,1]^2+RDA_partial_genus_var_scaling1[,2]^2),Abundance=rowSums(phylobj.filter.genus.sampleselect))
RDA_partial_genus_constraint_scaling1 <- data.frame(summary(RDA_partial_genus)$centroids)
rownames(RDA_partial_genus_constraint_scaling1) <- gsub("Sporebiotics","",rownames(RDA_partial_genus_constraint_scaling1))

# Plotting the results using scaling 2 
plot(RDA_partial_genus,scaling=2,main="Triplot RDA - scaling 2 ",type = "text",display=c("sp","wa","cn"))
```

```r
plot(RDA_partial_genus,scaling=2,main="Triplot - scaling 2 ",type = "text",display=c("sp","lc","cn"))
```

```r
# Extract values to plot with ggplot2
RDA_partial_genus_scores_scaling2 <- data.frame(scores(RDA_partial_genus,choices=1:2,scaling=2,display="sites"))
RDA_partial_genus_var_scaling2 <- data.frame(scores(RDA_partial_genus,choices=1:2,scaling=2,display="species"))
RDA_partial_genus_var_scaling2_distance <- mutate(RDA_partial_genus_var_scaling2,Dist=sqrt(RDA_partial_genus_var_scaling2[,1]^2+RDA_partial_genus_var_scaling2[,2]^2),Abundance=rowSums(phylobj.filter.genus.sampleselect))
RDA_partial_genus_constraint_scaling2 <- data.frame(summary(RDA_partial_genus)$centroids)
rownames(RDA_partial_genus_constraint_scaling2) <- gsub("Sporebiotics","Sporebiotics ",rownames(RDA_partial_genus_constraint_scaling2))
```
  

```r
# Most abundant taxa to plot
select_top_taxa <- RDA_partial_genus_var_scaling2_distance$Abundance
taxaforplot <- tibble::rownames_to_column(data.frame(RDA_partial_genus_var_scaling2_distance))
taxaforplot$rowname <- gsub("genus","",taxaforplot$rowname)
taxaforplot <- as.data.frame(taxaforplot  %>% top_n(10,select_top_taxa))
rownames(taxaforplot) <- taxaforplot[,1]
taxaforplot <- taxaforplot[,-1] 
rownames(taxaforplot) <- gsub("genus[0]+","genus\\",rownames(taxaforplot))

# ggplot visualization
RDA_TypeFertility_genus_plot <- RDAplot(RDA_partial_genus_scores_scaling2,taxaforplot,RDA_partial_genus_constraint_scaling2,metadata.sampleselect$IDunique,rep("#000000",14),metadata.sampleselect$TypeFertility,FertilityType_4,"Type",Dim1,Dim2,4,constraintlevel=2)

RDA_TypeFertility_genus_plot <- RDA_TypeFertility_genus_plot + geom_text(aes(x=Inf,y=Inf,vjust=1, hjust=1),label=paste("R[adj~Sample~type]^2","==",round(Radj_genus,2)),parse=TRUE)
RDA_TypeFertility_genus_plot <- RDA_TypeFertility_genus_plot + geom_text(aes(x=Inf,y=Inf,vjust=2, hjust=1),label=paste("R[adj~Conditional]^2","==",round(genus_varp$part$fract[3,3],2)),parse=TRUE)
#RDA_TypeFertility_genus_plot
```


```r
tiff("./Figures_Kim/partialRDA_OTU.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
RDA_TypeFertility_OTU_plot
dev.off()

tiff("./Figures_Kim/partialRDA_GENUS.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
RDA_TypeFertility_genus_plot
dev.off()

RDA_partial_legend <- get_legend(RDA_TypeFertility_OTU_plot)

plot_grid(plot_grid(RDA_TypeFertility_OTU_plot+theme(legend.position = "none"),RDA_TypeFertility_genus_plot+theme(legend.position = "none"),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5),RDA_partial_legend,nrow=2,rel_heights = c(0.8,0.2))
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/Partial-dbRDA-at-OTU-and-genus-level-plotting-1.png" alt="\label{fig:fig27} Partial redundancy analysis type II scaling correlation triplot with the response variables (most abundant OTUs resp. genera) indicated in red and Sample type represented by centroid factor levels in blue. Sample type significantly contributes to the conditional (on the Subject) variation in relative microbial community composition."  />
<p class="caption">(\#fig:Partial-dbRDA-at-OTU-and-genus-level-plotting)\label{fig:fig27} Partial redundancy analysis type II scaling correlation triplot with the response variables (most abundant OTUs resp. genera) indicated in red and Sample type represented by centroid factor levels in blue. Sample type significantly contributes to the conditional (on the Subject) variation in relative microbial community composition.</p>
</div>

```r
tiff("./Figures_Kim/partialRDA_GENUS_OTU.tiff",width=12*dpi,height=6*dpi,res=dpi,compression="lzw")
plot_grid(plot_grid(RDA_TypeFertility_OTU_plot+theme(legend.position = "none"),RDA_TypeFertility_genus_plot+theme(legend.position = "none"),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5),RDA_partial_legend,nrow=2,rel_heights = c(0.8,0.2))
dev.off()
```

### Interpretation    
Variation partitioning (Figure \@ref(fig:varpart-at-OTU-and-genus-level-plotting)) identified the factor subject as the main driver of the OTU level microbial community variation with a significant (p= 0.001) contribution of 68.63 %. The explanatory power (R^2^ adjusted) of the Sample type (5.88 %, p= 0.31) and Fertility status (0%, p= 0.23) is negligible and not significant. 

At the genus level, inter-individual variability explained only 37.38 % of the variation in the microbial community composition (p= 0.02). In contrast, a larger fraction of the variation (18.03 %, p= 0.01) could be attributed to differences between the endometrial and vaginal sample types. Fertility status had no significant impact on the genus level microbiota composition (0%, p= 0.1) (Figure \@ref(fig:varpart-at-OTU-and-genus-level-plotting)). 

The trends are confirmed and visualized by combining all factors in a global RDA. The largest fraction of the variation can be attributed to inter-individual differences (R^2^ adjusted= 68.63%) and EF and RIF samples cluster by subject ID (Figure \@ref(fig:Global-dbRDA-at-OTU-and-genus-level-plotting)). Three community types are apparent. Individuals 2, 10 and 12 have a reproductive tract community dominated by OTU2 and to a lesser extent OTU 6. OTU 1 and 10 prevail in the endometrial and vaginal microbiota of individuals 3, 4, 8, 13 and 14. The microbial community in subjects 1, 5, 9 and 11 is enriched in a number of OTUs including OTU5, OTU4, OTU3, OTU9, OTU7, OTU8, OTU14, OTU16, OTU18. 

At the genus level, the individual based grouping is preserved for some individuals (2,6,10,14) with a dominating _Lactobacillus_ signature and subject 5 marked by a high BVAB1, _Garnerella_ and _Prevotella_ presence, while other individuals are no longer aggregated (1,3,4,7,8,9,11,13). Instead, the endometrial fluid and vaginal secretion samples of those individuals are distinguished from one another. The separation becomes more clear in a partial distance based redundancy analysis conditional on the inter-individual variability (Figure \@ref(fig:Partial-dbRDA-at-OTU-and-genus-level-plotting)). As the explanatory power of the fertility status constraint was 0, a partial model containing only the Sample type was examined. The effect size (R^2^ adjusted) of the Sample type amounted to 17% and was significant (p= 0.003). A similar significant (p= 0.01) trend was observed at the OTU level (R^2^ adjusted= 5%). _Lactobacillus_ related OTUs (OTU1,OTU2,OTU5,OTU6), _Candidatus Lachnocurva vaginae_ OTU3 and _Gardnerella_ OTU4 are associated with the vaginal samples. _Cutibacterium_ OTU9, _Microbacterium_ OTU10 and _Streptococcus_ OTU14 are more characteristic of the endometerial samples. _Micrococcus_ OTU 18 occurs at a higher abundance in the EF sample from RIF subject 11.

<!-- OTU _Lactobacillus_ OTU6 is more abundant in vaginal and endometrial fluid (EF) -->
<!-- samples of women with Repeated Implantation Failure (RIF). -->

Note: The above trends can also be observed when inspecting the OTU and genus bargraphs. 

## Sparse Partial Least Squares Discriminant Analysis (sPLS-DA)

### Materials and methods
Sparse Partial Least Squares Discriminant Analysis (sPLS-DA) was performed to select the features most predictive for the class membership of samples with respect to the Sample type (EF-VS), which was identified to contribute significantly to the variation in community composition in a partial dbRDA. The R package mixOmics6.14.0 was used with some adjustments to cope with the compositional nature of microbial community data (MixMC). A Centered Log Ratio transformation (CLR) was applied on the raw (unnormalized) pre-filtered data with an offset of 1 [@LeCao2016]. 

Considering the inter-individual differences, a repeated measurement design (a subject was repeatedly sampled to obtain EF and VS) was incorporated into the sPLS-DA model, analogous to the partial dbRDA. The number of components and taxonomic features (at OTU resp. genus level) to include in the model was assessed based on the classification error rates obtained
after a five-fold cross-validation. The final sPLS-DA ordination, showing the differences between the Sample types, was displayed in 2D (ggplot 2 3.3.2). The CLR transformed abundances of the most predictive taxa were represented in a heatmap (ComplexHeatmap 2.6.2), alongside a histogram of effect sizes (loadings) denoting the importance of the most discriminative OTUs and genera in distinguishing EF and VS samples. A color fill indicates the sample group with the highest mean abundance. 

### Results


```r
  sPLSDAplot <- function(PLSDAcoordinates,label,labelcolor,colordesign,colorvector,designfactorname,Dim1,Dim2,pointsize,ellipse=FALSE){ 
  plotobj <- ggplot(PLSDAcoordinates)+geom_point(aes(x=comp1,y=comp2,color=colordesign),size=pointsize,alpha=0.5) 
  plotobj <- plotobj + scale_colour_manual(values=colorvector,name=designfactorname) + xlab(paste('RDA Dim1',Dim1,'%',sep=" ")) + ylab(paste('RDA Dim2',Dim2,'%',sep=" ")) 
  plotobj <- papertheme(plotobj,sizeselect=10) 
  plotobj <- plotobj + geom_text_repel(data=PLSDAcoordinates,aes(x=comp1,y=comp2,label=label),color=mapvalues(label,from=levels(label),to=labelcolor),size=3,alpha=1,show.legend=FALSE,max.overlaps=30)
  #plotobj <- plotobj + geom_text(data=RDAscores,aes(x=CAP1,y=CAP2,label=colordesign,color=colordesign),size=3,alpha=1,show.legend=FALSE) + theme(legend.position = "none")
  if(ellipse==TRUE){plotobj <- plotobj + stat_ellipse(aes(x=comp1,y=comp2,color=colordesign),type="norm",level=0.95,show.legend=FALSE,linetype = 2)}
  plotobj <- plotobj + guides(colour=guide_legend(nrow=2))
  return(plotobj)
 }
```


```r
# Note: as the CLR already divides each count by the geometric mean, it does not make a difference whether we apply TSS + CLR, or CLR on the count (filtered) data directly
# Add an offset to the data
MixMCdata <- data.frame(otu_table(phylobj.filter)+1)
# Verify that no zeroes are present in the data
sum(which(MixMCdata  == 0))
# Look at read counts in all samples
barplot(colSums(MixMCdata))
```

![](REPORT_versionKim_files/figure-html/Input-MixMC-OTU-raw-data-with-offset-1-1.png)<!-- -->

```r
# function to perform additional pre-filtering according to Qiime standards
# samples in rows and taxa in columns
low.count.removal = function(
                        data, # OTU count data frame of size n (sample) x p (OTU)
                        percent=0.01 # cutoff chosen
                        ){
    keep.otu = which(colSums(data)*100/(sum(colSums(data))) > percent)
    data.filter = data[,keep.otu]
    return(list(data.filter = data.filter, keep.otu = keep.otu))
}
MixMCdata <- low.count.removal(t(MixMCdata), percent=0.01)$data.filter

# Either logratio transform with an external function (no need to add an offset if this was already done manually). This function can start from either proportions (in which case you need to provide a TINY offset) or raw data. LCR can also be obtained in the PCA and sPLS-DA functions right away starting from the raw data 
MixMCdata.clr <- logratio.transfo(MixMCdata, logratio = 'CLR', offset = 0) 
class(MixMCdata.clr) <- "matrix"

# Input to the Mixomics models
X_otu <- MixMCdata.clr
Y_otu <- metadata.sampleselect$Type
sample <- metadata.sampleselect$IDunique
```


```r
# On the already transformed data 
pca.result <- pca(X_otu,ncomp=10, multilevel = sample)
```

```
## Splitting the variation for 1 level factor.
```

```r
#=  On the offseted data 
# pca.result <- pca(t(MixMCdata), logratio = 'CLR')

# Plot the results 
plot(pca.result)
```

![](REPORT_versionKim_files/figure-html/PCA-MixMC-OTU-1.png)<!-- -->

```r
plotIndiv(pca.result, group = metadata.sampleselect$TypeFertility, title = 'PCA on CLR transformed offsetted data',col.per.group=FertilityType_4)
```

![](REPORT_versionKim_files/figure-html/PCA-MixMC-OTU-2.png)<!-- -->

```r
plotVar(pca.result, comp = c(1, 2),var.names = list(tax_table(phylobj.filter)[,"Class"]),cutoff = 0.5,cex = 2,title = 'PCA comp 1 - 2')
```

![](REPORT_versionKim_files/figure-html/PCA-MixMC-OTU-3.png)<!-- -->


```r
## Initial model 
plsda.result <- plsda(X_otu,Y_otu, ncomp = 10,multilevel=sample) 
# equivalent to plsda(MiX_otuMCdata,metadata.sampleselect$TY_otupeFertilitY_otu, ncomp = 10, logratio = 'CLR') 

## Select optimal number of components 
set.seed(2543) 
perf.plsda.result <- perf(plsda.result, validation = "Mfold", folds = 5,progressBar=FALSE,auc=TRUE,nrepeat=100) 
plot(perf.plsda.result, col = color.mixo(5:7), sd = TRUE, legend.position = "horizontal") # 3 components are ideal for the PLS-DA model
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-1.png)<!-- -->

```r
## Optimal PLS-DA model
plsda.result <- plsda(X_otu,Y_otu, ncomp = 3,multilevel=sample)
plotIndiv(plsda.result, group = Y_otu, title = 'PLS-DA on CLR transformed offsetted data',ellipse=FALSE,comp=c(1,2),col.per.group=Type_2)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-2.png)<!-- -->

```r
plotIndiv(plsda.result, group = Y_otu, title = 'PLS-DA on CLR transformed offsetted data',ellipse=FALSE,comp=c(1,3),col.per.group=Type_2)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-3.png)<!-- -->

```r
plotIndiv(plsda.result, group = Y_otu, title = 'PLS-DA on CLR transformed offsetted data',ellipse=FALSE,comp=c(2,3),col.per.group=Type_2)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-4.png)<!-- -->

```r
## Select number of variables to retain 
list.keepX_otu <- c(1:ncol(X_otu))
tune.splsda <- tune.splsda(X_otu,Y_otu, ncomp = 3, validation = 'Mfold', folds = 5,progressBar = FALSE, dist = 'max.dist', measure = "BER",test.keepX = list.keepX_otu,nrepeat = 100,cpus=40,multilevel=sample)
tune.splsda
plot(tune.splsda)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-5.png)<!-- -->

```r
error <- tune.splsda$error.rate
ncomp <- tune.splsda$choice.ncomp$ncomp
select.keepX_otu <- tune.splsda$choice.keepX[1:2]  
select.keepX_otu

# Final model
splsda_final.result <- splsda(X_otu, Y_otu, ncomp = 2, keepX = select.keepX_otu, multilevel = sample)
plotIndiv(splsda_final.result, group = Y_otu, title = 'PLS-DA on CLR transformed offsetted data',ellipse=TRUE,col.per.group=Type_2)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-6.png)<!-- -->

```r
plotLoadings(splsda_final.result , comp = 1, title = 'Loadings on comp 1',contrib = 'max', method = 'mean')
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-7.png)<!-- -->

```r
plotLoadings(splsda_final.result , comp = 2, title = 'Loadings on comp 2',contrib = 'max', method = 'mean')
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-8.png)<!-- -->

```r
cim(splsda_final.result)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-9.png)<!-- -->

```r
plotVar(splsda_final.result)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-10.png)<!-- -->

```r
## check performance of final model
set.seed(40) 
perf.splsda_final <- perf(splsda_final.result,validation = "Mfold",folds = 5,dist = 'max.dist', nrepeat = 100,progressBar = FALSE)
perf.splsda_final$error.rate
plot(perf.splsda_final, col = color.mixo(5))
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MixMC-OTU-11.png)<!-- -->

```r
## check significance of final model
MixMCdata.clr_df_otu <- data.frame(MixMCdata.clr)
MixMCdata.clr_df_otu <- apply(MixMCdata.clr_df_otu,2,function(X_otu) as.numeric(as.character(X_otu)))
# MVA.test(MiX_otuMCdata.clr_df,metadata.sampleselect$TY_otupeFertilitY_otu, ncomp = ncomp,nperm=100) not working


## EXtract results for ggplots
attributes(splsda_final.result$loadings)

### Loadings
# splsda_final.result$loadings
Loadings1 <- selectVar(splsda_final.result, comp = 1)$value
Loadings1stab <- perf.splsda_final$features$stable[[1]][rownames(Loadings1)] 

Loadings2 <- selectVar(splsda_final.result, comp = 2)$value
rownames(Loadings2) <- selectVar(splsda_final.result, comp = 2)$name
Loadings2stab <- perf.splsda_final$features$stable[[2]][rownames(Loadings2)] 

#Sampleclass <- c(Loadings1$value.var,Loadings2$value.var)
#Sampleclass[Sampleclass<0] <- "VS"
#Sampleclass[Sampleclass!="VS"] <- "EF"

Loadings_otu <- data.frame(taxaselect=c(rownames(Loadings1),rownames(Loadings2)) ,Loadings=c(Loadings1$value.var,Loadings2$value.var),Loadingsstab=c(Loadings1stab,Loadings2stab),comp=c(rep("comp1",nrow(Loadings1)),rep("comp2",nrow(Loadings2))))
Loadings_otu

## Coordinates 
coordinates_otu <- as.data.frame(splsda_final.result$variates$X)

## Dimensions 
splsda_final.result$explained_variance$X
Dim1_otu <- round(splsda_final.result$explained_variance$X[1]*100,2)
Dim2_otu <- round(splsda_final.result$explained_variance$X[2]*100,2)
```


```r
sPLSotu <- sPLSDAplot(coordinates_otu,metadata.sampleselect$IDunique,rep("#000000",14),metadata.sampleselect$Type,Type_2,"Sample type",Dim1_otu,Dim2_otu,4,ellipse=TRUE)
```


```r
# Note: as the CLR already divides each count by the geometric mean, it does not make a difference whether we apply TSS + CLR, or CLR on the count (filtered) data directly
# Add an offset to the data
MixMCdata <- data.frame(otu_table(phylobj.filter.genus)+1)
# Verify that no zeroes are present in the data
sum(which(MixMCdata  == 0))
# Look at read counts in all samples
barplot(colSums(MixMCdata))
```

![](REPORT_versionKim_files/figure-html/Input-MixMC-genus-raw-data-with-offset-1-1.png)<!-- -->

```r
# function to perform additional pre-filtering according to Qiime standards
# samples in rows and taxa in columns
low.count.removal = function(
                        data, # OTU count data frame of size n (sample) x p (OTU)
                        percent=0.01 # cutoff chosen
                        ){
    keep.otu = which(colSums(data)*100/(sum(colSums(data))) > percent)
    data.filter = data[,keep.otu]
    return(list(data.filter = data.filter, keep.otu = keep.otu))
}
MixMCdata <- low.count.removal(t(MixMCdata), percent=0.01)$data.filter

# Either logratio transform with an external function (no need to add an offset if this was already done manually). This function can start from either proportions (in which case you need to provide a TINY offset) or raw data. LCR can also be obtained in the PCA and sPLS-DA functions right away starting from the raw data 
MixMCdata.clr <- logratio.transfo(MixMCdata, logratio = 'CLR', offset = 0) 
class(MixMCdata.clr) <- "matrix"

# Input to the Mixomics models
X_genus <- MixMCdata.clr
Y_genus <- metadata.sampleselect$Type
sample <- metadata.sampleselect$IDunique
```


```r
# On the already transformed data 
pca.result <- pca(X_genus,ncomp=10, multilevel = sample)
```

```
## Splitting the variation for 1 level factor.
```

```r
#=  On the offseted data 
# pca.result <- pca(t(MixMCdata), logratio = 'CLR')

# Plot the results 
plot(pca.result)
```

![](REPORT_versionKim_files/figure-html/PCA-MixMC-genus-1.png)<!-- -->

```r
plotIndiv(pca.result, group = metadata.sampleselect$TypeFertility, title = 'PCA on CLR transformed offsetted data',col.per.group=FertilityType_4)
```

![](REPORT_versionKim_files/figure-html/PCA-MixMC-genus-2.png)<!-- -->

```r
plotVar(pca.result, comp = c(1, 2),var.names = list(tax_table(phylobj.filter)[,"Class"]),cutoff = 0.5,cex = 2,title = 'PCA comp 1 - 2')
```

![](REPORT_versionKim_files/figure-html/PCA-MixMC-genus-3.png)<!-- -->


```r
## Initial model 
plsda.result <- plsda(X_genus,Y_genus, ncomp = 10,multilevel=sample) 
# equivalent to plsda(MiX_genusMCdata,metadata.sampleselect$TY_genuspeFertilitY_genus, ncomp = 10, logratio = 'CLR') 

## Select optimal number of components 
set.seed(2543) 
perf.plsda.result <- perf(plsda.result, validation = "Mfold", folds = 5,progressBar=FALSE,auc=TRUE,nrepeat=100) 
plot(perf.plsda.result, col = color.mixo(5:7), sd = TRUE, legend.position = "horizontal") # 2 components are ideal for the PLS-DA model
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-1.png)<!-- -->

```r
## Optimal PLS-DA model
plsda.result <- plsda(X_genus,Y_genus, ncomp = 2,multilevel=sample)
plotIndiv(plsda.result, group = Y_genus, title = 'PLS-DA on CLR transformed offsetted data',ellipse=FALSE,comp=c(1,2),col.per.group=Type_2)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-2.png)<!-- -->

```r
## Select number of variables to retain 
list.keepX_genus <- c(1:ncol(X_genus))
tune.splsda <- tune.splsda(X_genus,Y_genus, ncomp = 3, validation = 'Mfold', folds = 5,progressBar = FALSE, dist = 'max.dist', measure = "BER",test.keepX = list.keepX_genus,nrepeat = 100,cpus=40,multilevel=sample)
tune.splsda
plot(tune.splsda)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-3.png)<!-- -->

```r
error <- tune.splsda$error.rate
ncomp <- tune.splsda$choice.ncomp$ncomp
select.keepX_genus <- tune.splsda$choice.keepX[1:2]  
select.keepX_genus

# Final model
splsda_final.result <- splsda(X_genus, Y_genus, ncomp = 2, keepX = select.keepX_genus, multilevel = sample)
plotIndiv(splsda_final.result, group = Y_genus, title = 'PLS-DA on CLR transformed offsetted data',ellipse=TRUE,col.per.group=Type_2)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-4.png)<!-- -->

```r
plotLoadings(splsda_final.result , comp = 1, title = 'Loadings on comp 1',contrib = 'max', method = 'mean')
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-5.png)<!-- -->

```r
plotLoadings(splsda_final.result , comp = 2, title = 'Loadings on comp 2',contrib = 'max', method = 'mean')
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-6.png)<!-- -->

```r
cim(splsda_final.result)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-7.png)<!-- -->

```r
plotVar(splsda_final.result)
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-8.png)<!-- -->

```r
## check performance of final model
set.seed(40) 
perf.splsda_final <- perf(splsda_final.result,validation = "Mfold",folds = 5,dist = 'max.dist', nrepeat = 100,progressBar = FALSE)
perf.splsda_final$error.rate
plot(perf.splsda_final, col = color.mixo(5))
```

![](REPORT_versionKim_files/figure-html/sPLS-DA-MiX_genusMC-genus-9.png)<!-- -->

```r
## check significance of final model
MixMCdata.clr_df_genus <- data.frame(MixMCdata.clr)
MixMCdata.clr_df_genus <- apply(MixMCdata.clr_df_genus,2,function(X_genus) as.numeric(as.character(X_genus)))
# MVA.test(MiX_genusMCdata.clr_df,metadata.sampleselect$TY_genuspeFertilitY_genus, ncomp = ncomp,nperm=100) not working


## EX_genustract results for ggplots
splsda_final.result
### Loadings
# splsda_final.result$loadings
Loadings1 <- selectVar(splsda_final.result, comp = 1)$value
Loadings1stab <- perf.splsda_final$features$stable[[1]][rownames(Loadings1)] 

Loadings2 <- selectVar(splsda_final.result, comp = 2)$value
Loadings2stab <- perf.splsda_final$features$stable[[2]][rownames(Loadings2)] 

Loadings_genus <- data.frame(taxaselect=c(rownames(Loadings1),rownames(Loadings2)) ,Loadings=c(Loadings1$value.var,Loadings2$value.var),Loadingsstab=c(Loadings1stab,Loadings2stab),comp=c(rep("comp1",nrow(Loadings1)),rep("comp2",nrow(Loadings2))))
Loadings_genus

## Coordinates 
coordinates_genus <- as.data.frame(splsda_final.result$variates$X)

## Dimensions 
splsda_final.result$explained_variance$X
Dim1_genus <- round(splsda_final.result$explained_variance$X[1]*100,2)
Dim2_genus <- round(splsda_final.result$explained_variance$X[2]*100,2)
```


```r
sPLSgenus <- sPLSDAplot(coordinates_genus,metadata.sampleselect$IDunique,rep("#000000",14),metadata.sampleselect$Type,Type_2,"Sample type",Dim1_genus,Dim2_genus,4,ellipse=TRUE)
```


```r
tiff("./Figures_Kim/sPLSDA_OTU.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
sPLSotu
dev.off()

tiff("./Figures_Kim/sPLSDA_GENUS.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
sPLSgenus
dev.off()

sPLSDA_legend <- get_legend(sPLSotu)

plot_grid(plot_grid(sPLSotu+theme(legend.position = "none"),sPLSgenus+theme(legend.position = "none"),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5),sPLSDA_legend,nrow=2,rel_heights = c(0.8,0.2))
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/sPLSDA-at-OTU-and-genus-level-plotting-1.png" alt="Optimal sPLS-DA model, as determined by five-fold crossvalidation, retaining the taxonomic features most predictive of the Endometrial Fluid (EF) or Vaginal Secretions (VS)."  />
<p class="caption">(\#fig:sPLSDA-at-OTU-and-genus-level-plotting)Optimal sPLS-DA model, as determined by five-fold crossvalidation, retaining the taxonomic features most predictive of the Endometrial Fluid (EF) or Vaginal Secretions (VS).</p>
</div>

```r
tiff("./Figures_Kim/sPLSDA_GENUS_OTU.tiff",width=12*dpi,height=6*dpi,res=dpi,compression="lzw")
plot_grid(plot_grid(sPLSotu+theme(legend.position = "none"),sPLSgenus+theme(legend.position = "none"),ncol=2,rel_widths = c(0.5,0.5),align="h",axis="2",labels=c("OTU","Genus",""),label_x = 0.5),sPLSDA_legend,nrow=2,rel_heights = c(0.8,0.2))
dev.off()
```


```r
hmfontsize <- 12

Loading <- rbind(Loadings_otu,Loadings_genus)
Loading$level <- c(rep("OTU",nrow(Loadings_otu)),rep("Genus",nrow(Loadings_genus)))
Loading <- data.frame(Loading %>% group_by(taxaselect) %>% top_n(1, abs(Loadings)))
Loading <- Loading[order(Loading$level,-abs(Loading$Loadings)),]
#Loading <- Loading %>% subset(comp=="comp1")
CLRdata <- cbind(MixMCdata.clr_df_otu,MixMCdata.clr_df_genus)[,Loading$taxaselect]

# component 1 was sufficient in both models

splsda_heatmap <- CLRdata

splsda_heatmap_aggregatedforcolor  <- aggregate(splsda_heatmap,by=list(metadata.sampleselect$Type),FUN=mean)
sampleclass <- splsda_heatmap_aggregatedforcolor[1,]>splsda_heatmap_aggregatedforcolor[2,]
sampleclass[which(splsda_heatmap_aggregatedforcolor[1,]>splsda_heatmap_aggregatedforcolor[2,])] <- "EF"
sampleclass[sampleclass!="EF"] <- "VS"
sampleclass <- sampleclass[,-1]

splsda_heatmap_aggregated  <- aggregate(splsda_heatmap,by=list(metadata.sampleselect$Type,metadata.sampleselect$Fertility,metadata.sampleselect$TypeFertility),FUN=mean)

splsda_heatmap_aggregated[,3] <- factor(splsda_heatmap_aggregated[,3],levels=c("EF_NF","EF_RIF","VS_NF","VS_RIF"))
splsda_heatmap_aggregated[,2] <- factor(splsda_heatmap_aggregated[,2],levels=c("NF","RIF"))
splsda_heatmap_aggregated[,1] <- factor(splsda_heatmap_aggregated[,1],levels=c("EF","VS"))

splsda_heatmap_aggregated <- t(splsda_heatmap_aggregated)

splsda_heatmap_TypeFertility <- splsda_heatmap_aggregated[3,] 
splsda_heatmap_Fertility  <- splsda_heatmap_aggregated[2,] 
splsda_heatmap_Type <- splsda_heatmap_aggregated[1,] 

splsda_heatmap <- data.frame(level=Loading$level,splsda_heatmap_aggregated[-c(1:3),])
splsda_heatmap$level <- factor(splsda_heatmap$level,levels=c("Genus","OTU"))
splsda_heatmap <- tibble::rownames_to_column(splsda_heatmap)
colnames(splsda_heatmap)[1] <- "Feature"
splsda_heatmap$Feature <- gsub("Otu0+","OTU",splsda_heatmap$Feature )
splsda_heatmap$effectsize <- abs(Loading$Loadings)
splsda_heatmap$sampleclass <- sampleclass

num <- 1+length(Loading$taxaselect)
splsda_heatmap_num <- splsda_heatmap[,c(3:6)]
splsda_heatmap_num <- apply(splsda_heatmap_num,2,as.numeric)
rownames(splsda_heatmap_num) <- splsda_heatmap$Feature


# Heatmap annotations
rowsplit <- splsda_heatmap$level

rowsideplot <- splsda_heatmap$effectsize
rowsidefill <- splsda_heatmap$sampleclass
rowsidefill <- mapvalues(rowsidefill,from=c("EF","VS"),to=Type_2) 
names(rowsideplot) <- splsda_heatmap$Feature
names(rowsidefill) <- splsda_heatmap$Feature

colside1 <- splsda_heatmap_Type
colside1fill <- mapvalues(colside1,from=unique(colside1),to=Type_2)
names(colside1fill) <- colside1

colside2 <- splsda_heatmap_Fertility
colside2fill <- mapvalues(colside2,from=unique(colside2),to=Fertility_2)
names(colside2fill) <- colside2

colside3 <- splsda_heatmap_TypeFertility
colside3fill <- mapvalues(colside3,from=unique(colside3),to=FertilityType_4)
names(colside3fill) <- colside3

ha=HeatmapAnnotation(Type=anno_block(gp = gpar(fill=colside1fill),labels=colside1),Fertility=anno_block(gp = gpar(fill=colside2fill),labels=colside2))
#ha=HeatmapAnnotation(PPI=anno_empty(border=FALSE),Sporebiotics=anno_empty(border=FALSE),Subgroup=anno_block(gp = gpar(fill=colside3fill),labels=colside3))

hb = HeatmapAnnotation("sPLS-DA effect size"=row_anno_barplot(rowsideplot,axis=TRUE,gp = gpar(fill = rowsidefill),axis_param = list(gp=gpar(fontsize = hmfontsize-5)),show_annotation_name = TRUE,  annotation_name_gp = gpar(fontsize = hmfontsize),width = unit(2, "cm")),which="row")
hc = rowAnnotation(rn=anno_text(rownames(splsda_heatmap_num),gp=gpar(fontface = "italic",fontsize=hmfontsize)))

# heatmap
my_palette <- colorRamp2(c(-1,0,1,3,5,6),colors=c("black",'#FFEC8B',"yellow",'#ADD8E6',"#7EC0EE","blue"))

hm_splsda <- Heatmap(splsda_heatmap_num,row_split=rowsplit,column_split= splsda_heatmap_TypeFertility,cluster_rows = FALSE,cluster_columns=FALSE,heatmap_legend_param =list(color_bar="continuous",title="CLR transformed counts",legend_direction = "horizontal",legend_width = unit(18,"cm"),title_gp=gpar(fontsize=hmfontsize,fontface="bold"),labels_gp=gpar(fontsize=hmfontsize)), show_row_names = TRUE,row_names_gp = gpar(fontface = "italic",fontsize=hmfontsize),show_column_names = FALSE,row_title_gp = gpar(fontface = "bold",fontsize=hmfontsize),show_heatmap_legend = FALSE, row_title_rot = 0,column_title = NULL, row_gap = unit(2, "mm"), column_gap = unit(c(1,3,1), "mm"),top_annotation=ha,col=my_palette) 

leg <- Legend(col_fun = my_palette, title = "CLR transformed counts",direction="horizontal",legend_width = unit(5, "cm"),legend_height =  unit(3, "cm"),labels_gp=gpar(fontsize=hmfontsize),title_gp=gpar(fontsize=hmfontsize,fontface="bold"))

hm_splsda <- draw(hm_splsda +hb +hc)  
#decorate_annotation("rn", {gp = gpar(fontface = "plain")}, slice = 2)
draw(leg, x = unit(0.9, "npc"), y = unit(1, "npc"), just = c("right", "top"))
```

<div class="figure">
<img src="REPORT_versionKim_files/figure-html/sPLS-DA-heatmap-plotting-1.png" alt="Heatmap displaying the most discriminative features characteristic of Endometrial Fluid (EF) or Vaginal Secretions (VS) identified by sPLS-DA. The Sample type in which the feature is on average most abundant is indicated by the fill colour in the effect size (sPLS-DA loadings) histogram side annotation."  />
<p class="caption">(\#fig:sPLS-DA-heatmap-plotting)Heatmap displaying the most discriminative features characteristic of Endometrial Fluid (EF) or Vaginal Secretions (VS) identified by sPLS-DA. The Sample type in which the feature is on average most abundant is indicated by the fill colour in the effect size (sPLS-DA loadings) histogram side annotation.</p>
</div>

```r
tiff("./Figures_Kim/sPLSDA_heatmap.tiff",width=6*dpi,height=6*dpi,res=dpi,compression="lzw")
hm_splsda
draw(leg, x = unit(0.9, "npc"), y = unit(1, "npc"), just = c("right", "top"))
dev.off()
```

### Interpretation

_Lactobacillus_ (OTU1,2,80), _Howardella_, _Aerococcus_, _Dialister_, _Veillonella_, _Anaerococcus_, _Prevotella_, _Peptostreptococcus_, _Finegoldia_, _Bifidobacterium_, _Clostridium_, _Peptoniphilus_, _Gemella_, _Campylobacter_, _Ureaplasma_, _Haemophilus_, _Porphyromonas_,  _Atopobium_ and _Gardnerella_, define the vaginal secretions whereas _Microbacterium_ (OTU10), _Cutibacterium_ (OTU9), _Enterococcus_, _Pseudomonas_, _Alloscardovia_, _Propionimicrobium_, _Fusobacterium_, _Micrococcus_, _Phascolarctobacterium_, _Brachybacterium_, _Clostridium_g6_, _Fenollaria_, _Bacteroides_, _Sneathia_, BVAB1, _Parvimonas_, _Mycoplasma_g4_, _Streptococcus_ (OTU 62) and _Staphyloccocus_ (OTU122), Corynebacterium and Megasphaera  are characteristic of the endometrial fluid samples (Figure \@ref(fig:sPLS-DA-heatmap-plotting)). A sample clustering according to the EF and VS sample types is observed based on the identified discriminative features (Figure \@ref(fig:sPLSDA-at-OTU-and-genus-level-plotting)).


# Session information

This analysis was run using R version 4.0.3 (2020-10-10) on a x86_64-pc-linux-gnu (64-bit) machine. A more detailed overview of the package versions can be found in the attached "sessionInfo.txt" file. 



This report is maintained on [UGent GitHub](https://github.ugent.be/LabMETNGS/AmpliMET).

# References
