Git/GitHub Notes:

APP Notes:
(Order to creating an app: database, models, controllers, views)
1. 'bundle init' to create Gem file, add appropriate gems
- run bundle install to load all gems once added

2. make config folder and add an environment.rb file to it
    - add adapter code to environment file:

3. make a config.ru file 'touch config.ru'

4.make db folder in top directory

5. make Rakefile: 'touch Rakefile'
    - add code needed:
    ENV['SINATRA_ENV'] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'a console'
task :console do
    Pry.start
end

6.


==================================================
To fix, no database connection:
- add database.yml file to config folder
- erase this code from environment.db:
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
- add code below to database.yml:
  development:
  adapter: sqlite3
  database: db/development.sqlite3

  - do rake db:create to create the database

  - don't want to commit the database to a git repo so do:
    - create a .gitignore file in root directory 'touch .gitignore'
    - with *.sqlite3 in it


--------------------------------------------------------------------------------------
PROJECT REQUIREMENT:

Build an MVC Sinatra application.
Use ActiveRecord with Sinatra.
Use multiple models.
Use at least one has_many relationship on a User model and one belongs_to relationship on another model.
Must have user accounts - users must be able to sign up, sign in, and sign out.
Validate uniqueness of user login attribute (username or email).
Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user.
Ensure that users can edit and delete only their own resources - not resources created by other users.
Validate user input so bad data cannot be persisted to the database.
BONUS: Display validation failures to user with error messages. (This is an optional feature, challenge yourself and give it a shot!)

1. List tools will use to allow user to signup, signin, signout:

2. What attribute will you use for user login? How will you make sure it is unique between all users?

3. Briefly describe how you will not allow users to delete or edit other users things.

4. If you intend on showing validation failures, how?
-------------------------------------------------------------------------------------------------------------------------------------------

Notes on Project:
- User has_many Standards and a Standard belongs to a User
- A Resource has many Standards and a Standard has many Resources.

- User attributes: name and email
- Standards attributes: Title (name of standard), Resources (links to videos and assignments), Description (notes about standard for teacher)
- Resource attributes are: standard, title, link

User Stories:
- Description of app: this is an app for Chem teachers to use to keep track of the standards that have to teach during the school year and videos/resources they an use to help teach students
- User can register for site
- User/teacher can log into and out of their account.
- Goes to welcome page where they can see a list of all of their standards and resources. Will have a create standard button on the page and delete and update standard button under each standard.
- Welcome site has a create a new standard button -> takes them to Add a Standard Page which is a form where they can add a Standard title, it's resources. User will hit submit button and it will redirect them to the welcome page with the new standard.
- User can logout of site.


-------------------------------------------

=========================
Sqlite explorer TO SEE/VISUALIZ DATABASE:
cmd shift p
type: sqlite open database

=======================================
Seed Data Notes:
id: 1, name: Teacher Bob, email: bob@internet_high_school.com, password: chemistryisawesome
id: 2, name: Teacher Susan, email: chemteach@highschool.com, password: test   ?:(encrypted)
id: 3, name: Teacher Alice, email: alice@highschool.com, password: inwonderland
id: 4, name: Teacher Matt, email: cara@highschool.com , password: hellcat

user1 = User.create(name: "Teacher Bob", email: "bob@internet_high_school.com")

standard1 = Standard.create(
    title: "Show understanding of 1st concept in thermodynamic",
    description: "1st concept of thermodynamics, use lab",
    users: [user1]
)

resource1 = Resource.create(
    title: "1st Law in Thermodynamics",
    link: "www.khanacademy_1st_law.com",
    standards: [standard1]
)

=================================================================


user4 = User.create(name: "Teacher Tonya", email: "tonya@internet_high_school.com", password: "teach")

standard2 = Standard.create(
    title: "Various forms of electromagnetic radiation (x-rays, ultraviolet, alpha particles, beta particles, gamma particles, infrared, etc.) (SC09-GR.HS-S.1-GLE.2;RA.4;IQ.2)",
    description: "Students should be able to identify and define the different kinds of electromagnetic radiation.",
    users: [user4]
)

resource2 = Resource.create(
    title: "Video summary of electromagnetic spectrum and different waves",
    link: "https://www.youtube.com/watch?v=cfXzwh3KadE",
    standards: [standard2]
)

resource3 = Resource.create(
    title: "Video for Ultra-violet rays and radiation",
    link: "https://www.youtube.com/watch?v=QW5zeVy8aE0",
    standards: [standard2]
)

resource4 = Resource.create(
    title: "Alpha, Beta, Gamma Decay Article to read",
    link: "https://www.khanacademy.org/science/in-in-class-12th-physics-india/nuclei/in-in-nuclear-physics/a/radioactive-decay-types-article",
    standards: [standard2]
)
       -------------------------------------------------------------------------
standard7 = Standard.create(
  title: "The difference between entropy and enthalpy (SC09-GR.HS-S.1-GLE.6-EO.a,b; IQ.3)",
  description: "Students should be able to define entropy and enthalpy and give examples of each",
  users: [user4]
  )

  resource8 = Resource.create(
    title: "Video about enthalpy",
    link: "https://www.khanacademy.org/science/ap-chemistry/thermodynamics-ap/enthalpy-tutorial-ap/v/enthalpy",
    standards: [standard3]
)

resource9 = Resource.create(
    title: "Intro video to entropy",
    link: "https://www.khanacademy.org/science/ap-chemistry/thermodynamics-ap/entropy-tutorial-ap/v/introduction-to-entropy",
    standards: [standard3]
)

resource10 = Resource.create(
    title: "Article to read regarding difference between entropy and enthalpy",
    link: "https://sciencestruck.com/difference-between-entropy-enthalpy-in-thermodynamics",
    standards: [standard3]
-----------------------------
user9 = User.create(name: "Teacher Nano", email: "nano@internet_high_school.com", password: "professor")

standard8 = Standard.create(
    title: "Various forms of electromagnetic radiation (x-rays, ultraviolet, alpha particles, beta
    particles, gamma particles, infrared, etc.) (SC09-GR.HS-S.1-GLE.2;RA.4;IQ.2)",
    description: "Students should be able to identify different kinds of electromagnetic radiation and list one characteristic about each",
    users: [user7]
)

resource11 = Resource.create(
    title: "Article about x-rays",
    link: "https://www.livescience.com/32344-what-are-x-rays.html#:~:text=X%2Drays%20are%20a%20very,images%20of%20the%20human%20body.&text=The%20only%20difference%20between%20them,one%20of%20four%20nuclear%20reactions.",
    standards: [standard4]
)

resource12 = Resource.create(
    title: "Video for Ultra-violet rays and radiation",
    link: "https://www.youtube.com/watch?v=QW5zeVy8aE0",
    standards: [standard4]
)

resource13 = Resource.create(
    title: "Alpha, Beta, Gamma Decay Article to read",
    link: "https://www.khanacademy.org/science/in-in-class-12th-physics-india/nuclei/in-in-nuclear-physics/a/radioactive-decay-types-article",
    standards: [standard4]
)

-----------------------------------------------------------------


=================================================================
QUESTIONS:
1.  do i need to do this for the password?
class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
end

2. how do i get the links to work?
  <%= "Resources:" %><br>
    <% standard.resources.each do |resource| %>
    <ul><li><%= resource.title  %></li></ul>
    <ul><li><a href="<% resource.link %>">Resource Link</a></li></ul><br>
    <% end %>
  </li>


  3. it's not attaching standards to user? fixed? but why won't title and description change in sqlite? 
