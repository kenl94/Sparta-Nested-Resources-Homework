# Sparta-Nested-Resource-Homework

## Description
Weekend homework to continue learning and understanding nested resources in rails.
In this task instead of making my own data I decided to use Faker to make it more challenging in my opinion.
I was making sure the links between the nested resources worked as intended and ensured that the Superheroes show the abilities that they have by given each of the superhero and abilities relationship with each other.

## Installation
To install the resource I have created you can either download it through a zip fine or if you're using a terminal you can git clone it down to your computer.
Please make sure you're using postgresql as this is the database it is linked to.

If you're going to clone the code down to your system, please enter this after 'git clone'
* git@github.com:kenl94/Sparta-Nested-Resources-Homework.git

## Challenges
The biggest challenge of this task was making sure the links worked as intended.
To get through this I was using rails routes in the terminal, this ensured I was able to understand the routes between each resource.
Initially I had a lot of trouble with the edit page and delete button this is because it wasn't redirecting as intended as it would select a non-existent superhero.
I was eventually able to fix this by declaring a variable inside the controller to find the correct ID of the superhero.
