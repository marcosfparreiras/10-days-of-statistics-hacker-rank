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
- d0t2_wighted_mean
- d1t1_quartiles
- d2t2_interquartile_range
- d2t3_standard_deviation
- ...
