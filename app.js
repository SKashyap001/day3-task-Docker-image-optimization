const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Welcome to Node App Day 3!\n');
});

server.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});
