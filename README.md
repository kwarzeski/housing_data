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
* Our goal is to calculate or predict the price of single family-homes in Miami, FL using logistical regression model.

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
3. Target

## Preliminary Dashboard

Link to Google Slides: https://docs.google.com/presentation/d/1QIL4Q2CGalK6UhJ39ddxTuKVrbgfWWMYqk2gx9GkZpo/edit#slide=id.g13c486d082e_0_52

Use Tableau to create interactive graph or map as it relates to the prices of single family-homes in Miami, FL. 

