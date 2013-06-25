Coffee-Express-Bootstrap
========================
###Description

This is just a Coffee-Script based Express project scaffolding. It includes Twitter Bootstrap and some basic Jade templates for layout and an index page. Also included is a Gruntfile.coffeescript that will automagically transpile the Coffeescript source files in the `src\` directory to Javascript files in a created folder `\dev\`.   

There is also a watch task in the Grunt file that will run the default task whenever a file changes. 

###Quickstart

Assuming you already have both Coffeescript and Node.js installed, the path of least resistance from 0 to server is to simply:  

            * Clone this repo
            * Do an `npm install` in the cloned root (where the Gruntfile is)
            * Compile the Gruntfile.coffee: 'coffee -c Gruntfile.coffee'
            * Navigate to the newly created '/dev' directory and type 'node app.js'

Then the rest is simply building a website. Lather, rinse, repeat.

###Todo:

This is meant to be pretty Spartan. I just wanted to be able to just type 3-4 commands to get to the point where I'm actually coding. That being said there are a number of things I still want to add:

            * SASS or LESS Bootstrap (to be tranlsated in the default Grunt task) 
            * Pull out the "public" and, maybe, "view" folders so that they're seperate from the code
            * Possibly add a "client side" section for coffeescript that needs to be compiled and placed into static folders
            * Linting
            * Testing
