Ac = require('./lib/index')
ac = new Ac('sagiv ofek')
console.log ac
###
key = ac.generateAddress alertWhenHasBalance: true
console.log "please pay to: " + key.address()
key.on 'hasBalance', (amount) ->
  console.log "thanks for paying me " + amount
  key.transferBalanceToMyAccount fee: 0, (err, d) ->
    console.log "DONE", d
###