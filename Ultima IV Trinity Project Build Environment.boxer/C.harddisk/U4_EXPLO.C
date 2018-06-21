/*
 * Ultima IV - Quest Of The Avatar
 * (c) Copyright 1987 Lord British
 * reverse-coded by Ergonomy Joe in 2012
 */

#include "u4.h"

#include <stdlib.h>

int Horse_x = 0;
int Horse_y = 0;

char *Talk_Files[] ={
	/*Castles*/
	/*D_1682*/"LCB.TLK",
	/*D_168A*/"LYCAEUM.TLK",
	/*D_1696*/"EMPATH.TLK",
	/*D_16A1*/"SERPENT.TLK",
	/*Townes*/
	/*D_16AD*/"MOONGLOW.TLK",
	/*D_16BA*/"BRITAIN.TLK",
	/*D_16C6*/"JHELOM.TLK",
	/*D_16D1*/"YEW.TLK",
	/*D_16D9*/"MINOC.TLK",
	/*D_16E3*/"TRINSIC.TLK",
	/*D_16EF*/"SKARA.TLK",
	/*D_16F9*/"MAGINCIA.TLK",
	/*Villages*/
	/*D_1706*/"PAWS.TLK",
	/*D_170F*/"DEN.TLK",
	/*D_1717*/"VESPER.TLK",
	/*D_1722*/"COVE.TLK",
    /*Dungeons - added to give correct spacing when referencing new locatons*/
    /*0xF0 0x49*/"Deceit.Dng",
    /*D_07A8*/"Despise.Dng",
    /*D_07B4*/"Destard.Dng",
    /*D_07C0*/"Wrong.Dng",
    /*D_07CA*/"Covetous.Dng",
    /*D_07D7*/"Shame.Dng",
    /*D_07E1*/"Hythloth.Dng",
    /*D_07EE*/"Abyss.Dng",
    /*Shrines*/
    /*D_076D*/"Blue",
    /*D_0772*/"Yellow",
    /*D_0779*/"Red",
    /*D_077D*/"Green",
    /*D_0783*/"Orange",
    /*D_078A*/"Purple",
    /*D_0791*/"White",
    /*D_0797*/"Black",
    /*Camps*/
    /*D_16C6*/"RIVERCA.TLK",
    /*D_16D1*/"FORESTCA.TLK",
    /*D_16C6*/"MOUNTCA.TLK",
    /*D_16D1*/"SWAMPCA.TLK",
    /*D_16C6*/"PLAINSCA.TLK",
    /*D_16D1*/"VALLEYCA.TLK",
    /*D_16C6*/"PLAINSCA.TLK",
    /*D_16D1*/"VALLEYCA.TLK",
    /*Crypts*/
    /*D_07EE*/"MONDAIN.DNG",
    /*D_07EE*/"MINAX.DNG",
    /*D_07EE*/"EXODUS.DNG",
    /*Oracle*/
    /*D_07EE*/"Love",
    /*D_07EE*/"Courage",
    /*D_07EE*/"Truth"

};

char *Talk_Files_2[] ={
    /*Castles*/
    /*D_1682*/"LCB.TLK",
    /*D_168A*/"LYCAEUM.TLK",
    /*D_1696*/"EMPATH.TLK",
    /*D_16A1*/"SERPENT.TLK",
    /*Townes*/
    /*D_16AD*/"MOONGLO2.TLK",
    /*D_16BA*/"BRITAIN2.TLK",
    /*D_16C6*/"JHELOM2.TLK",
    /*D_16D1*/"YEW2.TLK",
    /*D_16D9*/"MINOC2.TLK",
    /*D_16E3*/"TRINSIC2.TLK",
    /*D_16EF*/"SKARA2.TLK",
    /*D_16F9*/"MAGINCI2.TLK"
};



/*load casle/towne/village files*/
Load_Towne(bp04)
unsigned bp04;
{
	if(Save("OUTMONST.SAV", sizeof(struct tNPC), &(D_8742._npc)) == -1)
		exit(3);
	if(Load(Towne_Castle_Village[bp04 - 0x01], sizeof(struct t_500), &D_8742) == -1)
		exit(3);
	File_TLK = dopen(Talk_Files[Party._loc - 1], 0);
    File_TLK_2 = dopen(Talk_Files_2[Party._loc - 1], 0);
	CurMode = MOD_BUILDING;
}

Load_Towne_1st(bp04)
unsigned bp04;
{

    if(Load(Towne_Castle_Village[bp04 - 0x01], sizeof(struct t_500), &D_8742) == -1)
        exit(3);
    File_TLK_2 = File_TLK;
    File_TLK = File_TLK_Buff;
    File_TLK_Buff = File_TLK_2;

}

Load_Towne_2nd(bp04)
unsigned bp04;
{

    if(Load(Second_Floor[bp04 - 0x01], sizeof(struct t_500), &D_8742) == -1)
        exit(3);
    File_TLK_Buff = File_TLK;
    File_TLK = File_TLK_2;

}

Load_Towne_Sub(bp04)
unsigned bp04;
{
    
    if(Load(Second_Floor[bp04 - 0x01], sizeof(struct t_500), &D_8742) == -1)
        exit(3);
    File_TLK_Buff = File_TLK;
    File_TLK = File_TLK_2;
    
}

/*load dungeon files*/
EXP_Load_Dungeon()
{
	register int si;

    /*made party._loc one bigger to ensure that Abyss is loaded correctly?*/
    if(Party._loc <= 0x19) {
        if(Load(Dungeons[Party._loc - 0x11], sizeof(tMap8x8x8), &(D_8742._map)) == -1)
		exit(3);
        File_DNG = dopen(Dungeons[Party._loc - 0x11], 0);
        for(si = 0x1f; si >= 0; si --)
            D_8742._npc._tile[si] = 0;
    } else {
        if(Load(Crypts[Party._loc - 0x29], sizeof(tMap8x8x8), &(D_8742._map)) == -1)
        exit(3);
        File_DNG = dopen(Crypts[Party._loc - 0x29], 0);
        for(si = 0x1f; si >= 0; si --)
            D_8742._npc._tile[si] = 0;
    }
}

EXP_Set_Dungeon()
{
	EXP_Load_Dungeon();
	CurMode = MOD_DUNGEON;
	Party._dir = DIR_E;
	Party._z = 0;
	DNG_main();
}

/*enter dungeon*/
Enter_Dungeon()
{
	Gra_CR();
	Gra_CR();
	if(Party._tile != TIL_1F) {
		Party._loc = 0;
		w_OnlyOnFoot();
		return;
	}
	Party._x = Party._y = 1;
	if(Save(/*D_1758*/"OUTMONST.SAV", sizeof(struct tNPC), &(D_8742._npc)) == -1)
		exit(3);
	EXP_Set_Dungeon();
}

/*enter towne*/
Enter_Towne()
{
	register int si;
    
    if (Party._tile == TIL_HorseW_14 || Party._tile == TIL_HorseE_15){
    /*resets the horse coordinates for a later check whether to 'restore' a horse*/
    HorseTown = 1;
    }

	u4_puts(D_Locations[Party._loc - 1]);
	Gra_CR();
	Gra_CR();
    
    /*added to give new towns unique start coords*/
    if (Party._loc == 0x24){
        Party._y = D_959C.y = 0x0f;
        Party._x = D_959C.x = 0x01;
    }
    else if ((Party._loc) < 5) {
        Party._y = D_959C.y = 0x1e;
        Party._x = D_959C.x = 0x0f;
    }
    else if((Party._loc) < 17  &&  (Party._loc) > 4) {
        Party._y = D_959C.y = 15;
        Party._x = D_959C.x = 1;
    }
    else {
        Party._y = D_959C.y = 0x13;
        Party._x = D_959C.x = 0x1e;
    }
    
	Load_Towne(Party._loc);
    

    /*removes characters who join, from towne, if joined*/
    EXP_Clear_PartyNPC();

}


/*removes characters who join, from towne, if joined, after coming down from second story*/
EXP_Clear_PartyNPC()
{
    register int si;

    if((Party._loc - 0x05) < 8) {
        for(si = Party._members; --si >= 1; ) {
            if(Party.chara[si]._class == (Party._loc - 0x05)) {
                D_8742._npc._tile[31] = D_8742._npc._gtile[31] = D_8742._npc._var[31] = 0;
            }
        }
    }
}

/*enter the abyss?*/
EXP_Enter_Abyss()
{
	if((
		(Party.mItems >> 3) &
		(Party.mItems >> 4) &
		(Party.mItems >> 2) &
		(Party.mItems >> 11) &
		(Party.mItems >> 12) &
		(Party.mItems >> 10)
	) & 1) {
		u4_puts(D_Locations[Party._loc - 1]);
		Enter_Dungeon();
	} else {
		Party._loc = 0;
		w_Cant_t();
	}
}

CMD_Enter()
{
	register int si;

	u4_puts("Enter ");
	if(Party._loc != 0 || Party._tile == TIL_18) {
		w_What();
		return;
	}
    /*Need to Change to allow more Maps*/
    /*Must be incremented each time a map is added. Automate?*/
	si = 45;
	while(si >= 0) {
#ifdef WIN32
		if(Party._x == (unsigned char)D_0844[si] && Party._y == (unsigned char)D_0864[si])
#else
		if(Party._x == D_0844[si] && Party._y == D_0864[si])
#endif
			break;
		si--;
	}
	if(si == -1) {
		w_What();
		return;
	}
	Party._loc = si + 1;
	Party.out_x = Party._x;
	Party.out_y = Party._y;
	switch(D_8742._map.x32x32[D_959C.y][D_959C.x]) {
		case TIL_Dung_09:
			u4_puts("dungeon!\n\n");
			u4_puts(D_Locations[Party._loc - 1]);
			Enter_Dungeon();
		break;
		case TIL_Town_0A:
			u4_puts("towne!\n\n");
			Enter_Towne();
		break;
		case TIL_Castle_0B: case TIL_CasEn_0E:
			u4_puts("castle!\n\n");
            Enter_Towne();
		break;
		case TIL_Village_0C:
            if(Party._loc > 0x20) {
                u4_puts("hamlet!\n\n");
                Enter_Towne();
            }
            else {
                u4_puts("village!\n\n");
                Enter_Towne();
            }
		break;
		case TIL_1D:
			u4_puts("ruin!\n\n");
			Enter_Towne();
		break;
		case TIL_4C:
			if(Party._x != 0xe9 || Party._y != 0xe9) {
				w_What();
				return;
			}
		case TIL_46:
			EXP_Enter_Abyss();
		break;
		case TIL_1E:
            if(Party._loc >= 0x29){
                u4_puts("the Oracle of\n");
                u4_puts(D_Principles[Party._loc - 0x2c]);
                Gra_CR();
                Enter_Oracle();
            }
            else {
			u4_puts("the Shrine of\n");
			u4_puts(D_Virtues[Party._loc - 0x19]);
			Gra_CR();
			Enter_Shrine();
            }
		break;
		default:
			w_What();
			return;
	}
}

EXP_OnFoot()
{
	register int si;

	for(si = 31; si >= 8 ;si --) {
		if(D_8742._npc._tile[si] == 0)
			break;
	}
	if(si == 7)
		si = U4_RND1(15) | 0x10;
	D_8742._npc._gtile[si] = D_8742._npc._tile[si] = Party._tile;
	D_8742._npc._x[si] = Party._x;
	D_8742._npc._y[si] = Party._y;
	D_8742._npc._var[si] = D_8742._npc._tlkidx[si] = 0;
	Party._tile = TIL_1F;
	Gra_CR();
}

CMD_X_it()
{
	u4_puts("X-it ");
	if(Party._tile < TIL_HorseW_14) {
		ship_x = Party._x;
		ship_y = Party._y;
		EXP_OnFoot();
	} else if(Party._tile < TIL_16) {
        
        if(CurMode == MOD_BUILDING){
            Party._tile = TIL_1F;
            DoublePace = 0;
            D_8742._npc._tile[0] = D_8742._npc._gtile[0] = TIL_HorseE_15;
            D_8742._npc._x[0] = Party._x;
            D_8742._npc._y[0] = Party._y;
            Horse_x = Party._x;
            Horse_y = Party._y;
            D_8742._npc._var[0] = 1;
            D_8742._npc._tlkidx[0] = 0;
            Gra_CR();
        }
        else {
            DoublePace = 0;
            EXP_OnFoot();
        }
        
        
	} else if(Party._tile == TIL_18 && Party.f_1dc == 0) {
		EXP_OnFoot();
	} else {
		w_What();
	}
}

EXP_Restore_Horse()
{
    if (HorseTown == 1){
        D_8742._npc._tile[0] = D_8742._npc._gtile[0] = TIL_HorseE_15;
        D_8742._npc._x[0] = Horse_x;
        D_8742._npc._y[0] = Horse_y;
        D_8742._npc._var[0] = 1;
    }
}

C_4206(bp04)
unsigned bp04;
{
	register int si;

	for(si = 31; si >= 8; si --) {
		if(
			Party._x == D_8742._npc._x[si] &&
			Party._y == D_8742._npc._y[si] &&
			bp04 == (D_8742._npc._tile[si] & ~3)
		) break;
	}
	if(si != 7)
		D_8742._npc._gtile[si] = D_8742._npc._tile[si] = 0;
		Party._tile = tile_cur;
}

CMD_Board()
{
	if(Party._tile != TIL_1F) {
		u4_puts("Board: ");
		w_Cant_t();
		return;
	}
	if(tile_cur == TIL_HorseW_14 || tile_cur == TIL_HorseE_15) {
        if(CurMode == MOD_BUILDING){
            C_4206(TIL_HorseW_14);
            D_8742._npc._tile[0] = 0;
            u4_puts("Mount Horse!\n");
            return;        }
        else {
            C_4206(TIL_HorseW_14);
            u4_puts("Mount Horse!\n");
            return;
        }
	}
	u4_puts("Board ");
	if(tile_cur == TIL_18) {
		C_4206(TIL_18);
		u4_puts("Balloon!\n");
		Party.f_1dc = 0;
		return;
	}
	if(tile_cur < TIL_ShipW_10 || tile_cur > TIL_ShipS_13) {
		w_What();
		return;
	}
	C_4206(TIL_ShipW_10);
	u4_puts("Frigate!\n");
	if(ship_x != Party._x || ship_y != Party._y)
		Party._ship = 50;
}

CMD_Yell()
{
	u4_puts("Yell ");
	if(Party._tile == TIL_HorseW_14 || Party._tile == TIL_HorseE_15) {
		if(DoublePace ^= 1)
			u4_puts(/*D_17E9*/"Giddyup!\n");
		else
			u4_puts(/*D_17F3*/"Whoa!\n");
	} else {
		w_What();
	}
}

unsigned D_17FA = 0;/*current opened door's x*/
unsigned D_17FC = 0;/*current opened door's y*/
unsigned D_17FE = 0;/*current opened door's delay*/

/*automatic door close*/
C_431D()
{
	if(CurMode == MOD_BUILDING && D_17FE) {
		if(--D_17FE == 0)
			D_8742._map.x32x32[D_17FC][D_17FA] = TIL_3B;
	} else {
		D_17FE = 0;
	}
}

CMD_Open()
{
	unsigned bp_02, bp_04;

	while(D_17FE)
		C_431D();
	if(CurMode != MOD_BUILDING) {
		u4_puts("Open: ");
		w_NotHere();
		return;
	}
	AskDir("Open: ", &bp_02, &bp_04);
	if(!(bp_02 | bp_04))
		return;
	if((bp_02 + Party._x) > 0x1f || bp_04) {
		w_NotHere();
	} else {
		register unsigned char *si;

		si = &(D_8742._map.x32x32[Party._y][bp_02 + Party._x]);
		if(*si == TIL_3A) {
			w_Cant_t();
		} else if(*si == TIL_3B) {
			D_17FA = (bp_02 + Party._x);
			D_17FC = Party._y;
			D_17FE = 5;
			*si = TIL_3E;
			u4_puts("\nOpened!\n");
		} else {
			w_NotHere();
		}
	}
}

CMD_Jimmy()
{
	int bp_04, bp_02;

	u4_puts(/*D_1818*/"Jimmy lock!\n");
	AskDir(/*D_1825*/"Dir: ", &bp_02, &bp_04);
	if(!(bp_02 | bp_04))
		return;
	if(CurMode != MOD_BUILDING || (bp_02 + Party._x) > 0x1f || bp_04) {
		w_NotHere();
	} else {
		register unsigned char *si;

		si = &(D_8742._map.x32x32[Party._y][bp_02 + Party._x]);
		if(*si != TIL_3A) {
			w_NotHere();
			return;
		}
		if(Party._keys == 0) {
			u4_puts(/*D_182B*/"No keys left!\n");
			return;
		}
		Party._keys --;
		*si = TIL_3B;
	}
}

CMD_Klimb()
{
    while(D_17FE)
        C_431D();
	u4_puts("Klimb ");
    
	if(Party._loc == 0) {
		if(Party._tile != TIL_18) {
			w_What();
			return;
		}
		u4_puts("altitude\n");
		Party.f_1dc = 1;
		D_9440 = 0;
		return;
	}
    if(tile_cur != TIL_1B){
        w_What();
        return;
    }
    if(Party._tile != TIL_1F) {
        Gra_CR();
        w_OnlyOnFoot();
        return;
    }
    if(Party._loc == 12 && tile_cur == TIL_1B) {
        u4_puts("to ground floor!\n");
        Load_Towne_1st(Party._loc);
        EXP_Clear_PartyNPC();
        EXP_Restore_Horse();
        return;
    }
    if(tile_cur == TIL_1B) {
        u4_puts("to second floor!\n");
        Load_Towne_2nd(Party._loc);
        return;
    }
    else {
		w_What();
	}
}

CMD_Descend()
{
    while(D_17FE)
        C_431D();
    u4_puts(/*D_1886*/"Descend ");
    
	if(Party._tile == TIL_18) {
		u4_puts(/*D_1867*/"Land Balloon\n");
		if(tile_cur != TIL_Grass_04) {
			sound(1);
			w_NotHere();
			return;
		}
		if(Party.f_1dc == 0) {
			u4_puts(/*D_1875*/"Already Landed!\n");
			return;
		}
		Party.f_1dc = 0;
		D_9440 = 1;
		return;
	}
    if(tile_cur != TIL_1C){
        w_What();
        return;
    }
    if(Party._tile != TIL_1F) {
        Gra_CR();
        w_OnlyOnFoot();
        return;
    }
	if(Party._y == 2 && Party._loc == 0x01 && tile_cur == TIL_1C) {
		u4_puts("into the depths!\n");
		Party.out_x = 0xef;
		Party.out_y = 0xf0;
		Party._y = Party._x = 5;
		Party._loc = 0x17;
		EXP_Set_Dungeon();
		return;
	}
    if(Party._loc == 12 && tile_cur == TIL_1C) {
        u4_puts("to basement!\n");
        Load_Towne_Sub(Party._loc);
        EXP_Clear_PartyNPC();
        return;
    }
    if(tile_cur == TIL_1C) {
        u4_puts("to first floor!\n");
        Load_Towne_1st(Party._loc);
        EXP_Clear_PartyNPC();
        EXP_Restore_Horse();
        return;
    }
    else {
        w_What();
    }

}
