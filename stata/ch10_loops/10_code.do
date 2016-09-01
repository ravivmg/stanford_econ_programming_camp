// Load data
sysuse auto, clear

// Run three specifications
local spec1 = "weight"
local spec2 = "`spec1' length"
local spec3 = "`spec2' turn"

forvalues i = 1/3 {
	reg mpg `spec`i''
} 

// Even nicer
eststo clear
forvalues i = 1/3 {
	eststo: reg mpg `spec`i''
} 
esttab

// Run on different dependent variables
foreach dep_var in mpg weight turn {
	reg `dep_var' length
}

// Run on strings
foreach person in "Raviv" "Eran" {
	di "Hello `person'"
}

// This is helpful for running different specifications
foreach weight_class in "if weight<=2000" "if weight<=3000" {
	reg mpg weight `weight_class'
}
