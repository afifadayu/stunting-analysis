# Reliable Testing for Independent Variable
### by Alfa Cronbach

###### Step 1: Installing Library
install packages of psych and dplyr
```R
install.packages("psych") 
install.packages("dplyr")
```

###### Step 2: Call the Library
```R
library(psych)
library(dplyr)
```

###### Step 3: Import data
Use `read.csv` for .csv data
```R
dataset <- read.csv(file.choose())
```

###### Step 4: Select data and convert into data.frame for x
```R
x <- select(dataset,2:11)
x <- as.data.frame(x) #convert to data frame
```

###### Step 5: Get an alpha value
```R
psych::alpha(x, check.keys=TRUE)
```

##### Step 6: Review an output
>  raw_alpha std.alpha G6(smc) average_r S/N   ase mean  sd median_r
>       0.6      0.85    0.89      0.37 5.8 0.027  331 250     0.46

### Conclusion: 
The data are reliable because `std.alpha = 0.85`, which is a good reliable

Compiled by afifadayu.
Modules for packages: https://cran.r-project.org/web/packages/psych/psych.pdf