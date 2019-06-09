### Technologies Used:
Ruby on Rails

### About
This is the back end repo for my full stack application: fermata, a buying and
renting site for musicians. I used an open read controller so that unauthenticated
users could still browse through items but would not be able to create, update,
or destroy (see app/controllers/instrument_controller.rb lines 2, 13, 19). One
minor problem I had was with my update form; if a user is signed in and tries
to edit an item they did not create, the form is triggered, but when the user
submits an error message fires. I couldn't find a bulletproof way to attach
that warning to the button. To rectify this, I will make a custom route that
allows a user to view their created items. That way, I can avoid the problem
I'm having altogether because the buttons will onyl show when the user is
authorized to have them work. I finished this side of the project early on in
the process: I created my Heroku app, scaffolded my instrument resource, created
and tested curl scripts, then modified the instrument controller to the needs
of my custom routes. On my first deployment I was afraid I did something horribly
wrong because I was getting no data to display, but it turned out I simply
forgot to migrate my database to Heroku. Other than that, everything on the
backend went quickly and smoothly.

### Routes:
GET '/instruments' => 'instruments#index'
DELETE '/instruments/:id' => 'instruments#destroy'
(custom)  PATCH '/instruments/:id/edit' => 'instruments#patch'
          POST '/create-instrument' => 'instruments#create'
          GET '/instruments/:id' => 'instruments#show'
POST '/sign-up' => 'users#signup'
POST '/sign-in' => 'users#signin'
DELETE '/sign-out' => 'users#signout'
PATCH '/change-password' => 'users#changepw'

### Links and Pictures
ERD (Buyers is stretch goal resource): ![Screen Shot 2019-06-09 at 2 02 08 PM](https://user-images.githubusercontent.com/48140926/59162442-3be8a600-8abf-11e9-978c-5cb8ea3a5031.png)

Deployed app: https://awf825.github.io/capstone-client/
Front End Repo: https://github.com/awf825/capstone-client
Deployed Heroku DB: https://pure-sea-43931.herokuapp.com
