# Travis County Bulk Generation Scenarios

This folder contains the following future scenarios depicting various bulk generation mixes. 
	1. Current Trends
	2. Economic Growth
	3. Renewable Growth

These scenarios are provided in *.pwb format and supply the transmission-level power flow models for the system and can be run using PowerWorld.

The generation mixes in each of these scenarios is determined based on the ERCOT "2018 Long-Term System Assessment for the ERCOT Region" considering renewable unit the geographic characteristics of the Travis County Area (more viable for solar generation integration than wind). 

Generator locations are the same as the Travis County base case, while generator type and capacity are customized for generators selected for conversion. The cost curves are updated to reflect the new generation type and size. This way, the cases have the same transmission topology for each scenario. The sites of fuel type changes are dependent on availability of resources.

## Scenario Descriptions

1. Current Trends
	> Studies trajectory of known technologies on the ERCOT region's footprint.
	> Retirements: 350 MW Natural Gas
	> Additions: 180 MW Wind, 700 MW Solar
	> Generation Mix Summary: 126 MW Hydro, 3306 MW Natural Gas, 731 MW Solar, 180 MW Wind

2. Economic Growth
	> Considers significant growth in all sectors of the economy.
	> Retirements: 50 MW Natural Gas
	> Additions: 320 MW Wind, 1100 MW Solar
	> Generation Mix Summary: 126 MW Hydro, 3606 MW Natural Gas, 1134 MW Solar, 320 MW Wind

3. Renewable Growth
	> Considers favorable federal policies and reduced capital cost for renewable technologies.
	> Retirements: 800 MW Natural Gas
	> Additions: 550 MW Wind, 2400 MW Solar
	> Generation Mix Summary: 126 MW Hydro, 2856 MW Natural Gas, 2431 MW Solar, 550 MW Wind


## Getting Started

Open the files in PowerWorld by opening the PowerWorld Simulator software, select: File > Open Case and then select the desired *.pwb file.

To run a power flow, select the "Tools" then click the calcultor labeled "Solve Power Flow - Newton". If you'd like to adjust the solution process for the power flow analysis, these options are available using the next button to the right, labeled "Simulator Options..."

## Accessing Model Data

Select "Case Information", then "Model Explorer..." to navigate all model data including details on the branches, buses, generators, loads, transformers, et cetera.

### Prerequisites

These files require PowerWorld Simulator to load and run. 

## Acknowledgements

This   work   was   authored   in   part   by   the   National   Renewable   EnergyLaboratory,  operated  by  Alliance  for  Sustainable  Energy,  LLC,  for  the  U.S.Department  of  Energy  (DOE)  under  Contract  No.  DE-AC36-08GO28308.Funding provided by the Advanced Research Projects Agency–Energy. A por-tion of the research was performed using computational resources sponsoredby  the  Department  of  Energy’s  Office  of  Energy  Efficiency  and  RenewableEnergy and located at the National Renewable Energy Laboratory. The viewsexpressed  in  the  article  do  not  necessarily  represent  the  views  of  the  DOEor the U.S. Government. The U.S. Government retains and the publisher, byaccepting the article for publication, acknowledges that the U.S. Governmentretains a nonexclusive, paid-up, irrevocable, worldwide license to publish orreproduce the published form of this work, or allow others to do so, for U.S. Government purposes.

## Reference Paper

These scenarios are released with the paper entitiled, "Building Highly Detailed Synthetic Electric Grid Data Sets for Combined Transmission and Distribution Systems" with authors Hanyue Li, Jessica L. Wert, Adam B. Birchfield, Thomas J. Overbye, Carlos Mateo Domingo, Fernando Postigo, Pablo Duenas, Tarek Elgindy, and Bryan Palmintier.