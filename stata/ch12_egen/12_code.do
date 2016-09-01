// load data
sysuse auto, clear

// find the maker
split make
rename make1 company

// find the average mpg by maker and add it as a variable
egen avg_mpg_company = mean(mpg), by(company)

// Show the result for one company
list if company=="Honda"


