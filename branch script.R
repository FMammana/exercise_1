# install.packages(c("tidyverse", "gapminder", "pacman")) # uncomment if already installed
install.packages("pacman")
pacman::p_load(tidyverse, gapminder)

# Load your Data into R ---------------------------------------------------

data(gapminder)
head(gapminder)
# Clean your Data ---------------------------------------------------------

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)

mean(gapminder$lifeExp)

gapminder_branch <- gapminder %>% 
  rename(lifeExp = aspettativa, gdpPercap = pilpercap) %>% 