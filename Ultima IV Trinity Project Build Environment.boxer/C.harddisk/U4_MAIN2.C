/*
 * Ultima IV - Quest Of The Avatar
 * (c) Copyright 1987 Lord British
 * reverse-coded by Ergonomy Joe in 2012
 */

#include "u4.h"

unsigned D_07F8 = 1;

/*karmas*/
unsigned /*D_07FA*/*pKarmas[] = {
	&(Party._hones),
	&(Party._compa),
	&(Party._valor),
	&(Party._justi),
	&(Party._sacri),
	&(Party._honor),
	&(Party._spiri),
	&(Party._humil),
};

int /*D_080A*/activeCharaX = -1;

char D_080C[] = {-1,0,1,0};
char D_0810[] = {0,-1,0,1};

/*moongates positions*/
unsigned char D_0814[] = {0xE0,0x60,0x26,0x32,0xA6,0x68,0x17,0xBB};
unsigned char D_081C[] = {0x85,0x66,0xE0,0x25,0x13,0xC2,0x7E,0xA7};

char *Second_Floor[] = {
    /*Castles*/
    /*0x56 0x6B*/"LCB_2.ULT",
    /*D_06CC*/"LYCAEUM2.ULT",
    /*D_06D8*/"EMPATH2.ULT",
    /*D_06E3*/"SERPENT2.ULT",
    /*Townes*/
    /*D_06EF*/"MOONGLO2.ULT",
    /*D_06FC*/"BRITAIN2.ULT",
    /*D_0708*/"JHELOM2.ULT",
    /*D_0713*/"YEW2.ULT",
    /*D_071B*/"MINOC2.ULT",
    /*D_0725*/"TRINSIC2.ULT",
    /*D_0731*/"SKARA2.ULT",
    /*D_073B*/"MAGINCI2.ULT"
};

char *Basement_Floor[] = {
    /*Castles*/
    /*0x56 0x6B*/"LCB_B.ULT",
    /*D_06CC*/"LYCAEUMB.ULT",
    /*D_06D8*/"EMPATHB.ULT",
    /*D_06E3*/"SERPENTB.ULT",
    /*Townes*/
    /*D_06EF*/"MOONGLOB.ULT",
    /*D_06FC*/"BRITAINB.ULT",
    /*D_0708*/"JHELOMB.ULT",
    /*D_0713*/"YEWB.ULT",
    /*D_071B*/"MINOCB.ULT",
    /*D_0725*/"TRINSIC2.ULT",
    /*D_0731*/"SKARA2.ULT",
    /*D_073B*/"MAGINCI2.ULT"
};

/*towns/castles files*/
char *Towne_Castle_Village[] = {
	/*Castles*/
	/*0x56 0x6B*/"LCB_1.ULT",
	/*D_06CC*/"LYCAEUM.ULT",
	/*D_06D8*/"EMPATH.ULT",
	/*D_06E3*/"SERPENT.ULT",
	/*Townes*/
	/*D_06EF*/"MOONGLOW.ULT",
	/*D_06FC*/"BRITAIN.ULT",
	/*D_0708*/"JHELOM.ULT",
	/*D_0713*/"YEW.ULT",
	/*D_071B*/"MINOC.ULT",
	/*D_0725*/"TRINSIC.ULT",
	/*D_0731*/"SKARA.ULT",
	/*D_073B*/"MAGINCIA.ULT",
	/*Villages*/
	/*D_0748*/"PAWS.ULT",
	/*D_0751*/"DEN.ULT",
	/*0xC9 0x3B*/"VESPER.ULT",
	/*0x88 0x5A*/"COVE.ULT",
    /*Dungeons*//*Added dungeons and shrines to make the count for new locations correct*/
    /*0xF0 0x49*/"D",
    /*D_07A8*/"D",
    /*D_07B4*/"D",
    /*D_07C0*/"W",
    /*D_07CA*/"C",
    /*D_07D7*/"S",
    /*D_07E1*/"H",
    /*D_07EE*/"A",
    /*Shrines*/
    /*D_076D*/"B",
    /*D_0772*/"Y",
    /*D_0779*/"R",
    /*D_077D*/"G",
    /*D_0783*/"O",
    /*D_078A*/"P",
    /*D_0791*/"W",
    /*D_0797*/"B",
    /*Camps*/
    /*0x2E 0x5D*/"RIVERCA.ULT",
    /*0x79 0x3A*/"FORESTCA.ULT",
    /*0x9A 0x41*/"MOUNTCA.ULT",
    /*0xD9 0x34*/"SWAMPCA.ULT",
    /*0x51 0xB7*/"PLAINSCA.ULT",
    /*0x30 0x9E*/"VALLEYCA.ULT",
    /*0x51 0xB7*/"FARMCA.ULT",
    /*0x30 0x9E*/"RANCHCA.ULT",
    /*Crypts*/
    /*D_07EE*/"M",
    /*D_07EE*/"M",
    /*D_07EE*/"E",
    /*Oracles*/
    /*D_07EE*/"l",
    /*D_07EE*/"c",
    /*D_07EE*/"t"
    /*46 Total*/

};

/*places world's coordinates*/
/*char D_0844[] = {0x56,0xDA,0x1C,0x92,0xE8,0x52,0x24,0x3A,0x9F,0x6A,0x16,0xBB,0x62,0x88,0xC9,0x88, 0xF0,0x5B,0x48,0x7E,0x9C,0x3A,0xEF,0xE9, 0xE9,0x80,0x24,0x49,0xCD,0x51,0xE7,0xE7, 0x2E,0x79,0x9A,0xD9,0x51,0x30,0x52,0x54, 0x56,0x01,0x01, 0x52,0x54,0x56};
char D_0864[] = {0x6B,0x6B,0x32,0xF1,0x87,0x6A,0xDE,0x2B,0x14,0xB8,0x80,0xA9,0x91,0x9E,0x3B,0x5A, 0x49,0x43,0xA8,0x14,0x1B,0x66,0xF0,0xE9, 0x42,0x5C,0xE5,0x0B,0x2D,0xCF,0xD8,0xD8, 0x5D,0x3A,0x41,0x34,0xB7,0x9E,0x63,0x63, 0x63,0x03,0x04, 0x65,0x65,0x65};*/
/*for testing*/
char D_0844[] = {0x56,0x52,0x54,0x56,0x52,0x54,0x56,0x58,0x5A,0x5C,0x5E,0x60,0x62,0x88,0xC9,0x88, 0xF0,0x5B,0x48,0x7E,0x9C,0x3A,0xEF,0xE9, 0xE9,0x80,0x24,0x49,0xCD,0x51,0xE7,0xE7, 0x52,0x54,0x56,0x58,0x5A,0x5C,0x5E,0x60, 0x52,0x54,0x56, 0x52,0x54,0x56};
char D_0864[] = {0x6B,0x5D,0x5D,0x5D,0x5F,0x5F,0x5F,0x5F,0x5F,0x5F,0x5F,0x5F,0x91,0x9E,0x3B,0x5A, 0x49,0x43,0xA8,0x14,0x1B,0x66,0xF0,0xE9, 0x42,0x5C,0xE5,0x0B,0x2D,0xCF,0xD8,0xD8, 0x61,0x61,0x61,0x61,0x61,0x61,0x61,0x61, 0x63,0x63,0x63, 0x65,0x65,0x65};

/*dungeons files*/
char *Dungeons[] = {
    /*0xF0 0x49*/"Deceit.Dng",
    /*D_07A8*/"Despise.Dng",
    /*D_07B4*/"Destard.Dng",
    /*D_07C0*/"Wrong.Dng",
    /*D_07CA*/"Covetous.Dng",
    /*D_07D7*/"Shame.Dng",
    /*D_07E1*/"Hythloth.Dng",
    /*D_07EE*/"Abyss.Dng"
};

/*colors i.e. shrines*/
char *Shrines[] = {
	/*D_076D*/"Blue",
	/*D_0772*/"Yellow",
	/*D_0779*/"Red",
	/*D_077D*/"Green",
	/*D_0783*/"Orange",
	/*D_078A*/"Purple",
	/*D_0791*/"White",
	/*D_0797*/"Black"
};

/*crypts files*/
char *Crypts[] = {
    /*D_07A8*/"MONDAIN.DNG",
    /*D_07B4*/"MINAX.DNG",
    /*D_07EE*/"EXODUS.DNG"
};

/*oracles. not used at moment...*/
/*char *Oracles[] = {
    "control",
    "passion",
    "diligence"
};*/

