
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
