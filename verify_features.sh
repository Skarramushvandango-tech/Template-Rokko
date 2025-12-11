#!/bin/bash
# ROKKO! Records Website - Feature Verification Script
# This script verifies that all documented features are actually implemented

echo "======================================"
echo "ROKKO! Records - Feature Verification"
echo "======================================"
echo ""

# Color codes for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

PASS=0
FAIL=0

# Helper function to check and report
check_feature() {
    local description="$1"
    local command="$2"
    local expected="$3"
    
    echo -n "Checking: $description ... "
    
    result=$(eval "$command")
    
    if [ "$result" = "$expected" ]; then
        echo -e "${GREEN}✓ PASS${NC}"
        ((PASS++))
    else
        echo -e "${RED}✗ FAIL${NC} (Expected: $expected, Got: $result)"
        ((FAIL++))
    fi
}

echo "1. Verifying Artist Pages Exist"
echo "--------------------------------"
for artist in vandango bellieu fleur schablonski anger-uschis; do
    if [ -f "artist-$artist.html" ]; then
        echo -e "${GREEN}✓${NC} artist-$artist.html exists"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} artist-$artist.html NOT FOUND"
        ((FAIL++))
    fi
done
echo ""

echo "2. Verifying Background Colors (#DEC292)"
echo "-----------------------------------------"
for artist in vandango bellieu fleur schablonski anger-uschis; do
    count=$(grep -c 'background-color: #DEC292' "artist-$artist.html" 2>/dev/null || echo "0")
    if [ "$count" -gt 0 ]; then
        echo -e "${GREEN}✓${NC} artist-$artist.html has correct background color"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} artist-$artist.html missing background color"
        ((FAIL++))
    fi
done
echo ""

echo "3. Verifying Streaming Buttons (All 5 Platforms)"
echo "-------------------------------------------------"
for artist in vandango bellieu fleur schablonski anger-uschis; do
    count=$(grep -c -E "Spotify|Apple Music|SoundCloud|Beatport|YouTube Music" "artist-$artist.html" 2>/dev/null || echo "0")
    if [ "$count" -eq 5 ]; then
        echo -e "${GREEN}✓${NC} artist-$artist.html has all 5 streaming platforms"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} artist-$artist.html has $count/5 streaming platforms"
        ((FAIL++))
    fi
done
echo ""

echo "4. Verifying Videos Section"
echo "---------------------------"
for artist in vandango bellieu fleur schablonski anger-uschis; do
    count=$(grep -c "VIDEOS SECTION" "artist-$artist.html" 2>/dev/null || echo "0")
    if [ "$count" -gt 0 ]; then
        echo -e "${GREEN}✓${NC} artist-$artist.html has videos section"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} artist-$artist.html missing videos section"
        ((FAIL++))
    fi
done
echo ""

echo "5. Verifying No Button Outlines"
echo "--------------------------------"
outline_count=$(grep -h "outline:" artist-*.html 2>/dev/null | wc -l)
if [ "$outline_count" -eq 0 ]; then
    echo -e "${GREEN}✓${NC} No button outlines found (correct)"
    ((PASS++))
else
    echo -e "${RED}✗${NC} Found $outline_count outline declarations"
    ((FAIL++))
fi
echo ""

echo "6. Verifying ROKKO! Clips Section (index.html)"
echo "-----------------------------------------------"
clips_nav=$(grep -c "ROKKO! Clips" index.html 2>/dev/null || echo "0")
clips_section=$(grep -c "youtube-shorts-grid" index.html 2>/dev/null || echo "0")

if [ "$clips_nav" -gt 0 ]; then
    echo -e "${GREEN}✓${NC} ROKKO! Clips navigation link present"
    ((PASS++))
else
    echo -e "${RED}✗${NC} ROKKO! Clips navigation link missing"
    ((FAIL++))
fi

if [ "$clips_section" -gt 0 ]; then
    echo -e "${GREEN}✓${NC} ROKKO! Clips section present"
    ((PASS++))
else
    echo -e "${RED}✗${NC} ROKKO! Clips section missing"
    ((FAIL++))
fi
echo ""

echo "7. Verifying Header Spacing Reduction"
echo "--------------------------------------"
for artist in vandango bellieu fleur schablonski anger-uschis; do
    # Check for compact padding (10px-15px range is acceptable)
    count=$(grep -E 'padding: (10|11|12|13|14|15)px' "artist-$artist.html" 2>/dev/null | wc -l)
    if [ "$count" -gt 0 ]; then
        echo -e "${GREEN}✓${NC} artist-$artist.html has compact header spacing"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} artist-$artist.html does not have compact header spacing"
        ((FAIL++))
    fi
done
echo ""

echo "======================================"
echo "FINAL RESULTS"
echo "======================================"
echo -e "${GREEN}PASSED: $PASS${NC}"
echo -e "${RED}FAILED: $FAIL${NC}"
echo ""

if [ "$FAIL" -eq 0 ]; then
    echo -e "${GREEN}✓ ALL TESTS PASSED - Website features verified!${NC}"
    exit 0
else
    echo -e "${RED}✗ SOME TESTS FAILED - Please review above output${NC}"
    exit 1
fi
