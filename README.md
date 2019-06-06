Technologies Used:
Ruby on Rails

Routes:
GET '/instruments' => 'instruments#index'
DELETE '/instruments/:id' => 'instruments#destroy'
(custom)  PATCH '/instruments/:id/edit' => 'instruments#patch'
          POST '/create-instrument' => 'instruments#create'
          GET '/instruments/:id' => 'instruments#show'
POST '/sign-up' => 'users#signup'
POST '/sign-in' => 'users#signin'
DELETE '/sign-out' => 'users#signout'
PATCH '/change-password' => 'users#changepw'

Deployed app: https://awf825.github.io/capstone-client/
Front End Repo: https://github.com/awf825/capstone-client
Deployed Heroku DB: https://pure-sea-43931.herokuapp.com
