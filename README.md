# Miami, FL Housing Market

## The Team
* Kelsey Warzeski (https://github.com/kwarzeski)
* Brendan McNamee (https://github.com/bmcnamee96)
* Brandon L Miller (https://github.com/BrandonMiller97)
* Ash Hussey (https://github.com/Ashtreeforests)

## The Dataset
Derived from https://www.kaggle.com/datasets/deepcontractor/miami-housing-dataset

The dataset is a CSV file that contains information on 13,932 single-family homes sold in Miami, FL.

Information from the original dataset by the columns and their descriptions:

* PARCELNO: unique identifier for each property. About 1% appear multiple times (removed from dataset)
* SALE_PRC: sale price ($)
* LND_SQFOOT: land area (square feet)
* TOTLVGAREA: floor area (square feet)
* SPECFEATVAL: value of special features (e.g., swimming pools) ($)
* RAIL_DIST: distance to the nearest rail line (an indicator of noise) (feet)
* OCEAN_DIST: distance to the ocean (feet)
* WATER_DIST: distance to the nearest body of water (feet)
* CNTR_DIST: distance to the Miami central business district (feet)
* SUBCNTR_DI: distance to the nearest subcenter (feet)
* HWY_DIST: distance to the nearest highway (an indicator of noise) (feet)
* age: age of the structure (renamed to STRUCTURE_AGE)
* avno60plus: dummy variable for airplane noise exceeding an acceptable level
* structure_quality: quality of the structure
* month_sold: sale month in 2016 (1 = jan)
* LATITUDE (bins created to group)
* LONGITUDE (bins created to group)

## The Objective
* Identify the factors within this dataset that might influence the sale and price of a single-family home in Miami, FL.
* Our goal is to predict whether a single family-home in Miami, FL will sell for above or below the average using linear regression model.

## Preliminary Data Processing

### Columns Removed or Renamed

Removed the PARCELNO column from the dataset. Though the column description identifies PARCELNO as a unique identifier, about 1% appear multiple times. Therefore, this column was determined to not be of value in this analysis. 

Renamed age to STRUCTURE_AGE to clarify the data in this column is the age of the house. 

### Latitude and Longitude 

Bins were made for latitude and longitude (latitude_group and longitude_group). Both have 8 groups, divided into an even 8 sections so each bin has different numbers. 

Latitude and longitude were kept as a separate table in preparation for graphing and mapping exports from CSV.

## The Database - SQLite 

### Indexes Created

1. Features
2. Location
3. Target (sales price) 

## The Dashboard

Link to Google Slides: https://docs.google.com/presentation/d/1QIL4Q2CGalK6UhJ39ddxTuKVrbgfWWMYqk2gx9GkZpo/edit#slide=id.g13c486d082e_0_52

Link to Tableau Worksheets:  [https://public.tableau.com/app/profile/brandon.l.miller/viz/Miami_Housing_Data/](https://public.tableau.com/app/profile/brandon.l.miller/viz/shared/RNKWXY3R5)

Using Tableau, this map shows all the homes sold in Miami, FL from this 2016 dataset. High level trends can be seen based on the sale prices of homes sold and the geographical location. These trends are supported by additional graphs below. 

![image](https://user-images.githubusercontent.com/96931376/180333216-31c36142-2316-4ea8-bd36-9f74b9fe2cd4.png)

### Homes Sold by Price 

The majority of these Miami homes sold in 2016 ranged from $200k to $400k. 

![image](https://user-images.githubusercontent.com/96931376/180333583-3cb644b7-c72d-4615-be53-f197ef798803.png)

### Distance from the Ocean (or other bodies of water) 

The more expensive homes were closest to the ocean or other bodies of water. The majority of homes were sold for approximately $250k and trended as farther from the ocean and other bodies of water. 

![image](https://user-images.githubusercontent.com/96931376/180333937-290178c9-9aa5-4c74-ab00-1cff985e721a.png)

![image](https://user-images.githubusercontent.com/96931376/180333922-30ae1682-7756-4ff0-91c1-a634880a31a1.png)

### Distance from Businesses (i.e., central business centers and subcenters) 

The majority of homes sold were farther away from central business centers or subcenters. These homes were sold for approximately $250k or less. The more expensive homes sold were closest to central business centers or subcenters. 

![image](https://user-images.githubusercontent.com/96931376/180334547-2321c56c-1b39-41ad-b724-df587a0a03f2.png)

![image](https://user-images.githubusercontent.com/96931376/180334578-0631cbbb-6ac5-4933-b6c3-c01e9e602dc7.png)

### Distance from Transportation (i.e., railways and highways)

The distance of homes sold from railways had a relatively more uniform trend. While the distance from highway exhibited a slightly more distinctive pattern. The more expensive homes tended to be closer to highways. The majority of homes sold were farther from highways and approximately $250k or less. 

![image](https://user-images.githubusercontent.com/96931376/180335718-13bfa28f-b783-4974-a10c-88e3f9bd658e.png)

![image](https://user-images.githubusercontent.com/96931376/180335738-11db27d3-3cd6-4a61-905e-82c6b02aef0e.png)

### Structure of the Homes Sold

The structure of the homes sold by feature category and trends: 

* Avg. age of the structure
  * The greater the age of the structure, the less cost of the home
  * The newer homes were more expensive 
* Avg. quality of the structure
  * Lower quality homes were sold for approximately $250k or less 
  * Homes sold for approximately $750k or more had a relatively consistent quality value 
* Avg. value of special features
  * The greater the value of special features (i.e., swimming pools), the more expensive the home
  * Majority of the homes sold had minimal special features noted
* Avg. land area (sq. ft.)
  * Overall, the more land area, the more expensive the home
  * Majority of the homes sold had an average of 7,878 sq. ft. of land area
* Avg. floor area (sq. ft.) 
  * Overall, the more living area, the more expensive the home
  * Majority of the homes sold had an average of 2,050 sq. ft. of living area 

![image](https://user-images.githubusercontent.com/96931376/180335789-1dfc2f49-1e0d-4a45-a5ce-451f3893c13a.png)

![image](https://user-images.githubusercontent.com/96931376/180335815-e48959b8-a6ac-4684-9439-6ae3fb9b172c.png)

### Homes Sold by Month 

* A relatively consistent and large number of homes were sold in the months of March, April, May, July, and September
* There is a very slight increase in August
* There is a slight decrease in the number of homes sold in November and December 
* The least number of homes sold were in the months of January, February, and October
* The largest number of homes sold were in June 

![image](https://user-images.githubusercontent.com/96931376/180337319-236ebc37-2207-49ab-8085-ab982d5e54b1.png)

![image](https://user-images.githubusercontent.com/96931376/180337347-5e9c8395-8c37-4eb9-adba-d85d782ff0ec.png)

## Machine Learning

With a model score of 0.69, there are inherent limitations with this prediction model. The limitations of this model score can be seen with the comparison between predicted sales price and the actual sales price of the homes sold from this 2016 dataset. The accuracy of this linear regression model varies. 

![image](https://user-images.githubusercontent.com/96931376/180338823-f2206bac-c057-4ce3-9018-cfd676c4e882.png)

![image](https://user-images.githubusercontent.com/96931376/180338845-fa6b8ec4-3c99-4190-b9f7-bf4da20f4755.png)

![image](https://user-images.githubusercontent.com/96931376/180338861-645c91a3-05d0-481b-83cf-408566d5a4a9.png)

![image](https://user-images.githubusercontent.com/96931376/181129017-a9083452-1d89-4638-9f8a-ddfe1cf39e36.png)

![image](https://user-images.githubusercontent.com/96931376/180338874-301ed25d-6a19-4e55-b8d0-64d6f00a6885.png)

## Next Steps

Additional studies would focus on specific variables to analyze how they may influence the sales price of homes sold in Miami, FL. 

Questions to answer with additional studies might include the following: 
* What are the variables that may play a role in why homes more or less homes are sold in a particular month? 
* How were the quality of the structure and value of special features assessed and measured as part of this 2016 dataset? 
* Are there external variables that may have influenced the patterns seen in this 2016 dataset? 

Additional data that may be required for additional studies: 
* Avg. income of buyers
* Same and/or similar data from the years prior to and after 2016 for a wider range of analysis







  
  
