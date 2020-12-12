
=======================================
Seed Data Notes:
id: 1, name: Teacher Bob, email: bob@internet_high_school.com, password: chemistryisawesome
id: 2, name: Teacher Susan, email: chemteach@highschool.com, password: test   ?:(encrypted)
id: 3, name: Teacher Alice, email: alice@highschool.com, password: inwonderland
id: 4, name: Teacher Matt, email: cara@highschool.com , password: hellcat
test: name: name, email: email, password: password

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
NEW STANDARD:

standard7 = Standard.create(
  title: "The difference between entropy and enthalpy (SC09-GR.HS-S.1-GLE.6-EO.a,b; IQ.3)",
  description: "Students should be able to define entropy and enthalpy and give examples of each",
  users: [user4]
  )

  resource8 = Resource.create(
    title: "Video about enthalpy:",
    link: "https://www.khanacademy.org/science/ap-chemistry/thermodynamics-ap/enthalpy-tutorial-ap/v/enthalpy",
    standards: [standard3]
)

resource9 = Resource.create(
    title: "Intro video to entropy:",
    link: "https://www.khanacademy.org/science/ap-chemistry/thermodynamics-ap/entropy-tutorial-ap/v/introduction-to-entropy",
    standards: [standard3]
)

resource10 = Resource.create(
    title: "Article to read regarding difference between entropy and enthalpy:",
    link: "https://sciencestruck.com/difference-between-entropy-enthalpy-in-thermodynamics",
    standards: [standard3]
-----------------------------
user9 = User.create(name: "Professor Nano", email: "nano@internet_high_school.com", password: "professor")

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
=====================================================================
To Do:
-Notes on Code Review:
    - in def login, it's more conventional to use session[:id] = user.id
    - authenticate.password is used to make sure that the encrypted password ( from bycrpt gem) matches the unencrypted password
    - consider having only one instance of standards in database that users share ( so would belong_to a user, BUT standards do change per CDE)
    - be able to edit resources ( now have 2 forms on page) would need JS?
    - anyone can edit another users standards by going to their URL (ex. /3/standard), this is because a standard doesn't belong to a user
    - suggestion: add a realtion btw standard belongs_to creator and pass an option of class name ( in Rails? or Active Record option), would create a user_id column
    - in tux when tried to attach a newly create user ( user1) with a new standard ( standard1) it saved the standard1 that was in the database, need Active Record validations to the only that user saves that standard
    - user Active Record validation for uniquness of emails
    - look to use .build to instantiate objects

============================================================================

===============================================================================
# TODO for each repo
- [ ]  get rid of notes.md ??? yes
- [x] need to change 'Teachers App' name on homepage yes
- [x ] do i need this at top of controllers # frozen_string_literal: true (no)
- [ x] how to comment correctly with "Missing top-level class documentation comment."
- [x ] which methods are "major methods" to comment
- [x ] how use flash? ()
- [ x] Rename repos to something short and clean: all lowercase, underscores, keep it concise
  - [ x] Teachers app -> teacher_organizer
  - [ x] CLI APP Wic Clinic Finder -> wic_clinic_finder
- [ x] Write description for repo in About section
- [ ] Write README
- [x ] Add LICENSE file
- [ x] Make sure license appears in About section properly
- [ x] Clean repo of unused/useless/incorrect files
- [ ] Lint all files with [RuboCop](https://rubocop.org/)
  - [ ] Fix all discovered issues with `rubocop --fix` and manual intervention
  - [ ] Commit all fixes
- [ ] Run application from scratch, using the instructions from your README verbatim
  - [ ] Correct any issues with your README Getting Started section
- [x ] Document all major methods with comments
- [ x] Get rid of any TODO comments left lying around

# README for each repo
- [ ] Application name
- [ ] Description
  - [ ] Link to YouTube walkthrough
- [ ] Intent (who is this for? how will it help them?)
- [ ] Getting Started (installation)
- [ ] Usage
- [ ] Contributing
- [ ] License
# teachers_app
 - [ x] Figure out how to not pre-populate homepage with previous user
- [ x] how to not show password when putting it in
- [ x] why placeholder in signup email not working?
- [x ] Audit every controller method
- [x ] how to hide password when putting it in in login
  - [ x] Add a comment to every controller method
  - [ ] Install [Sinatra Flash](https://github.com/SFEley/sinatra-flash)
  - [ ] Add flash messages to the head of every template NEED TO DO THIS? GET RID OF FLASH AND USE SESSIONS?
  - [ x] Replace all `if logged_in?` checks with guard-style `unless logged_in? redirect; flash; return` checks
  - [ x] get rid of flash stuff in user_controller
- [ X] Document every model (one-line comments are fine)
- [ x] Fix up styling - modernize style, colors, fonts
- [ ] Re-record video with concise script

# WIC Clinic Finder
- [x ] Document your model class
- [ ] Review your use of `system("clear")` and remove redundant calls
- [x] Get rid of all commented lines of code
- [ x] Instead of printing every clinic's info, first print the list of clinics, ask the user to select one, and print that clinic's info
