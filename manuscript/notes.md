# data extraction and effect size conversion issues

vahey treat partial eta squared as if it is eta squared for effect size conversions. this is incorrect.

vahey treat (partial) eta squared as if it is generalized eta squared when meta analysing; they take (partial) eta square values for different types of factorial designs and meta anlayze them. this is in appropriate. (lakens 2013)

confidence intervals around r values converted from eta squared appear be calculated using r and N, which is in appropriate for eta2. this might not be the case, it is a best guess. but the manuscript fails to specify how they were calculated. 



 note somewhere in the plot of reextractions that some N = XX effect sizes are not included  in the table as they should not have been converted in the first place (e.g., partial eta squared being treated as if it is eta to convert to r). or plot these somehow and label them as incorrect conversions?



note somewhere that while i aimed for completeness, this reanalysis is not a forensic examination. in some cases, original studies did not report results in sufficient detail to extract effect sizes; only some authors could be contacted for more detailed statistical output. 



# effects not chosen for meta by vahey

vahey chose effects based on their "a priori" predicability!

dawson child sex offenders group child-sexual trial type, non significant, not selected

Timko et al. (2010; Study 1) overall D-IRAP score ~ DASS-total (r = 0.48): this correlation with DASS total is not actually reported in the manuscript. Perhaps Vahey asked the authors for their data? But this goes beyond stating that some hypotheses were potentially a priori predictable to imposing new ones the authors didn't ask.

timko et al., 2010 study 1, Between  groups comparison - not dieting versus those dieting. NB there are two  dieting groups, one to lose weight and one to maintain. Vahey does not note  which they are comparing, or why one comparison was excluded. [only the significant one was included?]

Vahey et al (2009) reported comparisons between three groups: 

- undergraduate vs main block prisoners (r = .46, in line with predictions)

- main block vs open air prisoners (r = -.62, against predictions)

- undergraduate vs open air prisoners (r = -0.04, against predictions)
  - Only the first ES was included in Vahey's meta analysis, while also being the only ES that was large and in the predicted direction. 

nicholson papers  sometimes chose subscale correlations but not others, and this choice seems to be related to the strength of the result (ie preferable result was chosen)

nicholson and vahey papers illustrate the need for blinding - authors of meta analysis who were assessing bias in the original papers were authors of many of the original papers, and futhermore demosntrated bias in the selection of effect sizes from those papers. 



## Points to possibly add

- comparisons with the IAT
- Note somewhere that these analyses are on only the XX articles that Vahey considered, not the 106+ that now exist in the literature.
- add a plot that compares meta ES in vahey, the reproduced analysis (same data, attempt to recreate method), and the new one.



## Quotes from article 

The present meta-analysis aimed to quantify how much IRAP effects from clinically-relevant responding co-vary with corresponding clinically-relevant criterion variables, such as known group differences, self-reports of clinically-relevant psychological events (e.g., ratings on a disgust scale) and performances on behavioural approach tasks.

To be included within the current meta-analysis a given statistical effect must have described the co-variation of an IRAP effect with a corresponding clinically-focused criterion variable. To qualify as clinically-focused, the IRAP and criterion variables must have been deemed to target some aspect of a condition included in a major psychiatric diagnostic scheme such as the Diagnostic and Statistical Manual of Mental Disorders (DSM-5, 2013). For example, consider IRAP effects designed to measure pro-smoking responding that participates in tobacco use disorder. In principle, such IRAP effects should co-vary, for instance, with various operational definitions of tobacco addiction such as number of cigarettes smoked per day or self reports of urges to smoke.

By applying this general inclusion criterion across the entire extant IRAP literature of 46 published articles, the first two authors ultimately identified only 15 articles reporting clinically focused IRAP effects that were accompanied by directly relevant criterion variables. Collectively, these 15 articles yielded **56 statistical effects between various clinically focused IRAP effects and their respective criterion variables**. The authors arrived at this final selection of statistical effects by first independently reviewing the entire IRAP literature for qualifying statistical effects, before then critically discussing each other's rationales. From the outset, there was no disagreement between the authors about what statistical effects should be excluded from the meta-analysis; and **of the 56 statistical effects only 8 (i.e. 14%) were not initially cited by both authors for inclusion.**

Adopting a conservative approach in favour of controlling for overly optimistic publication biases, the most recent recommendation is to calculate sample size requirements not in terms of a given meta-effect, but rather in terms of the lower bound of its associated confidence interval (Perugini, Gallucci, & Costantini, 2014). Given that we obtained a confidence interval of (.40, .54) around the present meta-effect, Perugini et al.'s approach implies that a sample size of at least N 1⁄4 37 would be required in order to achieve a statistical power of .80 when testing a continuous first-order correlation between a clinically-focused IRAP effect and a given criterion variable (i.e. as opposed to N 1⁄4 29 without Perugini et al.'s correction). 

The present paper **demonstrates the potential of the IRAP as a tool for clinical assessment** and it is hoped that the present meta-analysis will prove useful to clinical researchers who are considering using the IRAP as a measure. 

## Notes 

NB incredibility index is used to detect p hacking (ie QRPs to change indiviudal p values), but it cannot detect failure to apply multiple testing corrections amond a large number of reported variables, where all are reported. 

Meta r = .45 equals a Cohens d = 1.00. So, either the IRAP is incredible, more than any other field of psychology, and better than similarly structured measured that see similar use (e.g., the RRT), or there's something else going on.