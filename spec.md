Specifications for the Sinatra Assessment
Specs:

 Use Sinatra to build the app

 **X Use ActiveRecord for storing information in a database.**
 (I used ActiveRecord with a Sqlite adapter to persist data in this project)


 **X Include more than one model class (e.g. User, Post, Category)**
 (I have a User, Standard, and Resource class)


 **X Include at least one has_many relationship on your User model (e.g. User has_many Posts)**
 (User has_many Standards and Standards has_many Users)

 **X Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)**
(A Resource belongs_to a Standard)

 **X Include user accounts with unique login attribute (username or email)**
 (A user must log in with an email and password)


 **X Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying**
 (A user can add, edit, read or delete a Resource from a Standard)


 **X Ensure that users can't modify content created by other users**
 (There is logic in the controller that checks if the current_user id matches the session id)

 **X Include user input validations**
 (Logic in the controller makes sure that the user doesn't submit blank data into the database)


 **X Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code**
 (See README.md file to see above completed task)

Confirm

 X You have a large number of small Git commits


 X Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message
