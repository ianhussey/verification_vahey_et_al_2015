# Verification report: A critical reanalysis of Vahey et al. (2015) “A meta-analysis of criterion effects for the Implicit Relational Assessment Procedure (IRAP) in the clinical domain”



## Abstract

[Vahey et al.’s (2015) meta-analysis](https://doi.org/10.1016/j.jbtep.2015.01.004) concluded that the Implicit Relational Assessment Procedure (IRAP) has high clinical criterion validity (meta-analytic r = .45) and therefore “the potential of the IRAP as a tool for clinical assessment” (p. 64). Vahey et al.’s (2015) power analyses are frequently cited for sample size determination, especially their heuristic of *N* > 37. This article attempts to verify those results. Results were found to have very poor reproducibility at almost every stage of their analytic strategy, with errors biased towards inflating the effect size. The reported meta-analysis results were found to be mathematically implausible, and could not be reproduced despite numerous attempts. Multiple internal discrepancies were found in the effect sizes, e.g., between the forest vs. funnel plot, and the forest plot vs. the supplementary data. 23 of the 56 (41.1%) originally included effect sizes were not criterion effects that were erroneously included. Inspection of the original articles revealed 360 additional effect sizes that met inclusion criteria that should have been included. A new meta-analysis was calculated to understand the compound impact of these errors. The effect size was half the size of the original (r = .22), and the power analyses recommended sample sizes nearly 10 times larger than the original (*N* > 346), which no published original study using the IRAP has met. In aggregate, this seriously undermines the credibility and utility of the original article’s conclusions and recommendations. Vahey et al. (2015) appears to need substantial correction. In particular, researchers should not rely on its results for sample size justification. A list of suggestions for error detection in meta-analyses is provided. 

## OSF project

[osf.io/jg8td](https://osf.io/jg8td/)

## Instructions for re-running the analyses / computational reproduciblity

In order to re-rerun the analyses, open `analyses/analyses.Rmd` in RStudio running R version 4.3.3 and click the knit button. 

For greater reprodudicibility over time, you can alternatively open and run `analyses/analyses_groundhog.Rmd`, which uses the {groundhog} package to load specific versions of each dependency that are known to work. Note that you should still run this from R version 4.3.3. Newer versions of RStudio allow you to have multiple versions of R installed and select which one to use, so switching isn't that much bother. This script only differs in how it loads dependencies, and is identical from line 48 onward, except that it does not use the functions `knitr::kable()` and `kableExtra::kable_classic()` to produce more legible tables, due to compatibility issues with groundhog. 
