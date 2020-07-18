# dependencies 
library(tidyverse)
library(metafor)

add_heterogeneity_metrics_to_forest <- function(fit) {
  bquote(paste("RE Model (", tau^2, " = ", .(formatC(round(fit$tau2, 1))), 
               ", ", I^2, " = ", .(formatC(round(fit$I2, 1))),
               "%, ", H^2," = ", .(formatC(round(fit$H2, 1))), ")"))
}

setwd("~/git/reanalysis-of-vahey-2015/analyses/")


# get data
fit_reproduced <- read_rds("models/fit_reproduced.rds")
fit_new <- read_rds("models/fit_new.rds")



# forest plot
pdf(NULL)
dev.control(displaylist = "enable")

metafor::forest(fit_reproduced,
                xlab = substitute(paste("Pearson's ", italic('r'))),
                refline = 0,
                addcred = TRUE,
                mlab = add_heterogeneity_metrics_to_forest(fit_reproduced),
                xlim = c(-1.2, 1.5),
                at = c(-.25, 0, .25, .5, .75, 1))
text(-1.2, 17, "Study", pos = 4)
text(1.5, 16.85, substitute(paste(italic('r'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())

pdf("plots/forest_plot.pdf",
    width = 9, 
    height = 5.5)
p1
dev.off()



# caterpillar plot is more useful when k of effect sizes is large
pdf(NULL)
dev.control(displaylist = "enable")

metafor::forest(transf.ztor(data_for_meta_new$yi), 
                data_for_meta_new$vi,
                xlab = substitute(paste("Pearson's ", italic('r'))),
                subset = order(transf.ztor(data_for_meta_new$yi)),        ### order by size of yi
                slab = NA, 
                annotate = FALSE, ### remove study labels and annotations
                efac = 0,                  ### remove vertical bars at end of CIs
                pch = 19,                  ### changing point symbol to filled circle
                #col = "gray40",            ### change color of points/CIs
                psize = .75,                 ### point size
                cex.lab = 1, 
                cex.axis = 1,   ### increase size of x-axis title/labels
                lty = c("solid","blank"),  ### remove horizontal line at top of plot
                xlim = c(-1.1, 1.1),    ### adjust horizontal plot region limits
                at = c(-1, -.5, 0, .5, 1))        
## draw points one more time to make them easier to see
points(sort(transf.ztor(data_for_meta_new$yi)), 
       nrow(data_for_meta_new):1, 
       pch = 19, 
       cex = .75)
## add meta effect size
addpoly(fit_new, 
        mlab = "", 
        annotate = FALSE, 
        addcred = TRUE,
        cex = 1)
## add text
text(-1, -2, "RE model", pos = 4, offset = 0, cex = 1)

p2 <- recordPlot()
invisible(dev.off())

pdf("plots/caterpillar_plot.pdf",
    width = 6, 
    height = 8)
p2
dev.off()



