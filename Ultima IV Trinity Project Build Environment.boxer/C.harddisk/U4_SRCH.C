/*
 * Ultima IV - Quest Of The Avatar
 * (c) Copyright 1987 Lord British
 * reverse-coded by Ergonomy Joe in 2012
 */

#include "u4.h"

#include <stdlib.h>

char D_27A6[] = "Nothing Here!\n";

/*"You find..." & karma+=5*/
C_8D4B()
{
	u4_puts(/*D_2798*/"You find...\n");
	karma_inc(&(Party._honor), 5);
	Party.f_1e8 = Party._moves & 0xf0;
}

/*get random amount of reagent (max 99)*/
FIND_Reag(bp04)
int bp04;
{
    if(((((Party._trammel >> 5)) & 7) | (((Party._felucca >> 5)) & 7)) || (Party._moves & 0xf0) == Party.f_1e8) {
        u4_puts(D_27A6);
        return;
    }
    C_8D4B();
    if(bp04 == 7)
        u4_puts(/*D_27C4*/"Mandrake Root!\n");
    else
        u4_puts(/*D_27D4*/"Nightshade!\n");
	Party._reagents[bp04] += U4_RND1(7) + 2;
	if(Party._reagents[bp04] > 99) {
		Party._reagents[bp04] = 99;
		u4_puts(/*D_27B5*/"Dropped some!\n");
		sound(1);
	}
}

C_MAND()
{
	FIND_Reag(7);
}

C_NIGH()
{
	FIND_Reag(6);
}

C_BELL()
{
    Test_Item(4);
}

C_HORN()
{
    Test_Item(8);
}

C_BELT()
{
    Test_Item(15);
}

C_WHEL()
{
    Test_Item(9);
}

C_SKUL()
{
	if(
		TST_MSK(Party.mItems, 0) ||
		((((Party._trammel >> 5)) & 7) | (((Party._felucca >> 5)) & 7)) ||
		TST_MSK(Party.mItems, 1)
	) {
		u4_puts(D_27A6);
		return;
	}
	SET_MSK(Party.mItems, 0);
	C_8D4B();
	u4_puts(/*D_2828*/"The Skull of Mondain the Wizard!\n");
	XP_inc(0, 400);
}

C_WAND()
{
    if(TST_MSK(Party.mItems, 13) || TST_MSK(Party.mItems, 14)) {
        u4_puts(D_27A6);
        return;
    }
    SET_MSK(Party.mItems, 13);
    C_8D4B();
    u4_puts(/*D_2828*/"The Wand of Minax the Enchantress!\n");
    XP_inc(0, 400);
}

C_RING()
{
    if(TST_MSK(Party.mItems2, 0) || TST_MSK(Party.mItems2, 1)) {
        u4_puts(D_27A6);
        return;
    }
    SET_MSK(Party.mItems2, 0);
    C_8D4B();
    u4_puts(/*D_27F7*/"The Ring of Exodus!\n");
    XP_inc(0, 400);
}

C_ORB1()
{
    C_ORBS(5);
}

C_ORB2()
{
    C_ORBS(7);
}

C_ORB3()
{
    C_ORBS(9);
}

C_ORBS(bp04)
int bp04;
{
    if(TST_MSK(Party.mItems2, bp04) || TST_MSK(Party.mItems2, (bp04 + 1))) {
        u4_puts(D_27A6);
        return;
    }
    SET_MSK(Party.mItems2, bp04);
    C_8D4B();
    u4_puts(/*D_27F7*/"An Orb of the Moon!\n");
    XP_inc(0, 400);
}

C_BLAC()
{
	if(
		TST_MSK(Party.mStones, 7) ||
		((((Party._trammel >> 5)) & 7) | (((Party._felucca >> 5)) & 7))
	) {
		u4_puts(D_27A6);
		return;
	}
	SET_MSK(Party.mStones, 7);
	C_8D4B();
	u4_puts(/*D_284A*/"The Black Stone!\n");
	XP_inc(0, 200);
}

C_WHIT()
{
    if(TST_MSK(Party.mStones, 6)) {
        u4_puts(D_27A6);
        return;
    }
    SET_MSK(Party.mStones, 6);
    C_8D4B();
    u4_puts(/*D_285C*/"The White Stone!\n");
    XP_inc(0, 200);}

C_BOOK()
{
    Test_Item(3);
}

C_CAND()
{
    Test_Item(2);
}

Test_Item(bp04)
int bp04;
{
    if(TST_MSK(Party.mItems, bp04)) {
        u4_puts(D_27A6);
        return;
    }
    SET_MSK(Party.mItems, bp04);
    C_8D4B();
    u4_puts(D_Items[bp04 - 1]);
    Gra_CR();
    XP_inc(0, 400);
}

/*use telescope*/
C_TELE()
{
	int bp_02;

	u4_puts(/*D_2897*/"You see a knob on the Telescope marked A-X\n");
	if((bp_02 = AskLetter(/*D_28C3*/"You Select:\x12\x12\b", 'A', 'X')) < 0)
		return;
	bp_02 -= 'A';
    
    /*added this to include new villages in the view. Could this be handled better at 'Towne_Castle_Village'?*/
    if(bp_02 > 15){
        bp_02 = bp_02 + 16;
    }
    /*added this to include new villages in the view. Could this be handled better at 'Towne_Castle_Village'?*/
    
	if(Load(Towne_Castle_Village[bp_02], sizeof(tMap32x32), &(D_8742._map)) == -1)
		exit(3);
	PER_World(0);
	if(Load(Towne_Castle_Village[Party._loc - 1], sizeof(tMap32x32), &(D_8742._map)) == -1)
		exit(3);
}

C_MYAR()
{
	if(
		(Party._armors[7] |
		Party._hones | Party._compa |
		Party._valor | Party._justi |
		Party._sacri | Party._honor |
		Party._spiri | Party._humil) || TST_MSK(Party.mItems2, 2)
	) {
		u4_puts(D_27A6);
		return;
	}
	Party._armors[7] = 8;
    SET_MSK(Party.mItems2, 2);
	C_8D4B();
	u4_puts(/*D_28D2*/"Mystic Armour!\n");
	XP_inc(0, 400);
}

C_MYWE()
{
	if(
		(Party._weapons[15] |
		Party._hones | Party._compa |
		Party._valor | Party._justi |
		Party._sacri | Party._honor |
		Party._spiri | Party._humil) || TST_MSK(Party.mItems2, 3)
	) {
		u4_puts(D_27A6);
		return;
	}
	Party._weapons[15] = 8;
    SET_MSK(Party.mItems2, 3);
	C_8D4B();
	u4_puts(/*D_28E2*/"Mystic Weapons!\n");
	XP_inc(0, 400);
}

C_MBOW()
{
    if((Party._weapons[0] |
       Party._hones | Party._compa |
       Party._valor | Party._justi |
       Party._sacri | Party._honor |
       Party._spiri | Party._humil) || TST_MSK(Party.mItems2, 4)
       ) {
        u4_puts(D_27A6);
        return;
    }
    Party._weapons[0] = 8;
    SET_MSK(Party.mItems2, 4);
    C_8D4B();
    u4_puts(/*D_28E2*/"Mystic Bows!\n");
    XP_inc(0, 400);
}

unsigned char D_2904[][2] = {
	{0x05,0x01},
	{0x06,0x02},
	{0x07,0x04},
	{0x08,0x08},
	{0x09,0x10},
	{0x0A,0x20},
	{0x01,0x40},
	{0x0D,0x80}
};

C_90C5()
{
	register int si;

	for(si = 7; si >= 0; si --)
		if(D_2904[si][0] == Party._loc)
			break;
	if(D_2904[si][1] & Party.mRunes) {
		u4_puts(D_27A6);
		return;
	}
	Party.mRunes |= D_2904[si][1];
	C_8D4B();
	u4_puts(/*D_28F3*/"The rune of ");
	u4_puts(D_Virtues[si]);
	u4_puts(/*D_2900*/"!\n");
	XP_inc(0, 100);
}

typedef s_handler();
typedef s_handler *pS_handler;

struct t_05_local {
	unsigned char _00, _01, _02;
	pS_handler _03;
} D_2920[] = {
	{0x00,0x52,0x69,C_MAND},/*Mandrake root*/
    /*{0x00,0xB6,0x36,C_MAND},/*Mandrake root*/

	{0x00,0x64,0xA5,C_MAND},/*Mandrake root*/
    {0x00,0x62,0x9D,C_MAND},/*New Mandrake root location*/
    
	{0x00,0x54,0x69,C_NIGH},/*Nightshade*/
    /*{0x00,0x2E,0x95,C_NIGH},/*Nightshade*/
    
	{0x00,0xCD,0x2C,C_NIGH},/*Nightshade*/
	{0x00,0xB0,0xD0,C_BELL},/*The Bell of Courage!*/
	{0x00,0x2D,0xAD,C_HORN},/*'A Silver Horn!'*/
    {0x00,0x56,0x67,C_BELT},/*'A Strange Belt!'*/
    {0x00,0x58,0x6C,C_RING},/*'A Strange Ring!'*/
    {0x00,0x58,0x6B,C_MBOW},/*Mystic Bows!*/
	{0x00,0x58,0x67,C_WHEL},/*The Wheel from the H.M.S. Cape!*/
    /*{0x00,0x60,0xD7,C_WHEL},The Wheel from the H.M.S. Cape!*/
    
    /*{0x00,0xC5,0xF5,C_SKUL},The Skull of Mondain the Wizard!*/

	{0x00,0x5A,0x67,C_SKUL},/*The Skull of Mondain the Wizard!*/
    {0x00,0x59,0x6B,C_WAND},/*The Wand of Minax the Enchantress!*/
	{0x00,0xE0,0x85,C_BLAC},/*The Black Stone!*/
	{0x00,0x40,0x50,C_WHIT},/*The White Stone!*/
	{0x02,0x06,0x06,C_BOOK},/*The Book of Truth!*/
	{0x10,0x16,0x01,C_CAND},/*The Candle of Love!*/
	{0x02,0x16,0x03,C_TELE},/*use Telescope*/
    {0x00,0x52,0x67,C_MYAR},/*Mystic Armour!*/
    {0x00,0x54,0x67,C_MYWE},/*Mystic Weapons!*/
	/*{0x03,0x16,0x04,C_MYAR},
	{0x04,0x08,0x0F,C_MYWE},*/
	{0x05,0x08,0x06,C_90C5},/*rune of ...*/
	{0x06,0x19,0x01,C_90C5},/*rune of ...*/
	{0x07,0x1E,0x1E,C_90C5},/*rune of ...*/
	{0x08,0x0D,0x06,C_90C5},/*rune of ...*/
	{0x09,0x1C,0x1E,C_90C5},/*rune of ...*/
	{0x0A,0x02,0x1D,C_90C5},/*rune of ...*/
	{0x01,0x11,0x08,C_90C5},/*rune of ...*/
	{0x0D,0x1D,0x1D,C_90C5},/*rune of ...*/
    {0x00,0x50,0x66,C_ORB1},/*An Orb of the Moon!*/
    {0x00,0x52,0x66,C_ORB2},/*An Orb of the Moon!*/
    {0x00,0x54,0x66,C_ORB3},/*An Orb of the Moon!*/
	{0x00,0x00,0x00,0}
};



/*C_913A*/CMD_Search()
{
	register struct t_05_local *si;

	u4_puts(/*D_2914*/"Search...\n");
	if(CurMode <= MOD_BUILDING && Party.f_1dc != 0) {
		w_DriftOnly();
		return;
	}
	for(si = D_2920; si->_03; si ++) {
		if(si->_00 == Party._loc && si->_01 == Party._x && si->_02 == Party._y)
			break;
	}
	if(si->_03 == 0) {
		u4_puts(D_27A6);
	} else {
		(*si->_03)();
	}
}
