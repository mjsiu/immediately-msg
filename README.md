#Immediately Coding Challenge

Implement a simple Rails app that accepts JSON messages and serializes them into a sqlite
compatible database.

##Assumptions

- There will be a regular flow of POST submissions from a remote server
- The structure of 'message.json' will not change, but the values may change
- Only relevant and useful data about the message should be kept

- There is no authentication layer and there are no users; all clients request data anonymously and all clients receive the same data
- The client already knows the Ids of the messages it needs to retrieve from your app
- The only thing the client will do with the data is render a simple view of the message (like the attached screenshot)
