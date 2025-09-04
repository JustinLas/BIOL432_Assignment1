#BIOL 432 Assignment 1 
#September 2nd, 2025
#Justin Lasrado 20283881

# Make a vector of 5 species names 
Species_pool <- c("orcinus orca","gorilla gorilla","pongo pygmaeus", "choeropsis liberiensis", "rangifer tarandus")

# Randomly select one of the 5 names 100 times
set.seed(112)
Organism <- sample(Species_pool, size = 100, replace = TRUE)
# Check to make sure species_vector works
print(Organism)

# Create random width measurements using rlnorm so the distribution is log normal and the values are positive
Limb_width <- rlnorm(100, meanlog = 2, sdlog = 0.3)

# Create random legnth measurements with the same idea as width, but make them larger values since length is typically bigger than width values
Limb_length <- rlnorm(100, meanlog = 4, sdlog = 0.25)

# Made a vector of 3 observers 
Observer_pool <- c("Laura B", "Callum O", "Shane G")
# Picks one of the 3 observer names randomly 100 times 
Observer <- sample(Observer_pool, size = 100, replace = TRUE)

measurements <- data.frame( 
  Organism = Organism,
  Limb_width = Limb_width, 
  Limb_legnth = Limb_length,
  Observer = Observer 
  )

print(measurements)

# Taking the measurements and making them a .csv file 
write.csv(measurements, "measurements.csv", row.names = FALSE)









