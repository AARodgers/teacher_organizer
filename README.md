
# Teacher Organizer

<!-- Watch this video to see how it works:  -->

![User's Homepage](images/users_homepage.png =200x200)


# Description

Users can sign-up with their name, email and password. At their homepage, they can add a standard with a title (the official name and number of the standard that the Department of Education has set) and a description for the teacher to remind themselves of what this standard should teach.

Once a standard is created, the teacher can add resources under each standard by pressing the **Edit Standard** button and then **Add Resource**. Resources link to pages or videos that the teacher will use to help teach each concept to their students. Teachers can create as many standards as they want, edit them, add as many resources as they need, or delete standards if they are no longer needed. When the user is done, they can logout.

# Intent
This project is designed to help teachers keep track of the state mandated educational standards that they are required to teach throughout the school year. It allows them to organize the resources that they use to teach each standard.

# Installation

Clone this project locally:

```bash
git clone https://github.com/AARodgers/teacher_organizer.git
cd teacher_organizer
```

Install the dependencies:

```bash
bundle install
```

Create and seed the SQLite database:

```bash
rake db:setup
```

# Usage

Start the server:

```bash
shotgun
```

Go to http://localhost:9393/teachersapp to see the application in your browser.

# Contributing
I accept pull requests from people that want to improve upon this app or add features. Open an issue or a pull request and I'll be happy to discuss adding your code.

# License
License information can be found in the [LICENSE](LICENSE) file.
