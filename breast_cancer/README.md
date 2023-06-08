## About the data
The File with data was downloaded from Kaggle
These data have information about 4024 patients with breast cancer. There is no information about the country, where data were collected.

## Brief information about the columns
The dataset “Breast Cancer” has columns with information about patient:
-	age
-	race
-	marital status
-	survival months
-	status (alive/dead)
Other columns have a specific information about the cancer. We need additional explanation for understanding the data.
### TNM system
Usually the "TNM" system is used for describing stages and features of breast cancer: Tumor (T), Node (N), Metastasis (M). But this dataset does not provide with "M" information. The "T" plus a letter or number (0 to 4) is used to describe the size and location of the tumor. In this dataset you can see only the "T" plus a number. The "N" in the TNM staging system stands for lymph nodes. The "N" plus number is used to describe how many nodes are affected by cancer.
### Differentiation of carcinomas and Grade of differentiation
The column "Differentiate" shows the information:
-	well-differentiated carcinomas have relatively normal-looking cells that do not appear to be growing rapidly. These cancers tend to grow and spread slowly and have a better prognosis (outlook),
-	poorly differentiated carcinomas lack normal features, tend to grow, and spread faster, and have a worse prognosis,
-	moderately differentiated carcinomas have features and a prognosis in between these two,
-	undifferentiated cancer is a rare form of lymphoma that occurs in some people who have had breast implants. It is a type of immune system cancer and is not breast cancer.
The column "Grade" provides with grades that are similar to what is described in the question above about differentiation. Numbers are assigned to different features (gland formation, nuclear grade, and mitotic count) seen under the microscope and then added up to assign the grade.
-	If the numbers add up to 3-5, the cancer is grade 1 (well differentiated).
-	If they add up to 6 or 7, it means the cancer is grade 2 (moderately differentiated).
-	If they add up to 8 or 9, it means the cancer is grade 3 (poorly differentiated).
### Local, regional or distant?
The column "A stage" gives us information about additional classification:
-	Regional: the lymph nodes, primarily those in the armpit, are involved,
-	Distant: the cancer is found in other parts of the body as well,
-	Local: the cancer is confined within the breast - this type is not represented in the dataset.
### Hormone status
If breast cancer cells have estrogen receptors, the cancer is called ER-positive breast cancer. If breast cancer cells have progesterone receptors, the cancer is called PR-positive breast cancer. If the cells do not have either of these 2 receptors, the cancer is called ER/PR-negative.
Hormone therapy blocks ER-positive and/or PR-positive tumors from using estrogen and/or progesterone, which slows or stops tumor growth.
### Stage groups for breast cancer
Doctors assign the stage of the cancer by combining the T, N, and M classifications (see above), the tumor grade, and the results of ER/PR:
-	Stage 0 describes disease that is only in the ducts of the breast tissue and has not spread to the surrounding tissue of the breast.
-	Stage IA: The tumor is small, invasive, and has not spread to the lymph node.
-	Stage IB: Cancer has spread to the lymph nodes and the cancer in the lymph node is larger than 0.2 mm but less than 2 mm in size. There is either no evidence of a tumor in the breast or the tumor in the breast is 20 mm or smaller.
-	Stage IIA: Any 1 of these conditions:
o	There is no evidence of a tumor in the breast, but the cancer has spread to 1 to 3 axillary lymph nodes. It has not spread to distant parts of the body.
o	The tumor is 20 mm or smaller and has spread to 1 to 3 axillary lymph nodes.
o	The tumor is larger than 20 mm but not larger than 50 mm and has not spread to the axillary lymph nodes.
-	Stage IIB: Either of these conditions:
o	The tumor is larger than 20 mm but not larger than 50 mm and has spread to 1 to 3 axillary lymph nodes.
o	The tumor is larger than 50 mm but has not spread to the axillary lymph nodes.
-	Stage IIIA: The tumor of any size has spread to 4 to 9 axillary lymph nodes or to internal mammary lymph nodes. It has not spread to other parts of the body. Stage IIIA may also be a tumor larger than 50 mm that has spread to 1 to 3 axillary lymph nodes
-	Stage IIIB: The tumor has spread to the chest wall or caused swelling or ulceration of the breast, or it is diagnosed as inflammatory breast cancer. It may or may not have spread to up to 9 axillary or internal mammary lymph nodes. It has not spread to other parts of the body.
-	Stage IIIC: A tumor of any size that has spread to 10 or more axillary lymph nodes, the internal mammary lymph nodes, and/or the lymph nodes under the collarbone. It has not spread to other parts of the body.
-	Stage IV (metastatic): The tumor can be any size and has spread to other organs, such as the bones, lungs, brain, liver, distant lymph nodes, or chest wall.
## Questions
-	Does the strong correlation exist between parameters?
-	What age is vulnerable? Does it depend on race?
-	How does tumor size vary from cancer stage and status (alive/dead)?
-	How many cases has each stage?  What about % of alive and dead in each stage?
-	How are connected examined and positive nodes? How does it depend on stage?
-	What about differentiation of carcinoma by stages?
-	How many cases has each type of hormone statuses? How does it vary from stage?
-	Characteristics for parameter “Survival months” by stages
## Research
### Age
As you can see the histogram with “Age” shows us higher rates of cancer for patients older 45 years. PDF looks like this distribution is bimodal. There are also key statistics:
-	maximum value - 69
-	minimum value - 30
-	mean value - 54
-	mode value - 46
Next step – compare distribution of “Age” for unique values of “Race”. There are three values: white, black, and other.
Maximum values equal. Minimum and mean values differ slightly.  Mode of “Other” equals 56, this value differs significantly if we compare it with other races.
PDF for “Black” shows two parts of distribution, so to the age of 40 rates increase, then decrease, and increase again to the age of 60.
### Tumor size
There you can see distribution of tumor size, it is unsymmetrical. The frequency of tumor size more than 30 mm decreases
Then you can see how the data of tumor size are distributed in each cancer stage with status of patient. IIA and IIB have clear boundaries, because these types have a specific measure for tumor size. IIIA, IIIB, IIIC have a wider set of characteristics: tumor might have any size, everything depends on how many nodes and what types of nodes are affected with breast cancer. IIIB has the lowest rates. Despite the cancer stage we can see there are patients with a small size of tumor and status “Dead”, also with a maximum size of tumor and status “Alive”.

As it has been mentioned before, IIA and IIB have a specific limit for describing tumor size, so there are almost no outliers for these stages. IIA with status “Dead” has outliers from the minimum size of tumor. Otherwise, IIB with status “Dead” has outliers in the upper limit. As we can see the subgroups of the III stage have outliers from both maximum and minimum size

In the graph below you can see that stages IIA, IIB, IIIA are widespread
### Status
In the graph below you can see percentage of the statuses in each stage. IIA, IIB, IIIA stages have a major part of patient with “Alive” status
### Nodes
Doctors assign the stage of the cancer using information about lymph nodes affected by cancer. You can see key statistics for these distributions.  Mean and mode values are almost equal for distribution of examined nodes. Distribution of positive nodes has positive skewness, in most of cases only one lymph node is affected with cancer. Frequency of higher values decreases.

The graph below shows distributions of nodes (examined/positive) for each cancer stage. IIA and IIB stages characterize with a specific quantity of affected lymph nodes, but doctors checked more nodes. It is also clear that tumor size plays a role there, because size and location might give information about possible damage. 
There are usually 1-3 axillary lymph nodes affected in IIA stage, but in the graph, we can see outliers about 10 and more than 10 nodes.
IIB has the same conditions about the quantity of affected nodes, but this distribution characterizes by greater variability.
Distribution of positive nodes for the stage IIIA is symmetrical and as we can see 2 conditions are met: either 4-9 affected lymph nodes with tumor of any size or tumor is more than 50mm and 1-3 affected axillary nodes. There is 1 outlier, the quantity of affected nodes is more than 10.
IIIB stage may spread up to 9 axillary or internal mammary lymph nodes, so the stage depends on how breast cancer has spread in the breast. We can see 2 outliers. In general, examined lymph nodes have limits of the distribution, but there are also some outliers from both minimum and maximum side.
IIIC: this stage might have the tumor of any size, but there are also more than 10 affected lymph nodes. As we can see in the graph, doctors examined more nodes in comparison with other stages. This type of breast cancer spreads up to 10 or more axillary lymph nodes, the internal mammary lymph nodes and/or the lymph nodes under collarbone. There are outliers from both minimum and maximum side.
For stages IIA, IIB, IIIA, IIIB the main parts of distributions, where a major part of cases is concentrated, are located almost in one level. About IIIC we can say that doctors examined more lymph nodes and found more positive lymph nodes
### Differentiation of carcinomas
Differentiation of carcinomas gives understanding how quickly cancer cells are going to grow and spread.
There are 4 types in dataset: moderately differentiated, poorly differentiated, well differentiated, undifferentiated.
“Undifferentiated” is a type of an immune system cancer, that might be caused breast plastic surgery, so this type was excluded.
Well differentiated type means that cells look like normal cells, and this type grows slowly.  Only 13,6% of cases have this type of differentiation.
Poorly differentiated cells grow quickly. And 27,7% cases have this type.
Moderately differentiated cells have average characteristics between well and poorly differentiated types. More than 58% cases have this type of differentiation.
Then you can see percentage of differentiation types by stages. Moderately differentiated cases take a major part in each stage. Every stage has well differentiated cases. IIA stage has the highest percentage of well and moderately differentiated cases. The B, C subgroups of III stage have the highest percent of poorly differentiated cases. But IIIA have only 9,8%, when IIIB – 11,9% 
### Regional or distant?
Local – the cancer has located only in breast. There is no this type.
Regional – lymph nodes are involved. There are 3932 cases of this type.
Distant – the cancer has spread to other part of body. There are 92 cases in the data.
Let’s take a closer look at the cases with “Distant” type. In the description of stages 

Stages and status:

| IIIB       | Alive       | 16    |
| ---------- |-------------| ------|
|            | **Dead**    | **8** |

| IIIC       | Alive       | 41    |
| ---------- |-------------| ------|
|            | **Dead**    | **27** |

Minimum tumor size:

| IIIB       | Alive       | 5     |
| ---------- |-------------| ------|
|            | **Dead**    | **26**|

| IIIC       | Alive       | 9     |
| ---------- |-------------| ------|
|            | **Dead**    | **12**|

Maximum tumor size:

| IIIB       | Alive       | 100   |
| ---------- |-------------| ------|
|            | **Dead**    |**120**|

| IIIC       | Alive       | 120   |
| ---------- |-------------| ------|
|            | **Dead**    |**120**|

14 patients have negative status for both estrogen and progesterone with type “Distant”. 86% patients have status “Dead”

### Hormone status
Hormone status is important for understanding next steps of treatment, when it is positive for estrogen and/or progesterone, doctors can use hormone therapy, that helps to get rid of the cancer. As we can see in the graph below, only 6% of cases have “Negative” status for two hormones. Others are positive at least for one hormone
The graph below is about possible combinations of hormone statuses, also we can see the percent of stages in each combination. IIIB takes the lowest level, because the quantity of cases is also the smallest

Estrogen – positive, progesterone – positive:  IIA and IIB take the 1th and the 2nd places, respectively. The smallest part is IIIC.
Stage IIIA has a major part in the other types of hormone statuses

### Survival months

Alive:

| Stage | max | mean | min| mode |
| ------|-----|------| ---|------|
|  IIA  | 107 | 76,7 | 3  | 98   |
|  IIB  | 107 | 75,3 | 5  | 69   |
| IIIA  | 107 | 75,2 | 2  |63; 89| 
| IIIB  | 107 | 79,2 | 41 | 89   |
| IIIC  | 107 | 76,5 |  1 | 55   |

Dead:

| Stage | max | mean | min| mode |
| ------|-----|------| ---|------|
|  IIA  | 101 | 45,3 | 2  | 60   |
|  IIB  | 100 | 49,3 | 2  | 59   |
| IIIA  | 100 | 46,6 | 3  |4; 41; 52; 53| 
| IIIB  | 90  | 46,4 | 16 |31; 36, 43|
| IIIC  | 102 | 41,9 | 4  | 25   |

For “Alive” status:

Maximum values equal for every stage. Mean values are close to each other, but IIIB stands out, because value of this stage is larger than the others. Because the number of cases for stage is different, we can see that there is big difference in minimum values in comparison with others. IIIA stage has 2 modes. Stage IIA has the largest mode = 98. IIIC has the smallest mode value. In the graph below we can see that a major part of cases is concentrated between 45 and 107, we can see it in each stage.

For “Dead” status:

Maximum values are close to each other, but IIIB  stands out because value of this stage is smaller than the others. The largest mean value has IIB stage, The smallest – IIIC. Minimum value of IIIB stage is larger than the others. IIIA and IIIB stages have more than 1 mode values. IIIA has the smallest mode = 4 months. In the graph below we can see That each stage has outliers from both minimum and maximum sides, but distributions are without dots concentration as we can see for “Alive” status

