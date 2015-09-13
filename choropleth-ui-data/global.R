# global.R

# load libraries
library(shiny)
library(rUnemploymentData)
library(choroplethrMaps)

# load the data
data(df_county_unemployment)

# map the state names displayed in the UI onto lower-case names 
# this is required for the choropleth functions
# (is there an easier way to do this?)
states = c("Alaska" = "alaska",
    "Alabama" = "alabama",
    "Arkansas" = "arkansas",
    "Arizona" = "arizona",
    "California" = "california",
    "Colorado" = "colorado",
    "Connecticut" = "connecticut",
    "District of Columbia" = "district of columbia",
    "Delaware" = "delaware",
    "Florida" = "florida",
    "Georgia" = "georgia",
    "Hawaii" = "hawaii",
    "Iowa" = "iowa",
    "Idaho" = "idaho",
    "Illinois" = "illinois",
    "Indiana" = "indiana",
    "Kansas" = "kansas",
    "Kentucky" = "kentucky",
    "Louisiana" = "louisiana",
    "Massachusetts" = "massachusetts",
    "Maryland" = "maryland",
    "Maine" = "maine",
    "Michigan" = "michigan",
    "Minnesota" = "minnesota",
    "Missouri" = "missouri",
    "Mississippi" = "mississippi",
    "Montana" = "montana",
    "North Carolina" = "north carolina",
    "North Dakota" = "north dakota",
    "Nebraska" = "nebraska",
    "New Hampshire" = "new hampshire",
    "New Jersey" = "new jersey",
    "New Mexico" = "new mexico",
    "Nevada" = "nevada",
    "New York" = "new york",
    "Ohio" = "ohio",
    "Oklahoma" = "oklahoma",
    "Oregon" = "oregon",
    "Pennsylvania" = "pennsylvania",
    "Rhode Island" = "rhode island",
    "South Carolina" = "south carolina",
    "South Dakota" = "south dakota",
    "Tennessee" = "tennessee",
    "Texas" = "texas",
    "Utah" = "utah",
    "Virginia" = "virginia",
    "Vermont" = "vermont",
    "Washington" = "washington",
    "Wisconsin" = "wisconsin",
    "West Virginia" = "west virginia",
    "Wyoming" = "wyoming")

