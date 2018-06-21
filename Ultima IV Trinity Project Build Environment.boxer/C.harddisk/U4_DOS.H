/*
 * Ultima IV - Quest Of The Avatar
 * (c) Copyright 1987 Lord British
 * reverse-coded by Ergonomy Joe in 2012
 */

#ifndef __U4_DOS_H__
#define __U4_DOS_H__

/*u4_dos*/
extern void far * cdecl dalloc(int);
extern cdecl dfree(void far *);
extern cdecl dopen(char *, int);
extern cdecl dlseek(int, unsigned long);
extern cdecl dread(int, void far *, int);
extern cdecl dwrite(int, void far *, int);
extern cdecl dclose(int);

#endif
