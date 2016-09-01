// Load in the master dataset
use carrier_route_msahre.dta, clear

// Merge with the other dataset
merge 1:m carrier route using ticket_metadata

