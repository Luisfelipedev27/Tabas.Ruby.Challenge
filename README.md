ruby 3.0.0
Rails 7.0.2.4
Mysql 5.7.37 (if you have difficulty executing, type $ sudo service mysql start)
Ubuntu 18.04

#Ruby on Rails
The models are properly tested (Unit Tests)
There are still issues regarding the controllers

The models, views, controllers,routes, assets and migrations had several tweaks after using rails g scaffold , rails db:create and rails db:migrate.
A new "welcome" controller has been created for homepage production!

I used helpers to link between pages.
I used validates to limit the user in the application.
I did the tests using methods like:
Any => To check if any errors are associated with a specific attribute
invalid? /valid? => To proceed with global validation
errors => To proceed with individual validation
assert => Expecting the argument to be true

#HTML/CSS 

I created the entire html structure and then used css for styling.
3 to 5 photos were requested for each property displayed + the name. I chose to put 3 photos per property displayed

On the homepage (http://localhost:3000/home) you can click on the search button, it will take you to another page
If you hover over the menu, you'll see a really cool stylization.

By clicking on the search button, you are directed to the page where the properties will be displayed (http://localhost:3000/properties).
You can hover your cursor over the image and it will increase its size. 
To return to the homepage, click on home in the navigation menu

#MySQL 

All properties are stored in the database, along with their ID, NAME, IMAGE 1, IMAGE 2 and IMAGE 3
You can check using rails c in the terminal.
After that, run Property.all. 
If it is necessary to add more properties, I do it through mysql (Using rails' own syntax, including)
example: y = Property.new   
        Property.new 
        y.name = "Lorem ipsum"
        y.image1 = "lorem_ipsum.jpg"     Attention, the image files registered in the database must have 
        y.image2 = "lorem_ipsum.jpg"        the same name as the images moved to the assets/images folder.
        y.image3 = "lorem_ipsum.jpg"
        
        
