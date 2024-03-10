module.exports = {
  chains: ['eos', 'kylin', 'wax', 'jungle', 'telosTest', 'waxTest','telos'],
  endpoints: {
    eos: ['https://eos.eosn.io','https://eos.api.animus.is',  'https://eos.dfuse.eosnation.io/'],
    kylin: ['https://kylin.eosn.io', 'https://kylin.eossweden.org'],
    jungle: ['https://jungle3.cryptolions.io', 'https://jungle3.greymass.com'],
    telosTest: ['https://testnet.telos.caleos.io'],
    telos: ['https://mainnet.telos.net'],
    waxTest: ['https://testnet.waxsweden.org']
  },
  accountName: {
    telosTest: "power.boid",
    telos: "power.boid",
  },
  explorer: {
    waxTest: "https://wax-test.bloks.io",
    telosTest: "https://explorer-test.telos.net",
    telos: "https://explorer.telos.net"
  },
  contractName: 'boid.contract'
}
