const Client = require("./client")

const client = new Client()

client.login()
  .catch(console.error)
