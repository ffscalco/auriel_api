# Auriel API

This project is a [Rails](http://rubyonrails.org/) API application used in Udemy course.

## Dependencies

To run this project you need to have:

* Ruby 2.4.1 - You can use [RVM](http://rvm.io)
* [PostgreSQL](http://www.postgresql.org/)
  * OSX - [Postgress.app](http://postgresapp.com/)
  * Linux - `$ sudo apt-get install postgresql`
  * Windows - [PostgreSQL for Windows](http://www.postgresql.org/download/windows/)


## Setup the project

1. Install the dependencies above
2. `$ git clone git@bitbucket.org:ffscalco/auriel_api.git` - Clone the project
3. `$ cd auriel_api` - Go into the project folder
4. `$ bin/setup` - Run the setup script
5. `$ bin/rspec` - Run the specs to see if everything is working fine

If everything goes OK, you can now run the project!

You can see an example here: http://showterm.io/6a0054fb8b6b53a56ef2c#slow

#### Running specs and checking coverage

`$ rake spec` to run the specs.

`$ coverage=on rake spec` to generate the coverage report then open the file `coverage/index.html` on your browser.
