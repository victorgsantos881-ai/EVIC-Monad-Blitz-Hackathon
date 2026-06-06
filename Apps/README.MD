# 🏗️ EVIC — REPOSITÓRIO WEB3 COMPLETO (BASE REAL)

## 📁 ESTRUTURA FINAL

---

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
---

# 🎨 1. FRONTEND (Next.js MODERNO)

## ⚙️ Stack
. Next.js 14 (App Router)
. TailwindCSS
. Wagmi + Viem (Web3)
. RainbowKit (wallet login)
. Framer Motion (UI suave)

## 📦 INSTALAÇÃO

---

cd apps/web
npx create-next-app@latest .
npm install tailwindcss wagmi viem @rainbow-me/rainbowkit framer-motion
---

## 🎨 DESIGN SYSTEM (BRANCO / PRETO / BEGE)

---

export const theme = {
  colors: {
    white: "#FFFFFF",
    black: "#0B0B0B",
    beige: "#E8DCC8",
    beigeDark: "#B89B73"
  }
};
---

## 🧠 UI PRINCIPAL (HOME PAGE)

---

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
---

#🧩 FEATURES FRONTEND
✔ Login com wallet
✔ UI minimalista
✔ Dashboard ready
✔ Base para dApp
✔ Responsivo mobile-first
