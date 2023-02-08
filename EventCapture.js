import "web3"

let EventTest = web3.eth.contract(EventChallenge);
let EventTestContract = ClientReceipt.at("OxTukiDada...");

EventTestContract.transfer(function(err, data) {
   if (!err)
   console.log(data);
   else
   console.log(err)
});