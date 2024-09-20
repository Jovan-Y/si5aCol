// inisialisasi model http
const http = require('http');

// buat server
const server = http.createServer( (req, res) => {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write('Selamat pagi');
    res.end();
});

const port = 3001;
const host = 'localhost';

server.listen(port, host, ()=>{
    console.log(`Server berjalan di http://${host}:${port}`);
});