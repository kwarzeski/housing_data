-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Target" (
    "index" int   NOT NULL,
    "sale_prc" float   NOT NULL,
    CONSTRAINT "pk_Target" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "Features" (
    "index" int   NOT NULL,
    "land_sqfoot" float   NOT NULL,
    "tot_living_area" float   NOT NULL,
    "spec_feat_val" float   NOT NULL,
    "rail_dist" float   NOT NULL,
    "ocean_dist" float   NOT NULL,
    "water_dist" float   NOT NULL,
    "cntr_dist" float   NOT NULL,
    "subcntr_dist" float   NOT NULL,
    "hwy_dist" float   NOT NULL,
    "structure_age" float   NOT NULL,
    "avno60plus" float   NOT NULL,
    "month_sold" float   NOT NULL,
    "structure_quality" float   NOT NULL,
    "latitude_group" float   NOT NULL,
    "longitude_group" float   NOT NULL,
    CONSTRAINT "pk_Features" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "Location" (
    "index" int   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    CONSTRAINT "pk_Location" PRIMARY KEY (
        "index"
     )
);

