const bluetooth = require('node-bluetooth');
var btSerial = new (require('bluetooth-serial-port')).BluetoothSerialPort();
// const SerialPort = require('serialport');
// const port = new SerialPort('COM3', {
// 	baudRate: 115200
// });
// const BTSP = require('bluetooth-serial-port');
const fs = require('fs');
const net = require('net');

// create bluetooth device instance
const device = new bluetooth.DeviceINQ();

var g_buffer = Buffer.alloc(16);
//console.log(g_buffer);

//var output;
//fs.open('./output.json','r+',(err,fd) => {
//	if (err) throw err;
//	output = fd;
//});

var lastest_translated = {"pitch" : 0, "yaw" : 0, "roll" : 0, "finger" : 0};

// device
// .on('finished', console.log.bind(console, 'Finished Scanning.'))
// .on('found', function found(address, name){

// 	console.log('Found: ' + address + ' with name ' + name);
	
// 	// find serial port channel
// 	device.findSerialPortChannel(address, function(channel){
// 		console.log('Found RFCOMM channel for serial port %s:', name, (channel == 1)?"available":"unavailable");
// 		if (channel < 0) return;

// 		// make bluetooth connect to remote device
// 		bluetooth.connect(address, channel, function(err, connection){
// 			if(err) return console.error(err);
		  
// 			//connection.delimiter = Buffer.from('0a', 'hex');
// 			connection.on('data', (buffer) => {
// 				console.log('received message with length %d.', buffer.length);
// 				//console.log(buffer);
				
				
// 				// g_buffer = Buffer.concat([g_buffer, buffer]);
// 				// //console.log("Combined buffer: ");
// 				// //console.log(g_buffer);
// 				// while (g_buffer.length > 16) {
// 				// 	var translated = {};
// 				// 	var value;
// 				// 	value = g_buffer.readInt32LE(0);
// 				// 	g_buffer = g_buffer.slice(4);
// 				// 	translated["pitch"] = value;
					
// 				// 	value = g_buffer.readInt32LE(0);
// 				// 	g_buffer = g_buffer.slice(4);
// 				// 	translated["roll"] = value;
					
// 				// 	value = g_buffer.readInt32LE(0);
// 				// 	g_buffer = g_buffer.slice(4);
// 				// 	translated["yaw"] = value;
					
// 				// 	value = g_buffer.readInt32LE(0);
// 				// 	g_buffer = g_buffer.slice(4);
// 				// 	translated["finger"] = value;
					
// 				// 	//var json = JSON.stringify(translated) + '\n';
// 				// 	//fs.write(output,json, (err)=>{
// 				// 	//	if (err) throw err;
// 				// 	//});
					
// 				// 	lastest_translated = translated;

// 				// 	// console.log("End reading one packet.\n");
// 				// 	// console.log("Rest buffer len: %d." ,g_buffer.length);
// 				// }
// 				// //console.log("On data finishing.\n");
			
// 			});
		  
// 			connection.on('error', (err) => {
// 				if (err) console.log(err);
// 			});
// 		});
// 	});
// });

//device.scan();



// =======================  Processing Server =======================================

const server = net.createServer(function(socket){
	console.log("A client connected.")
	socket.setEncoding("utf8");
	
	socket.on('data', function(data) {
		//console.log(lastest_translated);
		socket.write(lastest_translated["pitch"] + '*' + lastest_translated["roll"] + '*' + lastest_translated["yaw"] + '*' + lastest_translated["finger"] + '*');
	});
	
	socket.on('end', function(){
        console.log('The client has disconnected.');
        socket.destroy();
    });
	
	socket.on('error', function(err){
        console.log(err);
    });
	
});

server.listen(7214, '127.0.0.1');

// =======================  Processing Server End =======================================

// =======================  Bluetooth Serial Port  =======================================

btSerial.on('found', function (address, name) {
	console.log('Found: ' + address + ' with name ' + name);
	if (name == 'RNBT-AE65') {
		btSerial.findSerialPortChannel(address, function (channel) {
			console.log('Connecting to ' + address);
			var totalRx = 0;
			var timer;
			btSerial.connect(address, channel, function () {
				btSerial.on('data', dataRx);
			});

			btSerial.on('closed', function () {
				console.log('On close. TotolRx this time:' + totalRx);
				totalRx = 0;
				btSerial.removeListener('data', dataRx);
				btSerial.connect(address, channel, function () {
					btSerial.on('data', dataRx);
				});
			});

			function reconnect() {
				console.log("Reconnecting");
				btSerial.close();
			}
			
			function dataRx(buffer) {
				console.log('received message with length %d.', buffer.length);
				totalRx += buffer.length;
				//if (totalRx > 5000) {
				//	btSerial.close();
				//}

				clearTimeout(timer);
				timer = setTimeout(reconnect, 2000);
				
				g_buffer = Buffer.concat([g_buffer, buffer]);

				if (g_buffer.length < 34) return;

				// check alignment here

				if (g_buffer[16] != 200) {
					g_buffer = g_buffer.slice(1);
					while (1) {
						if (g_buffer[0] == 200 && g_buffer[17] == 200) {
							g_buffer = g_buffer.slice(1);
							break;
						}
						else {
							console.log('not found code %d %d', g_buffer[0], g_buffer[17]);
							g_buffer = g_buffer.slice(1);
						}
						if (g_buffer.length < 34) return;
					}
				}

				while (g_buffer.length > 16) {
					var translated = {};
					var pitch, roll, yaw, finger;
					pitch = g_buffer.readInt32LE(0);
					g_buffer = g_buffer.slice(4);
					translated["pitch"] = pitch;

					roll = g_buffer.readInt32LE(0);
					g_buffer = g_buffer.slice(4);
					translated["roll"] = roll;

					yaw = g_buffer.readInt32LE(0);
					g_buffer = g_buffer.slice(4);
					translated["yaw"] = yaw;

					finger = g_buffer.readInt32LE(0);
					g_buffer = g_buffer.slice(5);
					translated["finger"] = finger;

					if (pitch > 190 || pitch < -190 || 
						roll > 190 || roll < -190 ||
						yaw > 190 || yaw < -190 ) {
							continue;
						}

					//var json = JSON.stringify(translated) + '\n';
					//fs.write(output,json, (err)=>{
					//	if (err) throw err;
					//});

					lastest_translated = translated;
					//console.log(lastest_translated);
				}
			}
		}, function () {
			console.log('found nothing');
		});
	}
	
});

btSerial.inquire();



// =======================  Serial Port =======================================

// // Open errors will be emitted as an error event
// port.on('error', function (err) {
// 	console.log('Error: ', err.message)
// });

// // port.on('readable', function () {
// // 	console.log('Data:', port.read())
// // });

// port.on('data', function (data) {
// 	console.log('received message with length %d.', buffer.length);
// })
