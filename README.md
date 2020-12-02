Make sure to create a good README.md with a short description, install instructions, a contributor's guide, and a link to the license for your code.

# teacher_organizer

This project is designed to help teachers keep track of the state mandated educational standards that they are required to teach throughout the school year. It allows them to organize resources that they use to teach each standard.

# Installation


# Clone this project locally
git clone https://github.com/AARodgers/teachers_app.git

# Install the dependencies
bundle install

# Create and seed the sqlite database
rake db:setup

# Start the server
shotgun
```

# Usage
Start the server with `shotgun`. Go to http://localhost:9393/teachersapp to see the application in your browser.

See this link to see how a user might use this app: https://www.youtube.com/watch?v=bXWTeDUA78E&feature=youtu.be

From the homepage the user can sign up with an email and password. Next, they can log into the app with their email and password. This brings the user to their personal homepage where as a teacher, they can add a standard with a title (the official name and number of the standard that the Department of Education has set) and a description for the teacher to remind themselves of what this standard should teach.

Once a standard is created, the teacher can add resources under each standard by pressing the **Edit Standard** button and then **Add Resource**. Resources link to pages or videos that the teacher will use to help teach each concept to their students. Teachers can create as many standards as they want, edit them, add as many resources as they need, or delete standards if they are no longer needed. When the user is done, they can sign out from the homepage.


# Contributing
I accept pull requests from people that want to improve upon this app or add features. Open an issue or a pull request and I'll be happy to discuss adding your code.

# License
License information can be found in the [LICENSE](LICENSE) file.


===============================================================================
# TODO for each repo
- [] ??  get rid of notes.md ???
- [ x] Rename repos to something short and clean: all lowercase, underscores, keep it concise
  - [ x] Teachers app -> teacher_organizer
  - [ x] CLI APP Wic Clinic Finder -> wic_clinic_finder
- [ x] Write description for repo in About section
- [ ] Write README
- [x ] Add LICENSE file
- [ x] Make sure license appears in About section properly
- [ ] Clean repo of unused/useless/incorrect files
- [ ] Lint all files with [RuboCop](https://rubocop.org/)
  - [ ] Fix all discovered issues with `rubocop --fix` and manual intervention
  - [ ] Commit all fixes
- [ ] Run application from scratch, using the instructions from your README verbatim
  - [ ] Correct any issues with your README Getting Started section
- [ ] Document all major methods with comments
- [ ] Get rid of any TODO comments left lying around

# README for each repo
- [ ] Application name
- [ ] Description
  - [ ] Link to YouTube walkthrough
- [ ] Intent (who is this for? how will it help them?)
- [ ] Getting Started (installation)
- [ ] Usage
- [ ] Contributing
- [ ] License

# Teacher Organizer
- [ ] Audit every controller method
  - [ ] Add a comment to every controller method
  - [ ] Install [Sinatra Flash](https://github.com/SFEley/sinatra-flash)
  - [ ] Add flash messages to the head of every template
  - [ ] Replace all `if logged_in?` checks with guard-style `unless logged_in? redirect; flash; return` checks
- [ ] Document every model (one-line comments are fine)
- [ ] Fix up styling - modernize style, colors, fonts
- [ ] Re-record video with concise script

# WIC Clinic Finder
- [ ] Document your model class
- [ ] Review your use of `system("clear")` and remove redundant calls
- [ ] Get rid of all commented lines of code
- [ ] Instead of printing every clinic's info, first print the list of clinics, ask the user to select one, and print that clinic's info
