# frozen_string_literal: true

user1 = User.create(name: 'Teacher Bob', email: 'bob@internet_high_school.com')

standard1 = Standard.create(
  title: 'Show understanding of 1st concept in thermodynamic',
  description: '1st concept of thermodynamics, use lab',
  users: [user1]
)

resource1 = Resource.create(
  title: '1st Law in Thermodynamics',
  link: 'www.khanacademy_1st_law.com',
  standards: [standard1]
)

user4 = User.create(name: 'Teacher Tonya', email: 'tonya@internet_high_school.com', password: 'teach')

standard2 = Standard.create(
  title: "Various forms of electromagnetic radiation (x-rays, ultraviolet, alpha particles, beta particles, gamma particles, infrared, etc.),
   (SC09-GR.HS-S.1-GLE.2;RA.4;IQ.2)",
  description: 'Students should be able to identify and define the different kinds of electromagnetic radiation.',
  users: [user4]
)

Resource.create(
  title: 'Video summary of electromagnetic spectrum and different waves',
  link: 'https://www.youtube.com/watch?v=cfXzwh3KadE',
  standards: [standard2]
)

Resource.create(
  title: 'Video for Ultra-violet rays and radiation',
  link: 'https://www.youtube.com/watch?v=QW5zeVy8aE0',
  standards: [standard2]
)

Resource.create(
  title: 'Alpha, Beta, Gamma Decay Article to read',
  link: 'https://www.khanacademy.org/science/in-in-class-12th-physics-india/nuclei/in-in-nuclear-physics/a/radioactive-decay-types-article',
  standards: [standard2]
)
