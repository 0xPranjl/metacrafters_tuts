const Web3=require("web3");
const abi=require("./abi.json");
const web3=new Web3(new Web3.providers.WebsocketProvider("wss://matic.getblock.io/8de692de-78ef-40eb-8a72-44cb277ca1d8/testnet/"));
const contract=new web3.eth.Contract(abi,("0xF1CE41248B31F104DC894bb1a25de6deEF935A96"));
//console.log(contract);
//listening studentadd event
contract.events.studentadd()
.on('data', function(event){
   console.log(event);
})
.on('error', console.error);

//listening studentclass event
contract.events.studentclass()
.on('data', function(event){
   console.log(event);
})
.on('error', console.error);