/*
 * Ultima IV - Quest Of The Avatar
 * (c) Copyright 1987 Lord British
 * reverse-coded by Ergonomy Joe in 2012
 */

#include "u4.h"

#include <string.h>
#include <stdlib.h>

/*---- mantras*/
char *Mantras[] = {
	/*D_7B62*/"ahm",
	/*D_7B66*/"mu",
	/*D_7B69*/"ra",
	/*D_7B6C*/"beh",
	/*D_7B70*/"cah",
	/*D_7B74*/"summ",
	/*D_7B79*/"om",
	/*D_7B7C*/"lum"
};
/*---- visions*/
char *Visions[][3] = {
	{
		/*D_7B80*/"Take not the gold of others found in towns and castles for yours it is not!\n",
		/*D_7BCD*/"Cheat not the merchants and peddlers for tis an evil thing to do!\n",
		/*D_7C10*/"Second, read the Book of Truth at the entrance to the Great Stygian Abyss!\n",
	}, {
		/*D_7C5C*/"Kill not the non-evil beasts of the land, and do not attack the fair people!\n",
		/*D_7CAA*/"Give of thy purse to those who beg and thy deed shall not be forgotten!\n",
		/*D_7CF3*/"Third, light the Candle of Love at the entrance to the Great Stygian Abyss!\n",
	}, {
		/*D_7D40*/"Victories scored over evil creatures help to build a valorous soul!\n",
		/*D_7D85*/"To flee from battle with less than grievous wounds often shows a coward!\n",
		/*D_7DCF*/"First, ring the Bell of Courage at the entrance to the Great Stygian Abyss!\n",
	}, {
		/*D_7E1C*/"To take the gold of others is injustice not soon forgotten. Take only thy due!\n",
		/*D_7E6C*/"Attack not a peaceful citizen for that action deserves strict punishment!\n",
		/*D_7EB7*/"Kill not a non-evil beast for they deserve not death, even if in hunger they attack thee!",
	}, {
		/*D_7F11*/"To give thy last gold piece unto the needy shows good measure of self-sacrifice!\n",
		/*D_7F63*/"For thee to flee and leave thy companions is a self-serving action to be avoided!\n",
		/*D_7FB6*/"To give of thy life's blood so that others may live is a virtue of great praise!\n",
	}, {
		/*D_8008*/"Take not the gold of others for this shall bring dishonor upon thee!\n",
		/*D_804E*/"To strike first a non-evil being is by no means an honorable deed!\n",
		/*D_8092*/"Seek ye to solve the many Quests before thee, and honor shall be a reward!\n",
	}, {
		/*D_80DE*/"Seek ye to know thyself.  Visit the seer often for he can see into thy inner being!\n",
		/*D_8133*/"Meditation leads to enlightenment Seek ye all Wisdom and Knowledge!\n",
		/*D_8178*/"If thou dost seek the White Stone, search ye not under the ground, but in Serpent's Spine!\n",
	}, {
		/*D_81D4*/"Claim not to be that which thou art not.  Humble actions speak well of thee!\n",
		/*D_8222*/"Strive not to wield the Great Force of Evil for its power will overcome thee!\n",
		/*D_8271*/"If thou dost seek the Black Stone, search ye at the Time and Place of the Gate on the darkest of all nights!\n"
	}
};
/*---- visions 2*/
char *D_8362[] = {
	/*D_82DF*/"rune_1",/*I*/
	/*D_82E6*/"rune_2",/*N*/
	/*D_82ED*/"rune_0",/*F*/
	/*D_82F4*/"rune_1",/*I*/
	/*D_82FB*/"rune_2",/*N*/
	/*D_8302*/"rune_1",/*I*/
	/*D_8309*/"rune_3",/*T*/
	/*D_8310*/"rune_4" /*Y*/
};

/*---- word of passage*/
char *Words_Passage[] = {
    /*D_7B62*/"a",
    /*D_7B66*/"b",
    /*D_7B69*/"c",
    /*D_7B6C*/"d",
    /*D_7B70*/"e",
    /*D_7B74*/"f",
    /*D_7B79*/"g",
    /*D_7B79*/"h",
    /*D_7B7C*/"i"
};

char *Keywords[9] = {
    /*D_639A*/"bye",
    /*D_639E*/"use",
    /*D_63A3*/"wand",
    /*D_63AA*/"name",
    /*D_63AF*/"look",
    /*D_6442*/"minax",
    /*D_6448*/"exodus",
    /*D_644F*/"ring",
    /*D_6456*/""
};

char *Keywords_Response[][8] = {
    {
        /*D_6457*/"\n\n\nIt says:\nAsk the\niOracle of Love,\nabout this!\n",
        /*D_6499*/"\n\n\nIt says:\nThe Skull\nis pure evil,\nand\nmust be destroyed!\n",
        /*D_64C9*/"\n\n\nIt says:\nAsk the\nOracle of Courge\nabout this!\n",
        /*D_6DF2*/"\n\n\n\n\n\nHe says:\nThe Great\nStygian Abyss\nis the darkest\npocket of evil\nremaining in\nBritannia!\n\n\n\n\n\n\n\nIt is said that\nin the deepest\nrecesses of the\nAbyss is the\nChamber of the\nCodex!\n\n\nIt is also said\nthat only one of\nhighest Virtue\nmay enter this\nChamber, one\nsuch as an\nAvatar!!!\n",
        /*D_6F0C*/"\n\n\n\n\n\nHe says:\nMondain is dead!\n",
        /*D_6F2D*/"\n\n\n\n\n\nHe says:\nMinax is dead!\n",
        /*D_6F4C*/"\n\n\n\n\n\nHe says:\nExodus is dead!\n",
        /*D_6F6C*/"\n\n\nIt says:\nAsk the\nOracle of Courge\nabout this!\n"
    },{
        /*D_6457*/"\n\n\nIt says:\nAsk the\niOracle of Love,\nabout this!\n",
        /*D_6499*/"\n\n\nIt says:\nAsk the\niOracle of Love,\nabout this!\n",
        /*D_64C9*/"\n\n\nIt says:\nBring the\nWand to this\noracle to\ndispose of it!\n",
        /*D_6DF2*/"\n\n\n\n\n\nHe says:\nThe Great\nStygian Abyss\nis the darkest\npocket of evil\nremaining in\nBritannia!\n\n\n\n\n\n\n\nIt is said that\nin the deepest\nrecesses of the\nAbyss is the\nChamber of the\nCodex!\n\n\nIt is also said\nthat only one of\nhighest Virtue\nmay enter this\nChamber, one\nsuch as an\nAvatar!!!\n",
        /*D_6F0C*/"\n\n\n\n\n\nHe says:\nMondain is dead!\n",
        /*D_6F2D*/"\n\n\n\n\n\nHe says:\nMinax is dead!\n",
        /*D_6F4C*/"\n\n\n\n\n\nHe says:\nExodus is dead!\n",
        /*D_6F6C*/"\nHe says:\nThe Eight\nVirtues of the\nAvatar are:\nHonesty,\nCompassion,\nValor,\nJustice,\nSacrifice,\nHonor,\nSpirituality,\nand Hoohee!\n"
    },{
        /*D_6457*/"\n\n\nIt says:\nThe Skull\nis pure evil,\nand\nmust be destroyed!\n",
        /*D_6499*/"\n\n\n\n\nThou see the\nKing with the\nRoyal Sceptre.\n",
        /*D_64C9*/"\n\n\nIt says:\nAsk the\nOracle of Courge\nabout this!\n",
        /*D_6DF2*/"\n\n\n\n\n\nHe says:\nThe Great\nStygian Abyss\nis the darkest\npocket of evil\nremaining in\nBritannia!\n\n\n\n\n\n\n\nIt is said that\nin the deepest\nrecesses of the\nAbyss is the\nChamber of the\nCodex!\n\n\nIt is also said\nthat only one of\nhighest Virtue\nmay enter this\nChamber, one\nsuch as an\nAvatar!!!\n",
        /*D_6F0C*/"\n\n\n\n\n\nHe says:\nMondain is dead!\n",
        /*D_6F2D*/"\n\n\n\n\n\nHe says:\nMinax is dead!\n",
        /*D_6F4C*/"\n\n\n\n\n\nHe says:\nExodus is dead!\n",
        /*D_6F6C*/"\nHe says:\nThe Eight\nVirtues of the\nAvatar are:\nHonesty,\nCompassion,\nValor,\nJustice,\nSacrifice,\nHonor,\nSpirituality,\nand Hoohoo!\n"
    }
};

/*display avatarhood vision I.N.F.I.N.I.T.Y*/
C_E6DF(bp04)
int bp04;
{
	char bp_14[20];

	CurMode = MOD_VISION;
	strcpy(bp_14, D_8362[bp04]);
	strcat(bp_14, (D_943A == 1)?/*D_8317*/".pic":/*D_831C*/".ega");
	Gra_10();
	Gra_16(bp_14, 0, 0);
}

/*enter a shrine*/
Enter_Shrine()
{
	int loc_A, loc_B, loc_C;
	char loc_D[16];
	int loc_E;
	loc_A = Party._loc - 0x19;/*shrine "number"*/
	if(!TST_MSK(Party.mRunes, loc_A)) {
		u4_puts(/*D_8372*/"\nThou dost not bear the rune of entry!  A strange force keeps you out!\n");
Shrine_Eject:
		CurMode = MOD_OUTDOORS;
		Party._loc = 0;
		return;
	}
	if(Load("SHRINE.CON", 11 * 11, Combat._map) == -1)
		exit(3);
	CurMode = MOD_SHRINE;
	u4_puts("\nYou enter the ancient shrine and sit before the altar...\nUpon what virtue dost thou meditate?\n");
	u4_gets(loc_D, 15);
	Gra_CR();
	u4_puts("\nFor how many\n");
	loc_E = AskLetter("Cycles (0-3)?\x12\x12\b", '0', '3');
	if(loc_E < 0) {
		goto Shrine_Eject;
	}
	loc_E -= '0';
	if(loc_E == 0 || strnicmp(loc_D, D_Virtues[loc_A], 16)) {
		u4_puts("\nThou art unable to focus thy thoughts on this subject!\n");
		goto Shrine_Eject;
	}
	if(Party._moves / 100 == Party.f_1ea) {
		u4_puts("\nThy mind is still weary from thy last Meditation!\n");
		goto Shrine_Eject;
	}
	Party.f_1ea = Party._moves / 100;
	u4_puts("Begin Meditation\n");
	for(loc_B = 0; loc_B < loc_E; loc_B ++) {
		for(loc_C = 0; loc_C < 0x10; loc_C ++) {
			u_delay(1, 0);
			u4_putc('.');
		}
		u_kbflush();
		u4_puts("\nMantra: ");
		u4_gets(loc_D, 15);
		Gra_CR();
		if(strnicmp(loc_D, Mantras[loc_A], 0x10)) {
			u4_puts("\nThou art not able to focus thy thoughts with that Mantra!\n");
			karma_dec(&(Party._spiri), 3);
			goto Shrine_Eject;
		}
	}
	if(loc_E != 3 || *(pKarmas[loc_A]) != 99) {
		u4_puts("\nThy thoughts are pure. Thou art granted a vision!\n");
		karma_inc(&(Party._spiri), loc_E * 3);
		u_kbflush();
		u_kbread();
		Gra_CR();
		u4_puts(Visions[loc_A][loc_E - 1]);
	} else {
		u4_puts("\nThou hast achieved partial Avatarhood in the Virtue of\n");
		u4_puts(D_Virtues[loc_A]);
		Gra_09(); sound(9, 0xff); Gra_09();
		Gra_CR();
		*(pKarmas[loc_A]) = 0;
		dspl_Stats();
		u_kbflush();
		u_kbread();
		u4_puts("\n\nThou art granted a vision!\n");
		C_E6DF(loc_A);
		u_kbflush();
	}
	u_kbread();
	Gra_CR();
	goto Shrine_Eject;
}

/*enter an oracle*/
Enter_Oracle()
{
    
    int loc_A, loc_B, loc_C, question;
    char loc_D[16];
    int loc_E;
    loc_A = Party._loc - 0x2c;/*oracle "number"*/
    /* this check is not set yet...used runes in the Shrine version */
    if(Party._loc == 0) {
        u4_puts(/*D_8372*/"\nThou dost not bear the rune of entry!  A strange force keeps you out!\n");
        Oracle_Eject:
            CurMode = MOD_OUTDOORS;
            Party._loc = 0;
            return;
    }
    if(Load("ORACLE.CON", 11 * 11, Combat._map) == -1)
        exit(3);
    /*if(Load("ORACLE.ULT", sizeof(struct t_500), &D_8742) == -1)
        exit(3);*/
    
        CurMode = MOD_SHRINE;

        u4_puts("\nYou enter the mysterious oracle and stand before the altar...\n\nA voice booms out: For what hast thou come?\n");
        u4_gets(loc_D, 15);
        Gra_CR();

    if(loc_E == 0 || strnicmp(loc_D, D_Principles[loc_A], 16)) {
        u4_puts("\nThe Oracle heeds you not!\n");
        Gra_CR();
        goto Oracle_Eject;
    }
    
    if(Party._moves / 100 == Party.f_1ea) {
        u4_puts("\nThy spirit is still weary from thy last Query!\n");
        goto Oracle_Eject;
    }
    Party.f_1ea = Party._moves / 100;
    Gra_CR();
    /*
    for(question = 0; question < 3; question ++) {
        loc_E = 1;
        u4_puts("A Silence Ensues\n");
        
        for(loc_B = 0; loc_B < loc_E; loc_B ++) {
            for(loc_C = 0; loc_C < 0x10; loc_C ++) {
                u_delay(1, 0);
                u4_putc('.');
            }
            Gra_CR();
            
            u_kbflush();
            u4_puts("\nWhat is the ");
            if(question == 0)
                u4_puts("first ");
            if(question == 1)
                u4_puts("second ");
            if(question == 2)
                u4_puts("third ");
            u4_puts("word of passage? ");
            u4_gets(loc_D, 15);
            Gra_CR();
            Gra_CR();
            
            if(strnicmp(loc_D, Words_Passage[loc_A + (loc_A * 2) + question], 0x10)) {
                u4_puts("\nThe Word of Passage is false!\n");
                karma_dec(&(Party._spiri), 3);
                goto Oracle_Eject;
            }
        }
    }
    */
    u4_puts("\nThe Oracle will listen to thy query.\n");
    Gra_09(); sound(9, 0xff); Gra_09();
    u_kbflush();
    u_kbread();
    Gra_CR();
    Talk_Oracle();
        
    u_kbread();
    Gra_CR();
    goto Oracle_Eject;
}

/*looks for the parameter in Oracles's keywords
 (4 char is enough)
 not found => -1
 else => index of the keywords*/
SHR_Keywords(bp04)
char *bp04;
{
    int bp_02;
    
    for(bp_02 = 0; Keywords[bp_02][0]; bp_02++) {
        if(strnicmp(bp04, Keywords[bp_02], 4) == 0)
            break;
    }
    if(Keywords[bp_02][0] == 0)
        return -1;
    return bp_02;
}

/*conversation with the Oracle*/
Talk_Oracle()
{
    int bp_02,loc_A;
    char bp_12[15];
    loc_A = Party._loc - 0x2c;/*oracle "number"*/


                /*u4_puts(Party.chara[0]._name);
                if(Party._members >= 3) {
                    u4_puts(" and thy companions!\n");
                } else if(Party._members == 2) {
                    u4_puts(" and thy companions, ");
                    u4_puts(Party.chara[1]._name);
                    u4_puts("!\n");
                } else {
                    Gra_CR();
                }*/
                u4_puts("What wouldst thou ask of the Oracle?\n");
    
                
                for(;;) {
                    u4_gets(bp_12, 15);
                    Gra_CR();
                    if(bp_12[0] == 0)
                        bp_02 = 0;
                    else
                        bp_02 = SHR_Keywords(bp_12);
                    if(bp_02 == 0)/*"bye"*/
                        break;
                    switch(bp_02) {
                        case 1:  CMD_Use(); break;
                        case -1: u4_puts("\nIt says: This is not of my ken.\n"); break;
                        default: u4_puts(Keywords_Response[loc_A][bp_02]);
                    }
                    u4_puts("\nWhat else wouldst thou ask?\n");
                }
                
                u4_puts("Thy questions hath been answered.");

}




