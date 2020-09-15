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

