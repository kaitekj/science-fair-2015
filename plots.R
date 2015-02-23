df = read.csv('data.csv', header=TRUE)

df2 <- subset(df, birth < 1930)

early  gender     birth          death           age        
 0:59   0:58   Min.   :1821   Min.   :1879   Min.   :  0.00  
 1:53   1:54   1st Qu.:1865   1st Qu.:1920   1st Qu.: 55.00  
               Median :1894   Median :1962   Median : 72.50  
               Mean   :1889   Mean   :1956   Mean   : 67.06  
               3rd Qu.:1914   3rd Qu.:1988   3rd Qu.: 83.00  
               Max.   :1928   Max.   :2014   Max.   :102.00


L = df2$early == 0

d.early = df2[L,]$age

[1]  93  53  55  74  62  55  77  73  82  79  80  48  53  70  71  69  71  62  53  55  86 101  73  37  77  77  80  55
[29]  55  65  69  81  92  49  60  81  65  42  76  38   0  43  31  78   6  80  93  33  74  97  68   1   1  26   0  75
[57]  86  90  71

d.late = df2[!L,]$age


 [1]  43  50  88  89   6  60  60  81 102  46  61  85  63  31  73  76  80  68  92  72  91  69  91  93  68  68  84  93
[29]  93  69  72   2  88  45  82  62  66  69  75  76  76  91  94  67  73  83  90  90  90  87  85  83  73


t.test(d.early,d.late)

	Welch Two Sample t-test

data:  d.early and d.late
t = -2.5825, df = 108.969, p-value = 0.01114
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -19.605043  -2.579159
sample estimates:
mean of x mean of y 
 61.81356  72.90566 