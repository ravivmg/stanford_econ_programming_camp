// Load the data
sysuse auto, clear

// Clear the regression table output
eststo clear

// Run a few regressions
eststo: reg mpg weight
eststo: reg mpg weight length

// Output the regressions in a nice format
esttab

// Output the regression to latex
esttab using "8_reg_table.tex", replace

 
