# About this project
This project is the set of codes written during the course 10 Days of Statistics on HackerRank. In order to access it [click here](https://www.hackerrank.com/domains/tutorials/10-days-of-statistics).

# How to run it
This project was built using Docker. To run it, please install both Docker and Docker Compose. Once you have done it, just run the set of tests written for the codes:
```
docker-compose build app && docker-compose run app rspec
```

# Naming
Each code/test follows the naming as dXtY_TITLE, being Y the task correspondent to the Xth day of the challenge and TITLE being its title. Thus, the tasks names are the following:

- d0t1_mean_median_and_mode
- d0t2_weighted_mean
- d1t1_quartiles
- d1t2_interquartile_range
- d1t3_standard_deviation
- d2t1_basic_probability
- d2t2_more_dice
- d2t3_compound_event_probability
- d3t1_conditional_probability
- d3t2_cards_of_the_same_suit
- d3t3_drawing_marbles
- ...
