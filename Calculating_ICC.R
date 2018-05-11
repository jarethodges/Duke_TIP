### The data used is the sample dataset "simul_full.csv"###


##ICC's can be calculated using the following command "ICCbare" from the ICC package. 
We need to first install it, then run the package before we can use it. The ICCbare command
provides the intraclass correlation between a variable and the cluster. In this case I 
want to know the ICC between school and our predictor variable.  The first variable in the statement
is my cluster variable, the second is my variable of interest. The final variable is my dataset.

Quick Tip- you can also specify the correlations between columns. For example mydata$School. This is 
useful if you have multiple datasets or just want to know the ICC between two specific column vectors##


# The first step to using the ICC package is to install it #

install.packages ("ICC")

# Next call it up in your library. #

library (ICC)


# The ICC package has a number of useful functions. The ICCbare function is the basic function 
which provides the ICC. It is inputted in the (X, Y, Data) format. X is the grouping variable, 
Y is what is being grouped, and then Data is the data.#

ICCbare (school, extro, data = mydata)

# The difference between ICCest and ICCbare is that ICCest also provides a confidence interval. 
You must specify the alpha level and the confidence interval type. The biggest difference 
between the two types of confidence interval calculations supported are how standard error is 
calculated. In practical terms, in 95% of cases, there will be no difference. The two options are
the Smith (S) or the THD (THD)#

ICCest (School, GPA, data = mydata, alpha = 0.05, CI.type = "S")
ICCest (School, GPA, data = mydata, alpha = 0.05, CI.type = "THD")

# Remember, the ICC is not uniform across all variables. In this case, the ICC for GPA is 
different from the ICC for Pass.#

ICCest (School, GPA, data = mydata, alpha = 0.05, CI.type = "S")
ICCest (School, GPA, data = mydata, alpha = 0.05, CI.type = "THD")
ICCest (School, Pass, data = mydata, alpha = 0.05, CI.type = "S")
ICCest (School, Pass, data = mydata, alpha = 0.05, CI.type = "THD")