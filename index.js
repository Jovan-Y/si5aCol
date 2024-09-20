// inisialisasi model http
const http = require('http');

// buat server
const server = http.createServer( (req, res) => {
    //res.writeHead(200, {'Content-Type': 'text/html'});
    //res.write('Selamat pagi');
    res.writeHead(200, {'Content-Type': 'application/json'});
    if(req.url === '/dosen'){
        message = 'list data dosen';
        data = ['ahmad', ',mafiz', 'widi'];
    } else if(req.url === '/mahasiswa'){
        message = 'list data mahasiswa';
        data = ['jovan', 'irpan', 'aldwin'];
    } else if(req.url === '/fakultas'){
        message = 'list data fakultas';
        data = ['komputer', 'biologi', 'afisika'];
    } else if(req.url === '/prodi'){
        message = 'list data prodi';
        data = ['SI', 'SA', 'PDF'];
    } else{
        message = 'tidak ditemukan';
        data =[];
    }
    res.write(JSON.stringify({
        'message' : message,
        'data'  : data,
        'status' : 'success'
    }));
    res.end();
});

const port = 3001;
const host = 'localhost';

server.listen(port, host, ()=>{
    console.log(`Server berjalan di http://${host}:${port}`);
});