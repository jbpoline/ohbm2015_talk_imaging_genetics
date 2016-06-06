---
title: Reproducibility in Brain Imaging Genetics  
subtitle: The question of reproducibility in Brain Imaging Genetics  
author: Jean-Baptiste Poline  \newline  \newline
   \small \texttt{jbpoline@berkeley.edu}  
shortauthor: JB Poline
institute: Henry Wheeler Jr. Brain Imaging Center,  \newline
	Helen Wills Neuroscience Institute, UC Berkeley, CA  
shortinstitute: UC Berkeley
date: June 24, 2016
---

Reproducibility - preliminary remarks
======================================================

* Reminding ourselves : Reproducibility is the backbone of scientific activity
* Reproducibility versus replicability
* Is there a problem ?
* Plan: 
    - Evidence for the problem
    - Causes: especially power issues
    - What should we do


Reproducibility - evidence of the problem
======================================================

* In general: Nature, "Reducing our irreproducibility", 2013.
    - New mechanism for independently replicating needed 
    - Easy to misinterpret artefacts as biologically important  
    - Too many sloppy mistakes 
    - Is most published research really false?  Leek and Jager, 2016

> * In epidemiology Ioannidis 2011: “The FP/FN Ratio in Epidemiologic Studies:” 

> * In social sciences and in psychology
    * Estimating the Reproducibility of Psychology (open science collaboration)
    * Simmons, et al. “... Undisclosed Flexibility ... Allows Presenting Anything as Significant.” 2011.

> * In cognitive neuroscience
    - Barch, Deanna M., and Tal Yarkoni. “Special Issue on Reliability and Replication”  2013.

Reproducibility - evidence of the problem
======================================================

* Oncology Research: Begley C.G. & Ellis L. Nature, (2012): "6 out of 53 key findings... "

* In brain imaging
    - Raemaekers,  “Test–retest Reliability of fMRI...",  2007 
    - Thirion et al., 2007: reproducibility of second level analyses
    - Boekel et al, 2015, Kanai et al, 2016, Mulhert et al, 2016

* In genetics
    - Ionannidis 2007: 16 SNPs hypothesized, check on 12-32k cancer/control 
    - "Drinking from the fire hose ..." by Hunter and Kraft, 2007.
    - Mufano 2009: Bias in genetic association studies and impact factor
    - Heller 2014: Replicability analysis for GWAS

* And in imaging genetics ?
    - Functional Connectivity Analyses in Imaging Genetics 
    - Statistical issue in enrichment analysis led to paper retraction.

Reproducibility - do we start to care ? 
========================================

![Why do we have reproducibility issues](./images/metric_publi_reproducibility.pdf)

Why do we have a problem? 
==========================

![Why do we have reproducibility issues](./images/why_reproducibility_issues.pdf)

Why do we have a problem? 
==========================

* Publication pressure is high
    - Cannot afford *not* to have a paper out of this data set - competitive research
* Mistakes are done
    - cf quite a few examples (R/L, Scripts errors (ADHD 1000FC), Siemens slice order, ...
    - but how many are *not* found ?  
    - "The scientific method’s central motivation is the ubiquity of error — the awareness that mistakes and self-delusion can creep in absolutely anywhere and that the scientist’s effort is primarily expended in recognizing and rooting out error." 
_Donoho, 2009._
* **_Power issues_**

The power issue
===================

* Ioannidis 2005: _"Why most research findings are false"_
* Button et al. 2013: _"Power failure"_
* Remember what is power
* What are the issues of low powered studies
* Tools to compute power
* What is our effect size?

The power issue
===================

What is the effect ?
---------------------

$\hspace{3cm}\mu = \bar{x_1} - \bar{x_2}$

What is the standardized effect ? (eg Cohen's d)
-------------------------------------------------

$\hspace{3cm}d = \frac{\bar{x_1} - \bar{x_2}}{\sigma} = \frac{\mu}{\sigma}$

"Z" : Effect accounting for the sample size 
--------------------------------------------------

$\hspace{3cm}Z = \frac{\mu}{\sigma / \sqrt{n}}$

The power issue
===================
What exactly is power ?
-----------------------
![Power: $\large{W = 1-\beta}$ Here W=77%](./images/what_is_pw.pdf)

Cohen's d and relation with n :
---------------------------------
$\hspace{3cm} d = \frac{\bar{x_1} - \bar{x_2}}{\sigma} = \frac{\mu}{\sigma} \hspace{2cm}$ \large{$Z = \frac{\mu\sqrt{n}}{\sigma} = d \sqrt{n}$}


The power issue
===================
- Studies of low power have low probability of detecting an effect (indeed!)
- Studies of low power have low positive predictive value: $PPV = P(H1 True | Detection)$
- Studies of low power are likely to show inflated effect size 

The power issue
===================

- $PPV = P(H1 True | Detection) = \frac{W \, P_1}{\alpha \, P_0 + W \, P_1}$

- If we have 4/5 that H0 is true, and 1/5 that H1 true, with 30% power: PPV = 60%.


-------------  ----------- ----------  --------
 P1/P0 =0.25   power=0.10,  alpha=0.05 PPV=0.33  
 P1/P0 =0.25   power=0.30,  alpha=0.05 PPV=0.60  
 P1/P0 =0.25   power=0.50,  alpha=0.05 PPV=0.71  
 P1/P0 =0.25   power=0.70,  alpha=0.05 PPV=0.78  
-------------  ----------- ----------  --------

The power issue
===================
What happens with more stringent $\alpha$?
-------------------------------------------------

![higher type I error threshold to account for MC](./images/pw_with_mc.pdf)

* effect on power: power goes down
* effect on PPV: PPV goes up 
* effect on estimated effect size: size bias: goes up

The power issue
===================

Studies of low power inflate the detected effect (2)
----------------------------------------------------

![Repeating experiments: estimated effects are above t05 line, leading to a biased estimation compared to true simulated effect.](./images/power_true.pdf)

The power issue
===================

Studies of low power inflate the detected effect (1)
-----------------------------------------------------

![Button et al. NRN, 2013](./images/butt_fig5.pdf)


The power issue
===================

What is the estimated power in common meta analyses? 
-----------------------------------------------------

![Button et al. NRN, 2013](./images/butt_fig2.pdf)


What is specific to Imaging Genetics
=======================================

- Combinaison of imaging and of genetics issues ("AND" problem) 
- The combination of having to get very large number of subjects for GWAS and not being able to get them in imaging
- The multiple comparison issues
- The "trendiness" of the field
- The flexibility of analyses / exploration
- The capacity to "rationalize findings" 
    - noise in brain images is always interpretable
    - genes are always interpretable

Computing effect size in imaging genetics (1)
===============================================

* Example of Hariri 2002: In Fig 3, Authors report $m_1 = .28, m_2 = .03, \textrm{SDM}_1 = 0.08, \textrm{SDM}_2 = 0.05, n_1 = n_2 = 14$ $\vspace{-0.20cm}$
    - ![Hariri et al. Science, 2002](./images/hariri_fig3.pdf)
$\vspace{-0.10cm}$

> * What is the effect size ? Compute 
    - $s_{1,2} = \sqrt(14-1)\textrm{SDM}_{1,2}$, $d = \frac{m_1 - m_2}{s} = 1.05$ 

> * What is the percentage of variance explained ? 
    - $V_e = \frac{(n_1 + n_2)(m_1-m_2)^2}{n_1 s_1^2 + n_2 s_2^2 + (n_1 + n_2)(m_1-m_2)^2} > 40\%$

Computing effect size in imaging genetics (2)
===============================================

* Example of Shen et al using the ADNI cohort: Association of SNPs and the amount of GM in the hippocampus.

* N = 733 subjects,  considered a large study for imaging, but a very small one for genome wide association. 

* only APOE gene confirmed, p =  6.63e-10: reaches GWAS significance level of 5.10-8

* Effect size for APOE ?  
    - In [2]: n01.isf(6.63e-10)  #- from p to Z value
    - Out[2]: 6.064
    - In [3]: n01.isf(6.63e-10)/sqrt(733) #- Correct for the number of subjects
    - Out[3]: 0.22 


Effect size and reproducibility?
==========================================

* Effect size in imaging genetics:
    - BDNF and hippocampal volume: genuine effect or winners curse? d=0.12, p=0.02, Molendijk (2012)
    - Stein et al, 2012: marker is associated with 0.58% of intracranial volume per risk allele 
    - Flint 2014: Effect size of intermediate phenotype not much greater than others 
    - For psychiatric diseases: mean OR is 1.15, QT: variance explained by 1 locus << 0.5%, 0.1-0.3% for protein or serum concentration 

> * Unlikely effect sizes
    - COMT and DLPFC: meta analysis : d = 0.55,  most studies N < 62 subjects (Meir, 2010) 
    - HTTLPR and amygdala: Hariri 2002: p-value implies that locus explain > 40% of phenotypic variance. d=1.05
    - KCTD8 / cortical area: Paus 2012: 21% of phenotypic variance (250 subjects), d=1.03.

Effect size decreases with years
=====================================

![Molendijk, 2012, BDNF and hippocampal volume](./images/molendijk_2012_f4.pdf) 

$\vspace{-1.2cm}$

![Mier, 2009, COMT & DLPFC](./images/mier_2009_f4.pdf)

Bias and impact factors
=====================================


![Munafo et al., 2009](./images/munafo_bias_impact_factor.pdf)


What are the solutions: 
=========================

- Pre-register hypotheses 
    - More hypotheses 
    - Candidate versus GWAS: cf Flint & Mufano, 2012

> - Statistics: 
    - What is your likely effect size ?
    - Power analyses with the smallest expected effect size (cost does not enter in this calculation) 
    - Take robust statistical tools 
    - Revised standard for statistical evidence (PNAS 2013)
    - Meta analysis - cf Enigma / Replication whenever possible 
    - Effect size variation estimation (bootstrapping)

Power Calculator with 
======================

* Purcell et al. “Genetic Power Calculator” Bioinformatics (2003).

$\vspace{-0.5cm}$

![http://pngu.mgh.harvard.edu/~purcell/gpc/](./images/gene_pw_calc.pdf)

$\vspace{-0.5cm}$

> * http://www.sph.umich.edu/csg/abecasis/cats/

CaTS-text --additive --risk 1.3 --pisample .95 --pimarkers 1. --frequency .3 --case 1067 --control 1067 --alpha 0.00000001 : yields For a one-stage study 0.314.


Recall-by-Genotype and intermediate phenotype
===============================================

* Flint et al., Assessing the utility of intermediate phenotype, Trends in Neurosciences, 2014.

$\vspace{-0.5cm}$

![Recall by Genotype: Genotypic assignment vs randomisation assignment](./images/flint_2014_fig1_recall.pdf)


Train the new generation 
===============================

- Statistics: more in depth that what is usual. 
- Computing: how to check code, version control 
- A more collaborative (eg Enigma) and a more open science model (github for science)
- Work such that others in the community can reproduce **and** build upon

What are the solutions: social 
===================================

* Increase awareness of editors to:
    - Accept replication studies
    - Accept preregistration 
    - Increase the verifiability of analyses (code and data available)
* Share data / share intermediate results 
    - Increase the capacity of the community to verify, test and re-use
    - Increase capacity to do meta/mega analyses 
* Decrease publication pressure (change evaluation criteria - cf new NIH biosketch)  


Imaging Genetic Data available: The good, the bad, the ugly
============================================================

* Criteria:
    - amount of subjects
    - quality of data / quality of documentation
    - Quantity/quality of demographic/behavioural/assesments data
    - *Strings attached*

* Available:
    - UK biobank
    - Enigma
    - ADNI
    - others

Conclusion : Jason's questions
======================================

(a) can I publish a candidate gene study ever?
(b) if I can replicate this finding with one other lab at nominal significance, is that sufficient?
(c) if a SNP is genome-wide significant in a disease study, am I allowed to study its effects in my own lab without multiple comparisons correction? without replication?
(d) can I study rare variants instead without worry of all this statistical correction and power?

Acknowledgement & Conclusion 
======================================

* My colleagues in UCB (M. D'Esposito, M. Brett, J. Millman, F. Perez, et al.)
* My colleagues in Stanford (M. Greicius, J. Richiardi, R. Poldrack, et al.)
* My colleagues in Saclay (V. Frouin, B. Thirion)
* Jason (who reviewed all talks and had quite some work with mine :) and Tom 

![Donoho on publication](./images/dono.pdf)

