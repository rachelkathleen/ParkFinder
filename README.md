TO DO:

Stub out RESTful routes
    HTTP VERB          ROUTE            ACTION             DESCRIPTION              

  Notes
    HTTP VERB          ROUTE             ACTION             DESCRIPTION              
    GET             /notes               index       Shows all the notes inn the db
    GET             /notes/new           new         Show a FORM for a new note
    POST            /notes               create      Creates a note in DB, and then typically redirects
    GET             /note/:id            show        Show info about specific note
    GET             /note/:id/edit       edit        Show a FORM to edit a specific note
    PUT/PATCH       /note/:id            update      Edits a note in DB, and then typically redirects
    DELETE          /note/:id            destroy     Deletes a note from DB, and then typically redirects

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
