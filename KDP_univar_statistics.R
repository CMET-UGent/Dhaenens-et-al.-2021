#basic univariate statistics
#version 2020
#Kim De Paepe

univariatestat <- function(variable,designfactor,padj="holm",minobs=5){

if(minobs<2){minobs = 2} 
dataframe <- data.frame(variable,designfactor)  

# Sufficient observations per group?
obsperlevel <- aggregate(data.frame(count = variable), list(value = designfactor), function(x) {length(x)})
obsperlevel.insuf <- obsperlevel %>% subset(count<minobs)
obsperlevel.suf <- obsperlevel %>% subset(count>minobs)
dataframe_red <- dataframe[designfactor%in%obsperlevel.suf$value,]
variable_red <- as.numeric(as.character(dataframe_red$variable))
designfactor_red <- as.factor(dataframe_red$designfactor)
 
# Assumption of normality of the residuals (as alternative for two separate group testing).
anovaresults <- stats::aov(variable_red~designfactor_red)
#plot(anovaresults)
plotnorm <- qqnorm(residuals(anovaresults));qqline(residuals(anovaresults)) 
pval_sw <- shapiro.test(residuals(anovaresults))$p.value # p<0.05, data are not normally distributed
#TukeyHSD(anovaresults)
#plot(TukeyHSD(anovaresults),last=1)

# Assumption of homoscedasticity
pval_bart <- bartlett.test(variable_red~designfactor_red)$p.value

if(pval_sw>0.05&pval_bart>0.05){
    test <- c("anova","pairwise.t.test")
    # Parametric group level comparison
    aovsum <- summary(anovaresults)
    pval_group <- unlist(aovsum)[['Pr(>F)1']]
    if(pval_group<=0.05){
        # Parametric pairwise comparisons 
        pval_pair <- na.omit(reshape2::melt(tibble::rownames_to_column(data.frame(pairwise.t.test(x=as.numeric(as.character(variable_red)), g=designfactor_red, p.adjust=padj)$p.value)),id.vars="rowname"))
        pval_pair$variable <-gsub("X","",pval_pair$variable)
        pval_pair_forletters <-pval_pair$value
        names(pval_pair_forletters) <- paste(pval_pair$variable,pval_pair$rowname,sep="-")
        letters <- tibble::rownames_to_column(data.frame(multcompView::multcompLetters(pval_pair_forletters)$"Letters"))
    }
} else{
    test <- c("Kruskal-Wallis","pairwise.wilcox.test")
    # Non-parametric group level comparison 
    pval_group <- kruskal.test(as.numeric(as.character(variable_red))~designfactor_red)$p.value
    if(pval_group<=0.05){
        pval_pair <- na.omit(reshape2::melt(tibble::rownames_to_column(data.frame(pairwise.wilcox.test(as.numeric(as.character(variable_red)),designfactor_red,paired=FALSE,p.adjust.method = "holm")$p.value)),id.vars="rowname"))
        pval_pair$variable <-gsub("X","",pval_pair$variable)
        pval_pair_forletters <-pval_pair$value
        names(pval_pair_forletters) <- paste(pval_pair$variable,pval_pair$rowname,sep="-")
        letters <- tibble::rownames_to_column(data.frame(letters=multcompView::multcompLetters(pval_pair_forletters)$"Letters"))
    }
    aovsum <- NA}

if(pval_group>0.05){
    pval_pair <- "Not calculated"
    letters <- data.frame(rowname=obsperlevel.suf$value,letters=rep("a",nrow(obsperlevel.suf)))
}

if(nrow(obsperlevel.insuf)>0){
    pval_pair_NA <- data.frame(rowname=setdiff(designfactor,designfactor_red),letters="NA")
    letters <- rbind(letters,pval_pair_NA)
} 


stat_list <- list(obsperlevel.insuf=obsperlevel.insuf,aovresults=anovaresults,plotnorm=plotnorm,plothomosced=boxplot(as.numeric(as.character(variable))~designfactor,main=paste(i,sep=" ")),aovsummary=aovsum,test=test,pval_group=pval_group,pval_pair=pval_pair,letters=letters)

return(stat_list)
}

