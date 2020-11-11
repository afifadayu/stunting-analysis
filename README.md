# Nutrition Analysis of Stunting in Depok, Indonesia using R
### Methods: Multivariate Adaptive Regression Splines (MARS)
\

##### Analysis Purpose
Conference and Publication of Journal

##### Data Sources
Secondary Data from Public Health, University of Indonesia (UI)

##### Sample Size
132 samples (Minimal Data for MARS Methods: 100)

##### List of Variables
> y = Status \
> x1 = Power \
> x2 = Carbohydrate \
> x3 = Protein \
> x4 = Fat \
> x5 = Vitamin A \
> x6 = Carotene \
> x7 = Iron \
> x8 = Calcium \
> x9 = Zinc \
> x10 = Vitamin D \
> x11 = Vitamin C 

##### Descriptive Statistics
|              |  Min |   Max  | Median |  Mean  |
|--------------|:----:|:------:|:------:|:------:|
| Power        |  256 |   6750 |   1037 | 1185.4 |
| Carbohydrate |   13 |  820.5 | 135.15 | 153.79 |
| Protein      |  5.1 |  192.6 |   33.4 |  38.14 |
| Fat          |    2 |  841.1 |   44.7 |  57.59 |
| Vitamin A    | 94.9 |   9794 |    855 | 1231.7 |
| Carotene     |    0 |    329 |      0 |   5.37 |
| Iron         |    0 |   99.8 |   9.05 |  12.61 |
| Calcium      |   14 | 5744.6 |  364.9 |    589 |
| Zinc         |  0.6 |   31.7 |   4.65 |  5.559 |
| Vitamin D    |    0 |   1000 |      4 |  29.35 |
| Vitamin C    |    3 |    820 |   74.5 |  103.8 |

##### Step of Analysis
1. Preprocessing Data (Manual)
2. Reliable Testing
3. MARS Modeling
4. Linear Regression Modeling & Testing
5. MARS Importance Variable

##### Final Output
###### Variable Importance of Nutrition
|           | N subsets | GCV  | SSE  |
|-----------|:---------:|------|------|
| Power     |         8 |  100 |  100 |
| Zinc      |         7 | 47.6 | 49.3 |
| Vitamin A |         6 |   41 | 42.1 |
| Fat       |         1 |  7.9 |  9.4 |

##### Dataset [! SOON]
1. Original Dataset
2. Linear Regression Dataset

##### Teams
Afifa Ayu Widhiyanthi \
Bryan Alfason Sunjaya \
I Gede Arya Krisnadi \
Naufal Tansel 

\
Code by afifadayu