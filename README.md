# Demo-genetic models to simulate genetic rescue
<img align="right" src="www/GRiconTransp.png" alt="genetic rescue icon" width="180" style="margin-top: 20px">
Code for <a href="http://www.messerlab.org/slim"><em>SLiM</em></a> 4.0 demo-genetic models examining the population effects of genetic rescue <br>
<br>
<em>SLiM</em> ('<strong>S</strong>election on <strong>Li</strong>nked <strong>M</strong>utations') is an <a href="http://doi.org/10.1086/723601">individual-based, forward-in-time simulator</a> designed for studies of evolutionary genetics. <br>
<br>
<a href=mailto:julian.beaman@flinders.edu.au>Julian Beaman</a> & <a href=mailto:corey.bradshaw@flinders.edu.au>Corey Bradshaw</a> <br>
Global Ecology | <em>Partuyarta Ngadluku Wardli Kuu</em> <br>
Flinders University <br>
April 2024 <br>
<br>
Accompanies paper:<br>
<br>
<a href="https://www.flinders.edu.au/people/julian.beaman">Beaman, JE</a>, <a href="https://molecularecology.flinders.edu.au/molecular-ecology-lab/people/postdoctoral-fellows/dr-katie-gates-2/">K Gates</a>, <a href="https://www.flinders.edu.au/people/frederik.saltre">F Saltré</a>, <a href="https://www.sydney.edu.au/science/about/our-people/academic-staff/carolyn-hogg.html">CJ Hogg</a>, <a href="https://www.sydney.edu.au/science/about/our-people/academic-staff/kathy-belov.html">K Belov</a>, <a href="https://scholar.google.com/citations?user=2xF8xocAAAAJ&hl=en">K Ashman</a>, <a href="https://www.flinders.edu.au/people/karen.burkedasilva">K Burke da Silva</a>, <a href="https://www.flinders.edu.au/people/luciano.beheregaray">LB Beheregaray</a>, <a href="https://www.flinders.edu.au/people/corey.bradshaw">CJA Bradshaw</a>. A guide for developing demo-genetic models to simulate genetic rescue. <em>Evolutionary Applications</em> In review

## Scripts
- <code>demographicAlleemodel.txt</code>: <em>SLiM</em> 4.0 code to generate a model of demographic Allee effects that included only the influence of demographic stochasticity on population growth.
- <code>genetic-Allee_model.txt</code>: <em>SLiM</em> 4.0 code to generate a model of genetic Allee effects that only included partially recessive deleterious mutations that accumulate in the population prior to an abrupt crash in abundance
- <code>demo-genetic-Allee_model.txt</code>: <em>SLiM</em> 4.0 code to generate a model of demo-genetic Allee effects that includes both demographic stochasticity as described in <code>demographicAlleemodel.txt</code> and partially recessive deleterious mutations as described in <code>genetic-Allee_model.txt</code>.
- <code>rescue-scenario-4_model.txt</code>: <em>SLiM</em> 4.0 code to generate genetic rescue (scenario 4: 100 individuals moved 3 times at 250, 255, and 260 years after demographic decline) scenario.
- <code>R code Figure 4.R</code>: R code to generate data for Figure 4.

<p><a href="https://www.flinders.edu.au"><img align="bottom-left" src="www/Flinders_University_Logo_Horizontal_RGB_Master.png" alt="Flinders University" width="150" style="margin-top: 20px"></a> &nbsp; &nbsp; <a href="https://globalecologyflinders.com"><img align="bottom-left" src="www/GEL Logo Kaurna New Transp.png" alt="GEL" width="85" style="margin-top: 20px"></a> &nbsp; &nbsp; &nbsp; <a href="https://molecularecology.flinders.edu.au/"><img align="bottom-left" src="www/MELlogo.png" alt="MELFU logo" width="110" style="margin-top: 20px"></a> &nbsp; &nbsp; &nbsp; <a href="https://wildlife-genomics.sydney.edu.au/"><img align="bottom-left" src="www/USydlogo.png" alt="USyd logo" width="70" style="margin-top: 20px"></a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://wwf.org.au/"><img align="bottom-left" src="www/WWFlogo.webp" alt="WWF logo" width="50" style="margin-top: 20px"></a>
