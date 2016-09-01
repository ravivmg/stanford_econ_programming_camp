// Load the auto dataset
sysuse auto, clear

// Generate a new variable
gen ln_mpg = log(mpg)

// Replace a variable
replace ln_mpg = log(mpg+1)

// Selectively replace (top code)
gen top_coded_mpg = mpg
replace top_coded_mpg = 100 if mpg>100

// Drop a variable
drop top_coded_mpg
