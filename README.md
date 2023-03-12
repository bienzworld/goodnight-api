# Goodnight API
* Implement Goodnight API that let users track when they go to bed and when do they wake up.

## Requirements 
* ruby 3.0.0
* Rails 6.1.3
* SQLite 3

## Setup local environment
```
  gem install bundler
  bundle install
  rails db:create
  rails db:migrate
  rails db:seed
```

### Start Server
* `rails s`

### Generate `Authorization` Header to authenticate Http request
* `rails c`
```
  User.first.authentication_token
```

## Features
<table>
  <tr><th>No</th><th>Feature</th><th>Method</th><th>URI</th><th>Note</th></tr>
  <tr><td>1</td><td>POST clock in and clock out sleep record</td><td>POST</td><td>/api/v1/time_trackings</td><td>Params(optional) {id} if have parameter update clock out of the given id. if no parameter record new clock in</td></tr>
  <tr><td>2</td><td>GET All my records</td><td>GET</td><td>/api/v1/time_trackings/me/my_records</td><td></td></tr>
  <tr><td>3</td><td>GET My sleeping record</td><td>GET</td><td>/api/v1/time_trackings/me/my_clocked_in_records<td></td></tr>
  <tr><td>4</td><td>POST Follow other user</td><td>POST</td><td>/api/v1/friends/follow/{user_id}</td><td>Params(required) {user_id}</td></tr>
  <tr><td>5</td><td>POST UnFollow other user</td><td>POST</td><td>/api/v1/friends/unfollow/{user_id}</td><td>Params(required) {user_id}</td></tr>
  <tr><td>6</td><td>GET Friends sleeping record ordered by length of their sleep</td><td>GET</td><td>/api/v1/time_trackings/me/friend_records</td><td></td></tr>
</table>