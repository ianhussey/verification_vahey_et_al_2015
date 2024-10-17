I have detected a number of apparent errors in this article. I provide a full report, including data and code, in a preprint [here](https://osf.io/preprints/psyarxiv/xpukj). 

To provide a brief overview of some of the more salient ones:

# Mathematically implausible meta-analytic effect size

The meta-effect size is reported as r  = .45, 95% CI [.40, .54]. This effect size is very large for an *average* correlation between this reaction-time based task and many different clinical criterion variables in different domains, including both self-reports and behavioral tasks. More concretely: the confidence intervals are therefore asymmetric around the mean: [-.05, +.09]. This cannot be explained by data transformations such as Fisher's r-to-z transformation, which would produce intervals with a skew in the opposite direction. I cannot think of a method that can generate a point estimate with intervals like this.   

# Data is internally incompatible

The weighted average effect size estimates in the forest plot (figure 1) don't match those in the funnel plot. At least one data point seems to differ between the two plots.

Two of the 15 weighted average effect sizes reported in the forest plot cannot be reproduced from the individual effect sizes reported in the supplementary materials (i.e., by weighting by df, as stated in the manuscript). 

# Incorrect inclusions

The manuscript states that this is a meta-analysis of criterion validity of the Implicit Relational Assessment Procedure (IRAP). However, 23 of the 56 individual effect sizes reported in the supplementary materials do not involve a variable other than the IRAP, ie they are taken from one sample t-tests that quantify the size of the IRAP effect, which is related to the different in reaction times between consistent and inconsistent blocks. These cannot provide evidence of the criterion validity of the IRAP, just as the magnitude of a Stroop effect or the mean score on a questionnaire cannot tell you about the criterion validity of those measures. 

# Incorrect omissions

I examined the same articles included in the meta-analysis for other effect sizes meeting the stated inclusion criteria. I found 308 additional effect sizes meeting criteria, including blinded rating by a second scorer. 

# Inappropriate effect size conversion

At least some of the effect sizes reported in the original articles were partial eta squared estimates. The authors report converting these to Pearson's r values using the formula for the conversion of eta squared. This erroneous, as peta2 and eta2 are different effect sizes. 

# Not computationally reproducible

I contacted the first author for assistance reproducing their meta-analysis results from their reported effect sizes but he declined to share their code, and suggested I use the scripts provided by Field & Gillett (2010) that are cited in Vahey et al. (2015). I did so, trying many different things including various necessary assumptions, and cannot reproduce the results of the meta-analysis. In particular, all attempts produced Credibility Intervals with width of zero, [.47, .47], and most attempts produce a different mean effect size of r = .47. Full details of the attempts are available in the preprint. 

Other issues are discussed in the prerprint.