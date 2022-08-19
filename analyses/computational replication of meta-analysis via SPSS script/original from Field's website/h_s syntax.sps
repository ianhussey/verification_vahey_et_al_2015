*******************************************************************.
*  Original Syntax from:
*  
* Field, A. & Gillett, R. (2010).   "How To Do Meta-Analysis".
*   British Journal of Mathematical and Statistical Psychology.

* Additional Material by:
* 
* Maja Osolnik, I/O Psychology Graduate Student
* Saint Cloud State University 2011 (osma0904@stcloudstate.edu)

*******************************************************************.


*renaming the variable.
rename variables SampleSIZE=n.
rename variables Fake_PozRel = rx.
rename variables EE_Reliability = ry.
rename variables R_EE_FakePoz=rxy.

*selecting only studies that included the correlation of interest. 
recode rxy (sysmiss=999).
select if (rxy ne 999).
execute.

*frequencies - if any of the studies did not provide a reliability estimate.
freq rx ry rxy.

*descriptives - to obtain the mean reliability estimate for the measures that had a missing reliability, and replace the missing 
value with the mean in the get matrix subcommand.
des rx ry.

*even though missing values can be replaced by this comand: RMV /EE_Reliability_1=SMEAN(EE_Reliability),
 it might be good to know exactly how many studeies had missing data on reliabilies.

set printback=none.
dataset name original.
cd  "%HOMEDRIVE%%HOMEPATH%\Documents\Meta-Analysis".
matrix.
* input variables.
get rxy /variables = rxy .
get n /variables = n.
GET rx /variables = rx
 /missing=accept
 /sysmiss=.78.
get ry /variables = ry
 /missing=accept
 /sysmiss=.88.

*sysmiss =input the mean value of the reliability estimate - replaces all missing values with the mean. 

*computing the number of studies.
compute k = nrow(rxy).

print /title = "**********   META-ANALYSIS OF CORRELATION COEFFICIENTS:  r   **********".
print {k}/clabels=k/format=f9.0/title = "NUMBER OF STUDIES".

*total sample size.
compute totaln = csum(n).

*sample size weighed average correlation.
compute rav = csum(n&*rxy)/csum(n).

*observed variability in correlations (variance across studies; total variability).
compute srsq = csum(n&*((rxy-rav)&**2))/csum(n).

*variability attributable to sampling error.
compute sevar = csum(n&*((1-rav&**2)**2)&/(n-1))/csum(n).

*variability, after sampling error variance has been removed.
compute corrvar = srsq - sevar.

*% of total variability attributable to sampling error.
compute accfor =(sevar/srsq)*100.

compute sster =sqrt(sevar).

*computing 95% confidence intervals.
compute lci = rav - 1.96*sster.
compute hci = rav + 1.96*sster.

*computing the compound attenuation factor.
compute anakv= rx&*ry.
compute akor=sqrt(anakv).

*computing weights - each study is weighted by the sample size, as well as the amount of error associated with that study.
compute w=anakv&*n.

compute ccorr=rxy&/akor.

*corr corected for measur error.
compute cocorr=csum(w&*ccorr)/csum(w).

*all observed variability in corrected corr.
compute varccor=csum(w&*((ccorr-cocorr)&**2))/csum(w).

*variability due to artifacts.
compute cose=(((1-rav&**2)**2)&/(n-1))/anakv.
compute avcose=csum(w&*cose)/csum(w).

*variability in corrected corelations, after removing variablity due to artifacts.
compute clvar=varccor-avcose.

*if the variance in corrected correlations has a negative value, it indicates that the variance of corrected correlation is 0
(the variance attributable to artifacts is actually grater than the observed variance).
*do if - also, because the sqrt can not be obtained for negative values.

do if (clvar >=0).

*sd of corr correl (artifacts removed).
compute sdcoco=sqrt(clvar).

*compute credibility intervals. *80% = 1.28. 
*credibility intervals use SD, confidence intervals use SE.

compute novcrl = cocorr  - 1.28*sdcoco.
compute novcrh = cocorr  + 1.28*sdcoco.

*compute variance accounted for by artifacts.
compute pervar=(avcose/varccor)*100.

end if.

do if (clvar < 0).
compute sdcoco=0.
compute novcrl = cocorr.
compute novcrh = cocorr.
compute pervar=(avcose/varccor)*100.
end if.




print /title = "**********   HUNTER-SCHMIDT RANDOM-EFFECTS MODEL   **********".
print {rav}/clabels='Mean r', df/format=f9.3/title='MEAN EFFECT SIZE'.
print totaln /format=f9.4 /title = "Total sample size".
print srsq /format=f9.4 /title = "Sampling size weighted observed variance of correlations (total variance)".
print sevar /format=f9.4 /title = "Variance attributable to Sampling Error Variance".
print corrvar /format=f9.4 /title = "Variance of correlations after removing sampling error variance".
print accfor /format=f9.4 /title = "% variance accounted of observed correlations attributable to sampling error variance".
print lci /format=f9.4 /title = "Lower endpoint".
print hci /format=f9.4 /title = "Higher endpoint".
print cocorr/format=f9.4 /title = "Correlations corrected for unreliability".
print varccor /format=f9.4 /title = "Observed variance of corrected correlations".
print avcose /format=f9.4 /title = "Variance in correlations attributable to all artifacts (SE & unreliability)".
print clvar /format=f9.4 /title = "Variance of true score correlations (total-arifacts)".
print sdcoco /format=f9.4 /title = "SD with variance due to sampling error and other artifacts (unreliability) removed from the estimate of SD (sqrt of var. of corcorr)".
print novcrl /format=f9.4 /title = "Lower endpoint of corrected correlation Credibility Interval 80 %".
print novcrh /format=f9.4 /title = "Higher endpoint of corrected correlation  Credibility Interval 80%".
print pervar /format=f9.4 /title = "% variance of population/corrected correlations attributable to all artifacts".
end matrix.







