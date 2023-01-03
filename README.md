
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mapspamc_mwi

This repository contains the scripts to create crop distribution maps
with the [`mapspamc`](https://github.com/michielvandijk/mapspamc) R
package for Malawi, covering the year 2010. To run the scripts, the user
needs to install `mapspamc` and download the [mapspamc
database](https://doi.org/10.5281/zenodo.7031917), which includes all
the required input data, including subnational crop statistics for
Malawi as well as global maps. Note that the (subnational) statistics
were modified for illustrative purposes and therefore results might
differ from those presented in SPAM2010 (Yu et al. 2020). Please use the
original SPAM database when presenting crop distribution maps for
Malawi.

Detailed information on how to install the package and run the Ethiopia
case-study is provided in the articles of the `mapspamc` [package
website](https://michielvandijk.github.io/mapspamc/).

<!-- Additional information is available in a scientific journal article [@VanDijk2022b]. Please cite this article if you use the `mapspamc`package. -->

Note that it takes up to several hours to run the models, in particular
when a resolution of 30 arc seconds is selected. The table below
presents the model dimensions and model running time using a machine
with an Intel(R) Xeon(R) E-2276M CPU @ 2.81 GHz processor and 32 GB RAM.

|                                              | Cross-entropy       | Fitness score       |
|----------------------------------------------|---------------------|---------------------|
| Resolution                                   | 5 arc minutes       | 30 arc seconds      |
| Solve level                                  | 0                   | 0                   |
| Number of crops                              | 29                  | 29                  |
| Number of production systems x crops         | 66                  | 66                  |
| Number of administrative units               | 3 (ADM1), 27 (ADM2) | 3 (ADM1), 27 (ADM2) |
| Number of crops with subnational information | 19                  | 19                  |
| Number of cropland cells                     | 1,104               | 104,965             |
| Running time                                 | 271 sec             | 5,610 sec           |
| Solver                                       | IPOPT               | CPLEX               |

## References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Yu2020" class="csl-entry">

Yu, Qiangyi, Liangzhi You, Ulrike Wood-Sichra, Yating Ru, Alison K. B.
Joglekar, Steffen Fritz, Wei Xiong, Miao Lu, Wenbin Wu, and Peng Yang.
2020. “<span class="nocase">A cultivated planet in 2010 – Part 2: The
global gridded agricultural-production maps</span>.” *Earth System
Science Data* 12 (4): 3545–72.
<https://doi.org/10.5194/essd-12-3545-2020>.

</div>

</div>
