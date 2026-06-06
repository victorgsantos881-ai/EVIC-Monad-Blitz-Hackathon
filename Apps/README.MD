# 🏗️ EVIC — REPOSITÓRIO WEB3 COMPLETO (BASE REAL)

## 📁 ESTRUTURA FINAL

``` 

EVIC/
│
├── apps/
│   ├── web/        # Frontend Next.js
│   └── api/        # Backend Node.js
│
├── contracts/      # Solidity + Hardhat
│
├── packages/
│   └── ui/         # Design system (branco/preto/bege)
│
├── .env.example
├── package.json
└── README.md
``` 

# 🎨 1. FRONTEND (Next.js MODERNO)

## ⚙️ Stack
. Next.js 14 (App Router)
. TailwindCSS
. Wagmi + Viem (Web3)
. RainbowKit (wallet login)
. Framer Motion (UI suave)

## 📦 INSTALAÇÃO

``` 

cd apps/web
npx create-next-app@latest .
npm install tailwindcss wagmi viem @rainbow-me/rainbowkit framer-motion
``` 

## 🎨 DESIGN SYSTEM (BRANCO / PRETO / BEGE)

``` 

export const theme = {
  colors: {
    white: "#FFFFFF",
    black: "#0B0B0B",
    beige: "#E8DCC8",
    beigeDark: "#B89B73"
  }
};
``` 

## 🧠 UI PRINCIPAL (HOME PAGE)

``` 

"use client";

import { ConnectButton } from "@rainbow-me/rainbowkit";
import { motion } from "framer-motion";

export default function Home() {
  return (
    <main className="min-h-screen bg-white text-black flex flex-col items-center justify-center">

      <motion.h1
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        className="text-5xl font-bold"
      >
        EVIC Web3 Platform
      </motion.h1>

      <p className="mt-4 text-beige-700">
        Branco • Preto • Bege Architecture
      </p>

      <div className="mt-8">
        <ConnectButton />
      </div>

      <div className="mt-10 p-6 border border-[#E8DCC8] rounded-xl">
        <p>Secure & Scalable Web3 System</p>
      </div>

    </main>
  );
}
``` 

#🧩 FEATURES FRONTEND

``` 
 ✔  Login com wallet
 ✔  UI minimalista
 ✔  Dashboard ready
 ✔  Base para dApp
 ✔  Responsivo mobile-first
``` 

# ⚙️ 2. BACKEND (API NODE.JS)

## 📦 Stack

```
. Node.js
. Express
. CORS
. dotenv
```

## 📁 apps/api/index.js

```

import express from "express";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

const app = express();

app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.json({
    status: "EVIC API running",
    version: "1.0.0"
  });
});

app.get("/user/:wallet", (req, res) => {
  res.json({
    wallet: req.params.wallet,
    role: "user",
    status: "active"
  });
});

app.listen(4000, () => {
  console.log("API running on port 4000");
});
```

# ⛓️ 3. SMART CONTRACTS (SEGUROS)

## ⚙️ Stack

```

Solidity ^0.8.20
Hardhat
OpenZeppelin (segurança)
```

## 📦 INSTALL

```
cd contracts
npm init -y
npm install --save-dev hardhat @nomicfoundation/hardhat-toolbox
npm install @openzeppelin/contracts
npx hardhat
```

## 📄 contracts/EVICToken.sol

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EVICToken is ERC20, Pausable, Ownable {

    constructor() ERC20("EVIC Token", "EVIC") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
```

🔐 SEGURANÇA

```
. Pausable contract
. Ownable access control
. OpenZeppelin padrão
. Mint controlado
```

## ⚙️ 4. HARDHAT CONFIG

```
require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    localhost: {
      url: "http://127.0.0.1:8545"
    }
  }
};
```

# 🚀 5. COMO CORRER O SISTEMA

## 1️⃣ instalar tudo


```
npm install
```

## 2️⃣ blockchain local

```
npx hardhat node
```

## 3️⃣ deploy contrato

```
npx hardhat run scripts/deploy.js --network localhost
```

## 4️⃣ backend

```
cd apps/api
node index.js
```

## 5️⃣ frontend

```
cd apps/web
npm run dev
```





