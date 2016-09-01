// Load the data
sysuse auto, clear

// Simple regression
reg mpg weight

reg mpg weight length


// With robust standard errors
reg mpg weight length, robust


// Dummies variables for a string/categorical variable
split make
rename make1 manufacturer

xi: reg mpg i.manufacturer

// Encode a string variable to a numeric code
encode(manufacturer), gen(manufacturer_id)
reg mpg i.manufacturer_id

// Absorbing regression
areg mpg weight, absorb(manufacturer)
