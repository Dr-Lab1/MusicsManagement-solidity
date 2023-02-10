const MusiciansManager = artifacts.require('./MusiciansManager')

contract('MusiciansManager', accounts => {

    it ("Devrait ajouter un nduleman", async function (){

        const Contract = await MusiciansManager.deployed()
        const result = await Contract.addMusician("0xf3daadfa2557ae538708b18d12e904183a3e7849", "Jonathan", {from: accounts[0]})

        console.log(result)

    })

    it ("Devrait renvoyer un nduleman", async function (){

        const Contract = await MusiciansManager.deployed()
        const result = await Contract.getMusician("0xf3daadfa2557ae538708b18d12e904183a3e7849", {from: accounts[0]})

        console.log(result)

    })

})