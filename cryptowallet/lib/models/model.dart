import 'package:flutter/material.dart';

final List<Map<String, dynamic>> balanceCard = [
  {
    "iconsrc": "assets/icons/bitcoinlogo.png",
    "bgicon": "assets/icons/bitcoin_bg.png",
    "name": "Bitcoin",
    "percent": -0.79,
    "Price": 106641.20,
    "abbrv": "BTC",
  },
  {
    "iconsrc": "assets/icons/ethereumlogo.png",
    "bgicon": "assets/icons/ethereum_bg.png",
    "name": "Ethereum",
    "percent": 1.32,
    "Price": 2421.43,
    "abbrv": "ETH",
  },
  {
    "iconsrc": "assets/icons/bnblogo.png",
    "bgicon": "assets/icons/bnb_bg.png",
    "name": "Binance",
    "percent": 4.82,
    "Price": 763.12,
    "abbrv": "BNB",
  },
];

final List<Map<String, dynamic>> marketTrends = [
  {
    "icon": "assets/icons/usdt-logo.png",
    "name": "Tether",
    "shorty": "USDT",
    "price": 26242.1,
    "percentage": 2.5,
  },
  {
    "icon": "assets/icons/mxc-logo.png",
    "name": "Moonchain",
    "shorty": "MXC",
    "price": 286.1,
    "percentage": 1.2,
  },
  {
    "icon": "assets/icons/near-logo.png",
    "name": "Near Protocol",
    "shorty": "NEAR",
    "price": 592.1,
    "percentage": 3.1,
  },
  {
    "icon": "assets/icons/ton-logo.png",
    "name": "Ton Coin",
    "shorty": "TON",
    "price": 2216.22,
    "percentage": -3.5,
  },
  {
    "icon": "assets/icons/sui-logo.png",
    "name": "Sui",
    "shorty": "SUI",
    "price": 3.47,
    "percentage": 5.2,
  },
  {
    "icon": "assets/icons/aptos-logo.png",
    "name": "Aptos",
    "shorty": "APT",
    "price": 8.93,
    "percentage": -2.1,
  },
  {
    "icon": "assets/icons/filecoin-logo.png",
    "name": "Filecoin",
    "shorty": "FIL",
    "price": 4.68,
    "percentage": 7.8,
  },
  {
    "icon": "assets/icons/mantra-logo.png",
    "name": "Mantra",
    "shorty": "OM",
    "price": 1.24,
    "percentage": -4.3,
  },
  {
    "icon": "assets/icons/optimism-logo.png",
    "name": "Optimism",
    "shorty": "OP",
    "price": 2.15,
    "percentage": 3.6,
  },
  {
    "icon": "assets/icons/polygon-logo.png",
    "name": "Polygon",
    "shorty": "POL",
    "price": 0.52,
    "percentage": -1.9,
  },
  {
    "icon": "assets/icons/celo-logo.png",
    "name": "Celo",
    "shorty": "CELO",
    "price": 0.89,
    "percentage": 6.4,
  },
];

String? selectedCurrency = "USD";
List<String> currency = ["USD", "AED", "NGN", "YEN"];


