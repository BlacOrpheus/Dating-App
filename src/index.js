const express = require('express');
const app = express();
const path = require('path');

// Define a static route to serve static files (like index.html)
app.use(express.static(path.join(__dirname, '/')));

// Start the server
const port = 9000;
app.listen(port, () => {
  console.log(`Server iss running on http://localhost:${port}`);
});
