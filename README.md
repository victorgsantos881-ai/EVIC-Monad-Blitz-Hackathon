# EVIC
EVIC USD (Wallet Core MVP)

# 🚀 Blockchain Smart Contract Project

Este projeto contém contratos inteligentes desenvolvidos em **Solidity**, inicialmente criados no Remix IDE e preparados para desenvolvimento e deploy com **Hardhat**.

---

##  📦 Tecnologias Utilizadas

- Solidity ^0.8.x
- Node.js
- npm
- Hardhat
- Ethers.js
- dotenv
- Git / GitHub

---

## 📁 Estrutura do Projeto
/apps
   /web (Next.js frontend)
   /api (NestJS backend)

/contracts
   /core
   /tokens
   /governance

/packages
   /ui (design system branco/preto/bege)
   /utils
   /config

/infrastructure
   docker/
   k8s/
   nginx/

/docs

# 🏗️ REPOSITÓRIO WEB3 COMPLETO (MONOREPO REAL)

## 📁 Estrutura final

``` 
web3-platform/
│
├── apps/
│   ├── web/              # Next.js Frontend
│   └── api/              # Node/Nest Backend (simplificado)
│
├── contracts/           # Smart Contracts (Hardhat)
│
├── packages/
│   └── ui/              # Design system (branco/preto/bege)
│
├── infrastructure/
│
├── .env.example
├── package.json
└── README.md
``` 
# 🌐 2. FRONTEND (Next.js)

## 📦 Instalação


```
cd apps/web
npx create-next-app@latest web
npm install wagmi viem ethers @rainbow-me/rainbowkit tailwindcss
```

## 📄 apps/web/app/page.tsx

```
export default function Home() {
  return (
    <main style={{ background: "#FFFFFF", color: "#0B0B0B" }}>
      <h1>Web3 Platform</h1>
      <p>Branco • Preto • Bege Architecture</p>
    </main>
  );
}
```


 ## 🌐 Wallet Connect (base)

```
"use client";

import { ConnectButton } from "@rainbow-me/rainbowkit";

export default function Navbar() {
  return (
    <nav style={{ padding: 20, background: "#0B0B0B", color: "#FFF" }}>
      <h2>Web3 App</h2>
      <ConnectButton />
    </nav>
  );
}
```

 ## ⚙️ 3. BACKEND (API simples Node.js)
 
# 📦 apps/api/package.json

```
{
  "name": "api",
  "type": "module",
  "scripts": {
    "dev": "node index.js"
  },
  "dependencies": {
    "express": "^4.18.2",
    "cors": "^2.8.5",
    "dotenv": "^16.4.5"
  }
}
```

 ## apps/api/index.js
 
```
import express from "express";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.json({ status: "API running Web3 Platform" });
});

app.listen(4000, () => {
  console.log("API running on http://localhost:4000");
});
```

## ⛓️ 4. SMART CONTRACTS (Hardhat)

# 📦 contracts/package.json

```
{
  "name": "contracts",
  "devDependencies": {
    "hardhat": "^2.22.0",
    "@nomicfoundation/hardhat-toolbox": "^5.0.0",
    "ethers": "^6.0.0"
  }
}
```

## contracts/hardhat.config.js

```

require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.20",
  networks: {
    localhost: {
      url: "http://127.0.0.1:8545"
    }
  }
};
```

## 📄 contracts/contracts/Token.sol

```

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Web3Token is ERC20 {
    constructor() ERC20("Web3 Token", "W3T") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
```

## 🚀 deploy script

```

async function main() {
  const Token = await ethers.getContractFactory("Web3Token");
  const token = await Token.deploy();

  await token.waitForDeployment();

  console.log("Token deployed:", await token.getAddress());
}

main().catch(console.error);
```

## 🎨 5. DESIGN SYSTEM (BRANCO / PRETO / BEGE)

# 📦 packages/ui/colors.js

```

export const colors = {
  white: "#FFFFFF",
  black: "#0B0B0B",
  beigeLight: "#E8DCC8",
  beige: "#D2C1A3",
  beigeDark: "#B89B73"
};
```

## 🧱 UI Card base

```

export function Card({ children }) {
  return (
    <div
      style={{
        background: "#FFFFFF",
        border: "1px solid #E8DCC8",
        padding: 20,
        borderRadius: 12
      }}
    >
      {children}
    </div>
  );
}
```

## 🔐 6. .ENV EXAMPLE


```
PRIVATE_KEY=your_private_key
RPC_URL=http://127.0.0.1:8545
NEXT_PUBLIC_API=http://localhost:4000
```

## 🚀 7. COMO CORRER O PROJETO

# 1️⃣ Instalar dependências


```
npm install
```

## 2️⃣ Start blockchain local


```
npx hardhat node
 ```

## 3️⃣ Deploy contrato

```
npx hardhat run scripts/deploy.js --network localhost
```

## 4️⃣ Backend

```
cd apps/api
npm run dev
```

## 5️⃣ Frontend

```
cd apps/web
npm run dev
```
