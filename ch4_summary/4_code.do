// Load the auto dataset
sysuse auto, clear

// Browse the data
browse

// list
list in 1/10

// Summarize mpg
summarize mpg

// Summarize mpg for lightweight cars
summarize mpg if weight<=3000

// Tabulate the car companies
tab make

// Summarize mpg for one make
summarize mpg if make=="BMW 320i"

// Summarize mpg for just Cadillacs
summarize mpg if substr(make,1,4)=="Cad."

