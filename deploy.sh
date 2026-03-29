#!/bin/bash

# ASA Blockchain - One-Click Deploy
# Kör detta script för att bygga och deploya allt

echo "🚀 ASA Blockchain - One-Click Deploy"
echo "===================================="

# Färger
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Steg 1: Installera frontend dependencies
echo -e "${YELLOW}📦 Steg 1: Installerar frontend dependencies...${NC}"
cd asa-blockchain/frontend
npm install

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Frontend dependencies installerade${NC}"
else
    echo -e "❌ Fel vid npm install"
    exit 1
fi

# Steg 2: Bygg frontend
echo -e "${YELLOW}🔨 Steg 2: Bygger frontend...${NC}"
npm run build

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Frontend byggd!${NC}"
    echo "   Output: asa-blockchain/frontend/dist/"
else
    echo -e "❌ Fel vid build"
    exit 1
fi

# Steg 3: Visa resultat
echo ""
echo "===================================="
echo -e "${GREEN}🎉 KLART!${NC}"
echo ""
echo "För att starta lokalt:"
echo "  cd asa-blockchain/frontend"
echo "  npm run dev"
echo ""
echo "För att deploya till Vercel:"
echo "  npm i -g vercel"
echo "  vercel"
echo ""
echo "Alla 14 sidor är klara:"
echo "  - AI Training Center"
echo "  - AI Governance Hub"
echo "  - NFT Ecosystem"
echo "  - Web3 Gaming"
echo "  - DeFi Modules"
echo "  - Cross-Chain Bridge"
echo "  - Social Layer"
echo "  - Identity & Privacy"
echo "  - Enterprise"
echo "  - Regulatory Compliance"
