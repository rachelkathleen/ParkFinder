TO DO:


Create DB for users
  -user name*
  -password*
  -email*
  -been to?
  -want to go to?

Create DB for parks
  -name
  -state
  -img
  -website

Create DB for notes
  -title
  -content
  -user_id
  -park_id

Create DB for UserParks
  -user_id
  -park_id

Stub out RESTful routes
  Parks
    HTTP VERB          ROUTE            ACTION             DESCRIPTION              
    GET             /parks              index       Shows all the parks in the db
    GET             /parks/:id          show        Show info about specific park
  Notes
    HTTP VERB          ROUTE             ACTION             DESCRIPTION              
    GET             /notes               index       Shows all the notes inn the db
    GET             /notes/new           new         Show a FORM for a new note
    POST            /notes               create      Creates a note in DB, and then typically redirects
    GET             /note/:id            show        Show info about specific note
    GET             /note/:id/edit       edit        Show a FORM to edit a specific note
    PUT/PATCH       /note/:id            update      Edits a note in DB, and then typically redirects
    DELETE          /note/:id            destroy     Deletes a note from DB, and then typically redirects
  Users
    Need login
          logout
          home/account
          edit account
          delete account



Create files for each view
    Layout
    Homepage
    Login
    Account Page(page for a user that shows their info, parks, and notes)
    Parks index(page that shows all parks)
    Park page(page that shows info about one park, with users and notes)
    Page to create a new note
    Page to edit a note
    Page to view a note (with buttons to edit or delete)
