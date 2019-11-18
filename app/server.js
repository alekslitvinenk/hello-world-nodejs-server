const http = require('http');
const port = 3000;

const requestHandler = (req, res) => {
  res.write("Hello World!");
  res.end();
}

http
  .createServer(requestHandler)
  .listen(port, () => {
      console.log(`Server running at http://localhost:${port}/`);
    }
  )