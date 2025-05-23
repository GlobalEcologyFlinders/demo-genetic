# Demo-genetic models to simulate genetic rescue
<a href="https://zenodo.org/doi/10.5281/zenodo.10939288"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.10939288.svg" alt="DOI"></a><br>
<img align="right" src="www/GRiconTransp.png" alt="genetic rescue icon" width="180" style="margin-top: 20px">
Code for <a href="http://www.messerlab.org/slim"><em>SLiM</em></a> 4.0 demo-genetic models examining the population effects of genetic rescue <br>
<br>
<em>SLiM</em> ('<strong>S</strong>election on <strong>Li</strong>nked <strong>M</strong>utations') is an <a href="http://doi.org/10.1086/723601">individual-based, forward-in-time simulator</a> designed for studies of evolutionary genetics. <br>
<br>
<a href=mailto:julian.beaman@flinders.edu.au>Julian Beaman</a> & <a href=mailto:corey.bradshaw@flinders.edu.au>Corey Bradshaw</a> <br>
<a href="https://globalecologyflinders.com/">Global Ecology</a> | <em>Partuyarta Ngadluku Wardli Kuu</em> <br>
Flinders University <br>
April 2024 <br>
<br>
Accompanies paper:<br>
<br>
<a href="https://www.flinders.edu.au/people/julian.beaman">Beaman, JE</a>, <a href="https://molecularecology.flinders.edu.au/molecular-ecology-lab/people/postdoctoral-fellows/dr-katie-gates-2/">K Gates</a>, <a href="https://www.flinders.edu.au/people/frederik.saltre">F Saltré</a>, <a href="https://www.sydney.edu.au/science/about/our-people/academic-staff/carolyn-hogg.html">CJ Hogg</a>, <a href="https://www.sydney.edu.au/science/about/our-people/academic-staff/kathy-belov.html">K Belov</a>, <a href="https://scholar.google.com/citations?user=2xF8xocAAAAJ&hl=en">K Ashman</a>, <a href="https://www.flinders.edu.au/people/karen.burkedasilva">K Burke da Silva</a>, <a href="https://www.flinders.edu.au/people/luciano.beheregaray">LB Beheregaray</a>, <a href="https://www.flinders.edu.au/people/corey.bradshaw">CJA Bradshaw</a>. 2025. <a href="http://doi.org/10.1111/eva.70092">A guide for developing demo-genetic models to simulate genetic rescue</a>. <em>Evolutionary Applications</em> 18:e 70092. doi:10.1111/eva.70092
<br>
<br>
Also available as a pre-print:<br>
<br>
Beaman, JE, K Gates, F Saltré, CJ Hogg, K Belov, K Ashman, K Burke da Silva, LB Beheregaray, CJA Bradshaw. 2024. <a href="http://doi.org/10.21203/rs.3.rs-4244443/v1">Developing demo-genetic models to simulate genetic rescue</a>. <em>Research Square</em> doi:10.21203/rs.3.rs-4244443/v1
<br>

### Abstract
Genetic rescue is a conservation management strategy that reduces the negative effects of genetic drift and inbreeding in small and isolated populations. However, such populations might already be vulnerable to random fluctuations in growth rates (demographic stochasticity). Therefore, the success of genetic rescue depends not only on the genetic composition of the source and target populations but also on the emergent outcome of interacting demographic processes and other stochastic events. Developing predictive models that account for feedback between demographic and genetic processes (‘demo-genetic feedback’) is therefore necessary to guide the implementation of genetic rescue to minimise the risk of extinction of threatened populations. Here, we explain how the mutual reinforcement of genetic drift, inbreeding, and demographic stochasticity increases extinction risk in small populations. We then describe how these processes can be modelled by parameterising underlying mechanisms, including deleterious mutations with partial dominance and demographic rates with variances that increase as abundance declines. We combine our suggestions of model parameterisation with a comparison of the relevant capability and flexibility of five open-source programs designed for building genetically explicit, individual-based simulations. Using one of the programs, we provide a heuristic model to demonstrate that simulated genetic rescue can delay extinction of small virtual populations that would otherwise be exposed to greater extinction risk due to demo-genetic feedback. We then use a case study of threatened Australian marsupials to demonstrate that published genetic data can be used in one or all stages of model development and application, including parameterisation, calibration, and validation. We highlight that genetic rescue can be simulated with either virtual or empirical sequence variation (or a hybrid approach) and suggest that model-based decision-making should be informed by ranking the sensitivity of predicted probability/time to extinction to variation in model parameters (e.g., translocation size, frequency, source populations) among different genetic-rescue scenarios.

<img align="right" src="www/GRdecisionTree.jpg" alt="genetic rescue decision tree" style="margin-top: 20px">

##### <strong>A decision tree for model-based guidance of genetic rescue.</strong>
<br>

## <a href="https://github.com/cjabradshaw/demo-genetic/tree/main/scripts">Scripts</a>
- <code>demographicAlleemodel.txt</code>: <em>SLiM</em> 4.0 code to generate a model of demographic Allee effects that included only the influence of demographic stochasticity on population growth.
- <code>genetic-Allee_model.txt</code>: <em>SLiM</em> 4.0 code to generate a model of genetic Allee effects that only included partially recessive deleterious mutations that accumulate in the population prior to an abrupt crash in abundance
- <code>demo-genetic-Allee_model.txt</code>: <em>SLiM</em> 4.0 code to generate a model of demo-genetic Allee effects that includes both demographic stochasticity as described in <code>demographicAlleemodel.txt</code> and partially recessive deleterious mutations as described in <code>genetic-Allee_model.txt</code>.
- <code>rescue-scenario-4_model.txt</code>: <em>SLiM</em> 4.0 code to generate genetic rescue (scenario 4: 100 individuals moved 3 times at 250, 255, and 260 years after demographic decline) scenario.
- <code>R code Figure 3.R</code>: R code to generate data for Figure 3.

<br>
<br>
<p><a href="https://www.flinders.edu.au"><img align="bottom-left" src="www/Flinders_University_Logo_Horizontal_RGB_Master.png" alt="Flinders University" width="150" style="margin-top: 20px"></a> &nbsp; &nbsp; <a href="https://globalecologyflinders.com"><img align="bottom-left" src="www/GEL Logo Kaurna New Transp.png" alt="GEL" width="85" style="margin-top: 20px"></a> &nbsp; &nbsp; &nbsp; <a href="https://molecularecology.flinders.edu.au/"><img align="bottom-left" src="www/MELlogo.png" alt="MELFU logo" width="110" style="margin-top: 20px"></a> &nbsp; &nbsp; &nbsp; <a href="https://wildlife-genomics.sydney.edu.au/"><img align="bottom-left" src="www/USydlogo.png" alt="USyd logo" width="70" style="margin-top: 20px"></a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://wwf.org.au/"><img align="bottom-left" src="www/WWFlogo.webp" alt="WWF logo" width="50" style="margin-top: 20px"></a>
