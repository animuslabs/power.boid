module.exports = {
  chains: ["telosTest", "waxTest", "jungle3"],
  endpoints: {
    waxTest: ["https://waxtest.eosn.io"],
    jungle3: ["https://jungle.eosn.io/"],
    telos: ["https://telos.caleos.io"],
    telosTest: ["https://testnet.telos.caleos.io"]
  },
  accountName: {
    telosTest: "power.boid",
    waxTest: "power.boid",
    jungle3: "power.boid",
    telos: "power.boid"
  },
  contractName: "power.boid",
  cppName: "power.boid"
}
