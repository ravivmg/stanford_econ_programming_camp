// load the data
sysuse auto, clear

// browse
browse

// split off the maker
split make
rename make1 company

// find the mean by company
collapse (mean) mpg, by(company)

// browse the data
list
