/*
 * Ultima IV - Quest Of The Avatar
 * (c) Copyright 1987 Lord British
 * reverse-coded by Ergonomy Joe in 2012
 */

#include "u4.h"

Sleep()
{
	register int si;

	for(si = Party._members; --si >= 0; ) {
		if(isCharaConscious(si) && U4_RND1(3) == 0) {
			Party.chara[si]._stat = 'S';
			sleep_poisonfx(si);
			dspl_Stats();
		}
	}
}

Poison()
{
	register int si;

    if(spell_sta != 'B') {
        for(si = Party._members; --si >= 0; ) {
            if(Party.chara[si]._stat == 'G' && U4_RND1(7) == 0) {
                Party.chara[si]._stat = 'P';
                sleep_poisonfx(si);
                dspl_Stats();
            }
        }
    }
}

/*randomEvent*/
Random_Encounter()
{
	unsigned bp_02;

	if(CurMode == MOD_OUTDOORS && tile_cur == TIL_17 && U4_RND1(7) == 0) {
		u4_puts("\nBridge Trolls!\n");
		D_96F8 = TIL_A4;
		D_9772 = Party._x;
		D_9140 = Party._y;
		D_946C = TIL_17;
		C_7DBC();
		return;
	}
    /*removed death on teleport to mountains for now to save coding space */
    /*if(CurMode == MOD_OUTDOORS && Party._tile != TIL_18 && tile_cur == TIL_Mount_08) {
        u4_puts("\nMountains!\n\n");
        sound(6); shakefx();
        Gra_09();
        dspl_Stats();
        u4_puts("\nThy Party Perishes!\n");
        Death_Revive();
        return;
    }*/
    if(CurMode == MOD_OUTDOORS && (Party._tile >= TIL_HorseW_14 && Party._tile != TIL_18) && (tile_cur == TIL_00 || tile_cur == TIL_MWater_01 || tile_cur == TIL_SWater_02)) {
        u4_puts("\nWater!\n\n");
        sound(6); shakefx();
        Gra_09();
        dspl_Stats();
        u4_puts("\nThy Party Drowns!\n");
        Death_Revive();
        return;
    }
	if(CurMode <= MOD_BUILDING && Party.f_1dc != 0)
		return;
	if(CurMode >= MOD_COMBAT) {
		if(Fighters._chtile[activeChara] == 0)
			return;
		switch(Combat_MAP(Combat._charaY[activeChara], Combat._charaX[activeChara])) {
			case TIL_Swamp_03: case TIL_44:
                if(spell_sta != 'B') {
                    if(Party.chara[activeChara]._stat == 'G') {
                        Party.chara[activeChara]._stat = 'P';
                        sleep_poisonfx(activeChara);
                        dspl_Stats();
                    }
                }
			break;
			case TIL_47:
				if(isCharaConscious(activeChara)) {
					Party.chara[activeChara]._stat = 'S';
					Fighters._chtile[activeChara] = TIL_38;
					sleep_poisonfx(activeChara);
					dspl_Stats();
				}
			break;
			case TIL_46: case TIL_4C:
				sleep_poisonfx(activeChara);
				bp_02 = U4_RND3(32) + 16;
				hitChara(activeChara, bp_02);
			break;
		}
		return;
	}
	if(CurMode == MOD_DUNGEON) {
		if((tile_cur & 0xf0) == 0xa0) {
			switch(tile_cur & 3) {
				case 0: Poison(); break;
				case 2: Party_Damage(15); break;
				case 3: Sleep(); break;
			}
		} else if((tile_cur & 0xf0) == 0x80) {
			if(tile_cur == 0x80) {
				u4_puts("\nWinds!\n");
				Party.f_1dc = 0;
			} else {
				u4_puts((tile_cur < 0x88)?"\nFalling Rocks!\n":"\nPit!\n");
				Party_Damage(15);
			}
		}
		return;
	}
	switch(tile_cur) {
		case TIL_Swamp_03: case TIL_44: Poison(); break;
		case TIL_46: case TIL_4C: Party_Damage(15); break;
		case TIL_47: Sleep(); break;
	}
}
