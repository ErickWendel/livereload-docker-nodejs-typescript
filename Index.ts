import Http from 'http'
import Io from 'socket.io'

const server = Http.createServer();
const io = Io(server);
const PORT = process.env.BACK_PORT || 3000



io.on('connection', client =>
    /*
    'happy.jpg', 
    'sad.jpg', 
    'fuck.jpg'
    */
    client.emit("change-pic", `./resources/happy.jpg`)
);
server.listen(PORT);
console.log('listening at', PORT)
