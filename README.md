# Project6_Peer_Evaluation_Tool_Group1

# RULES

We design a peer evaluation tool that support many functions. A user should be able to submit scores and comments for all of their teammates (and only their teammates). The application should support multiple peer evaluations over the semester (eg, for each project). Also, an administrative interface should provide the instructor/TA with an easy, intuitive way to populate the class, and generate teams. An administrative interface should give a useful view of the scores assigned within a team. Also, we add some extra features in our project, such as the authentication and multiple group structures. 

Link: http://web.cse.ohio-state.edu/~giles.25/3901/labs/project6.html

# EXTRA FEATURES

We add some extra features to our project. The first one is authentication/login. Peer evaluations should be connected to an authenticated user, preventing forging of evaluations. Each Admin and Student must have a valid password. The second one is support for multiple group structures. Because each student in this course belongs to tech group and project group. The third one is evaluation release date. The evaluation will release until the day which we set. 

# SOME CHALLENGES DURING PROJECT DEVELOPMENT

We have some roadblocks during project development. First, our database design may have been slightly aggressive to implement based on time constraints and general lack of experience in Rails MVC development. Second, generate Model according to our database design. Because there are many to many relationships, we need to use some commands which list in Chapter 14 in tutorial, such as "has_many: :through". Third, understanding the structure of files that are created by rails generate commands. Fourth, using version control outside of basic functionality. Last, design and implement the authentication process.

# WHAT WOULD YOU HAVE DONE BETTER

We can add more extra features. First, we can add admin dashboard to monitor submission of peer evaluations and simplify sending reminders or managing evaluations that are never submitted. Second, we can upgrade the UI of the application, and include relevant visualizations of the peer evaluation data, for both the admin and student user personas. Third, we can launch Application to a live server, maybe www.group1peereval.com. Last, we can audience evaluation of presentations.

# HOW TO RUN THE PROJECT

To get started with the app, clone the repo and then install the needed gems:

$  bundle install --without production

Next, migrate the database:

$  rails db:migrate

Then, you'll be ready to run the app in a local server:

$  rails server

If you want to test, you can type:

$  rails test

# DOCUMENTATION AND SLIDES

The slides and documentation for the final project can be found here:

https://drive.google.com/drive/folders/1QMX_0XOGIzPn7XKrYOOM6aB9aQBoeVDU?usp=sharing

# SUMMARY

Our project basically satisfy the core functionality, and add some extra features, and content is interesting and useful. Each team member participated in the design and production of the project.

# ROLES

Cade Brautigan -- CSS style, Projects controller, HTML page

Yu Fu -- Model generation and modification, HTML page, Teams controller, Database design, Test cases, Readme

JJ Kong -- Home pages controller, Student page controller, Sessions controller, Evaluates controller, Admin controller, Student controller, Application controller, Sessions controller, Sessions (student) controller, Student on teams controller, Signups and Logins, HTML page, CSS style, Database Design, Database migrations, Authentication

Nicholas Llewellyn -- Admin page controller, Projects controller, Student on teams controller, Teams controller, HTML page, Database Design
