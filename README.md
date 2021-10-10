# Ethereum Todo List App

I've been looking at getting into blockchain technology for a bit and this is my first app running on the Ethereum blockchain (locally using ganache). This is in no way meant to be an app you would use on a day to day basis but hopefully can bring some insight into how blockchain technology works and how apps can run on top of them.

All credit goes to [Dapp University](https://www.dappuniversity.com/). This app was made following a tutorial from [Dapp University](https://www.dappuniversity.com/) and in no way is all of the code mine. I have simply altered it slightly to work with recent Meta Mask updates. 

## Installation

Use the Node Package Manager [npm](https://www.npmjs.com/) to install dependencies and run the app interface locally.

Install [Ganache](https://www.trufflesuite.com/ganache) to run the local blockchain.

Install npm dependencies then install [Truffle](https://www.trufflesuite.com/truffle) to run the app on the local blockchain. Also install the web3.js library to interface with [Meta Mask](https://metamask.io/).
```bash
npm install
npm install truffle@5.0.2 -g
```
Install [Meta Mask](https://metamask.io/).

## Usage

Ensure [Ganache](https://www.trufflesuite.com/ganache) is running.

Open a terminal window in the root of the project and run the following.

```bash
truffle migrate --reset
```
If you encounter any root privilege errors on Linux based distributions, run as root with sudo.

Now start the web server.
```bash
npm run dev
```
This will open the app in your browser.

Open the [Meta Mask](https://metamask.io/) extension and click your account icon in the top right of the extension. Then click settings, we need to add our own blockchain to Meta Mask so we can interface directly with the app. Scroll down and click Networks. You should see a blockchain titled Localhost 8545, click on this (If you do not see this network, simply create a new network with the following settings). Edit the settings of this blockchain to hold the following information:

```bash
Network name: Localhost 7545
New RPC URL: http://localhost:7545
Chain ID: 1337
Currency Symbol: ETH
```

Press Save.

!NOTE! This uses Ganache's default settings, if this does not work you can find your RPC URL in Ganache under RPC Server.

Congratulations! You're now running a Todo app off your local Ethereum blockchain.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

This app is not meant to be used by anyone as a genuine app, but simply a tool to look at as an example of an Ethereum smart contract app.

## License
[MIT](https://choosealicense.com/licenses/mit/)
