import logo from './logo.svg';
import './App.css';
import { useEffect, useState } from 'react';

function App() {
  const [address,setaddress]=useState("no connected address");
  const [btnflag,setbtnflag]=useState(true);
  useEffect(()=>{
  isConnected();
  },[]);
 async function connect(){
  if(window.ethereum){
   const address= await window.ethereum.request({method:'eth_requestAccounts'});
   console.log(address[0]);
   setaddress(address[0]);
  }
 } 
 async function isConnected() {
  const accounts = await window.ethereum.request({method: 'eth_accounts'});       
  if (accounts.length) {
  setaddress(accounts[0]);
  setbtnflag(false);
  } else {
    setaddress("no connected address");
  }
}
  return (
    <div className="App">
      {btnflag?<button onClick={()=>{
        connect()
      }}>connect</button>:<></>}
      <h1>{address}</h1>
    </div>
  );
}

export default App;
