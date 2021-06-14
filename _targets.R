library(targets)
tar_option_set(packages = c("spatstat", "dbmss"))
list(
  # Tirage des points
  tar_target(X,
             runifpoint(NbPoints)
  ),
  # Paramétrage
  tar_target(NbPoints,
             NbPoints <- 1000
  ),
  # Distance moyenne
  tar_target(d,
             sum(pairdist(X))/NbPoints/(NbPoints-1)
  ),
  # Carte
  tar_target(map, 
             autoplot(as.wmppp(X))
  )
)
