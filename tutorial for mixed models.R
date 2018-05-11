##Tutorial for mixed modeling in R##

by Jaret Hodges 
College of Education
Purdue University

send questions to hodges8@purdue.edu

##here we will load our data into R. This line of code tell R where the table is found,
that the first line of the data are the column names (header=TRUE), that each entry is 
seperated by a comma (sep=","), that missing data is referred to as NA in the dataset 
(na.strigs="NA"), that your decimal is a . (dec=".") and finally, the strip.white=TRUE 
command tells R to not read any of the whitespace in the text file, and only load in
the space with values.

In order to not have to enter that long string everytime I want to use my data, I am 
just going to tell r that the object "mydata" is that code.##


data <- read.table ("http://www.unt.edu/rss/class/Jon/R_SC/Module9/lmm.data.txt", 
header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)


##The summary command provides a quick diagnostic summary. While the View command allows you 
to view the data. Important note is that you need to capitalize View##

summary (data)
View (data)


##The variables are Extroversion (extro), Agreeableness (aggree), Openness to new 
experiences (open), an interval scaled predictor for Social engagement (social), 
and a nominal scaled variable Class (class), finally there are the nested variable 
of school (school).##


##now we will install and load the lme4 package (Linear Mixed Effects version 4; Bates & Maechler, 2010). 
This package is one of the most widely used packages for mixed model analysis in the R community. 
The install.packages command will install the package. Select a mirror close to you. 
The library (lme4) command will load the package into r.##

install.packages ("lme4")
library ("lme4")




##Here is our model statement. Like the data statement, you will create an object "mymodel" that 
you will use instead of the long code line. The first thing to notice is the "glmer(formula =" statement.
This is the command to use a generalized mixed effects model as well as the formula command.
I prefer to use the glmer command as opposed to lmer command (if you look online for examples, you 
will see people using lmer instead of glmer. The reason is that lmer command assumes that the distribution
is gaussian (i.e. normal). Using the glmer command with the option of family = gaussian will give you 
the same results as lmer without a family option. 

Next is the formula. Here we are saying that extroversion is predicted by a students openness, 
agreeableness, level of social engagement, class and the inclusion of the cluster variable to 
account for psuedoreplication. Here we state that class is nested within school. In many examples 
you might see online you will just see (1| "variable"). The command (1| "variable") means that 
this variable varies at the intercept while the command (1 + "variableX"| "variable") is a slope varying 
variable. lme4 assumes a random intercept with a slope so you can just write ("variableX"|"variable").
If you only want the slope to vary and have the intercept be fixed, you would use the syntax of "-1", 
i.e. ("variableX" - 1|"variable").
In many cases, "variable" will be your cluster and "variableX" will be effects about
that cluster.

Further we come to the options. We need to tell R to use the above data so we use the command 
data= mydata. REML = TRUE is the option to use restricted maximum likliehood as your estimating
method. The family option states what family of distributions you will use. The  most common are
gaussian (normal distribution), binomial (for logistic regressions), and poisson. So if I were modeling 
a distribution that followed the poisson distrubtion, I would instead use "family=poisson". 
Finally the verbose command provides information about the iterations.##


mymodel <- glmer(formula = extro ~ open + agree + social + class + (1|school/class), 
data = mydata, family = gaussian, REML = TRUE, verbose = FALSE)


##The summary command provides information about the model. You will notice that there are no 
p-values. This is because the authors of the lme4 program purposefully do not provide 
p-values due to their beliefs. We can also calculate the proportion of r squared accounted for
by the cluster effect. To do that we add the variance of the intercepts together with the 
residual variance and then divide the cluster variance by the total variance. You can find those
variances under the random effects. In this case we can see that the effect of school is very strong.
If your random effects are not meaningful, it might be reasonable to just run a linear model.##

summary(mymodel) 

2.88365 + 95.17339 + 0.96837 
2.88365/99.02541 


##In case you need p-values (which most of us probably will) there is an extension of lme4 that can 
pvoride them. First we will install the package and then input the "required" command to tell r
to use this package in our calculations

An important note, this test only provides p values for normal distributions. So to get a p value
from our above model, lets change the code a little bit (i.e. change glmer to lmer, and eliminate the 
now redundant family option.##

install.packages ("lmerTest")
require (lmerTest)


mymodel <- lmer(formula = extro ~ open + agree + social + class + (1|school/class), 
data = mydata, REML = TRUE, verbose = FALSE)

summary (mymodel)


##Now ICC's can be calculated using the following command "ICCbare" from the ICC package. 
We need to first install it, then run the package before we can use it. The ICCbare command
provides the intraclass correlation between a variable and the cluster. In this case I 
want to know the ICC between school and our predictor variable.  The first variable in the statement
is my cluster variable, the second is my variable of interest. The final variable is my dataset.##

install.packages ("ICC")
library (ICC)
ICCbare (school, extro, mydata)



##Extracting AIC's and BIC's can be done through the anova command. When you are constructing
a model, you run an anova between them to extra these fit statistics. Lets create a model with 
and without the variable of open and then get our fit statistics. The anova command is used 
where the objects in the parantheses are what you are running the anova on.##

mymodel <- lmer(formula = extro ~ open + agree + social + class + (1|school/class), 
data = mydata, REML = TRUE, verbose = FALSE)

my_other_model <- lmer(formula = extro ~ agree + social + class + (1|school/class), 
data = mydata, REML = TRUE, verbose = FALSE)

anova (mymodel, my_other_model)


##R-squared. I use a generalized form of r-squared. R-square is more of an approximation in 
mixed models rather than something that can be calculated firmly in linear models. In this 
case, to calculate the r square of a model, you just replace "mymodel" with whatever model
you are wanting to calculate for r-squared##


1-var(residuals(mymodel))/(var(model.response(model.frame(mymodel))))
