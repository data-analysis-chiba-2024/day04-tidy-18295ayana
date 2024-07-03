# DAY 4 HOMEWORK
#
# Name: Yutaro Kawatachi


# 1. Write code to load the "gapminder" dataset (note that this repo comes
# with the gapminder.csv file in the data_raw folder):
install.packages("tidyverse")
library("tidyverse")
gapminder <- read_csv("data_raw/gapminder.csv")

# 2. What is the country with the highest GDP per capita (gdpPercap)?
#
arrange(gapminder, desc(gdpPercap))
# Answer:Kuwait

# 3. Write the code that you used to answer #2: arrange(gapminder, desc(gdpPercap))


# 4. Write code to filter the gapminder data to the most recent year in the
# dataset, then select only the country and population columns. DO NOT use the
# pipe for this.
arrange(gapminder, desc(year))
gapminder_homework <- gapminder %>% filter(year == 2007)
gapminder_homework1 <- select(gapminder_homework, country, pop)



# 5. Answer question 4 again, but this time USE the pipe (%>%).
gapminder_homework2 <- gapminder %>% filter(year == 2007) %>% select(country, pop)


# 6. Write code to calculate the mean life expectancy for each country in
# Asia only.
# HINT: use the combination of `group_by()` and `summarize()` to calculate
# a mean value by group
gapminder %>% filter(continent == "Asia") %>% group_by(country) %>% summarize(mean_life_expectancy = mean(lifeExp))

