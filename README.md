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
 

