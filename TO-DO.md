# TO_DO

## CSS!!!!!!!!!!!!!!!!!!! make it pretty

## Upload Image from computer

## Add SEARCH for MOVIE function:
### Fix Search Bar -> search by movie.title, actor.name, movie.genre
### movie.genre Selection Boxes

## On movie#index movie#show Average Movie Rating

## Edit user watchlist
    - remove movie from user.watchlist
    - CUD movie review
## NAV bar????  _or_
## BUTTONS for:
    - movie#show - Create/Add Movie Info to Database
    - movie#show - back to user#homepage
    - 

## Set ADMIN User & Privilages



# NOTES

```signup
 <h1>SIGN UP </h1>
 <%= flash[:message] %>
    <%= form_for :auth do |f| %><br>
        <%= f.label :username %>
        <%= f.text_field :username %>
        <%= f.label :password %>
        <%= f.password_field :password %><br><br>
        <%= f.label :password_confirmation %>
        <%= f.password_field :password_confirmation %><br><br>
        <%= f.submit "SIGN-UP" %>
    <% end %>
    <br>
    <%= button_to "LOG-UP", login_path%>

```
