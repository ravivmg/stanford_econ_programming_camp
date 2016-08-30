// Load data from a pre-installed dataset
sysuse auto, clear

// Export the data in tab format
outsheet using "2_auto.txt", name replace

// Export the data in csv format
outsheet using "2_auto.csv", comma name replace

// Load data in tab delimiter
insheet using "2_auto.txt", tab name clear

// Load data in tab delimiter
insheet using "2_auto.csv", comma name clear
