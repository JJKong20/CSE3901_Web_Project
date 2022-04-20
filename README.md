# README

The slides and documentation for the final project can be found here:

https://drive.google.com/drive/folders/1QMX_0XOGIzPn7XKrYOOM6aB9aQBoeVDU?usp=sharing

To get started with the app, clone the repo and then install the needed gems:

$  bundle install --without production


Next, migrate the database:

$  rails db:migrate


Finally, run the test suite to verify that everything is working correctly:

$  rails test

If the test suite passes, youll. be ready to run the app in a local server:

$  rails server
