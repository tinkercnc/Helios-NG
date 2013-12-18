/*
 * Yukky program to embed b422dvr.b2u in the device driver
 * as a group of strings with a maximum size of 16 bytes.
 * The last string is mod 16 of b422dvr.b2u
 *
 * Alex Schuilenburg, Perihelion Distributed Software Limited.
 *
 * $Id: gensquirt.c,v 1.2 1994/07/21 12:23:43 al Exp al $
 * $Log: gensquirt.c,v $
 * Revision 1.2  1994/07/21  12:23:43  al
 * Initial Revision
 *
 * Revision 1.1  1994/07/21  12:07:25  al
 * Initial revision
 *
 */
#include <stdio.h>
#include <stdlib.h>

#define	MAXSTRSIZE	0x10

void main(int argc, char **argv)
{
	char 	c;
	int 	i, j, sz, nstr;
	int 	total = 0;
	FILE	*inf, *outf;

	if (argc != 3) {
		fprintf(stderr, "usage: %s <inputfile> <outputfile>\n", argv[0]);
		exit(1);
	}

	if ((inf = fopen(argv[1],"rb")) == NULL) {
		fprintf(stderr, "%s Could not open input file %s for reading\n", argv[0], argv[1]);
		exit(1);
	}

	if ((outf = fopen(argv[2],"w")) == NULL) {
		fprintf(stderr, "%s Could not open output file %s for writing\n", argv[0], argv[2]);
		exit(1);
	}


	/* Generate the headers */
	fprintf(outf, "/*\n");
	fprintf(outf, " * DO NOT MODIFY:\n");
	fprintf(outf, " * THIS FILE WAS AUTO-GENERATED BY %s from %s\n", argv[0], argv[1]);
	fprintf(outf, " */\n\n");
	fprintf(outf, "WORD squirtdata(WORD link)\n");
	fprintf(outf, "/* \n");
	fprintf(outf, " *\t'squirt' the B422 TRAM driver code down \n");
	fprintf(outf, " *\tthe specified link. This will then execute\n");
	fprintf(outf, " *\tand expect us to be an i-server capable of\n");
	fprintf(outf, " *\tgiving it's board size.\n");
	fprintf(outf, " */\n");
	fprintf(outf, "{\n");

	fprintf(outf, "\tBYTE\t\ts[10];\n");
	fprintf(outf, "\tWORD\t\tn;\n");
	fprintf(outf, "\tINT16\t\ti16;\n");

	/* Get the size of the input file */
	fseek(inf, 0, SEEK_END);			/* Move to end */
	sz = ftell(inf);				/* Where are we ? */
	fseek(inf, 0, SEEK_SET);			/* Back to start */

	/* How many strings are required ? */
	nstr = sz / 16;
	if (sz % 16) nstr++;				/* The remainder */

	/* Generate the variable initialisation */
	fprintf(outf, "\tWORD\t\tsize = %d;\n", sz);
	fprintf(outf, "\tWORD\t\tnstr = %d;\n", nstr);
	fprintf(outf, "\tchar *\t\tdata[%d];\n", nstr);
	fprintf(outf, "\n");
	fprintf(outf, "\t/* Initialise the strings */\n");

	/* Initialise the completed strings */
	for (i=0; i<(nstr-1); i++) {
		fprintf(outf, "\tdata[%d] = \t\"", i);

		for (j=0; j<MAXSTRSIZE; j++) {
			c = fgetc(inf);

			if (c < 0x10) {
				fprintf(outf, "\\x0%x",c);
			} else {
				fprintf(outf, "\\x%x",c);
			}
		}

		sz -= MAXSTRSIZE;

		fprintf(outf,"\";\n");
	}

	/* Intialise the last string */
	fprintf(outf, "\tdata[%d] = \t\"",i);
	while (sz) {
		c = fgetc(inf);

		if (c < 0x10) {
			fprintf(outf, "\\x0%x",c);
		} else {
			fprintf(outf, "\\x%x",c);
		}

		sz--;
	}
	fprintf(outf,"\";\n");
	fprintf(outf, "\n");

	/* Generate the code to send the data */
	fprintf(outf, "\t/* Send the completed data */\n");
	fprintf(outf, "\tfor (n=0; n<(nstr-1); n++) {\n");
	fprintf(outf, "\t\tLinkOut(%d, link, data[n], LINKTIMEOUT);\n", MAXSTRSIZE);
	fprintf(outf, "\t\tsize -= %d;\n", MAXSTRSIZE);
	fprintf(outf, "\t}\n");
	fprintf(outf, "\n");
	fprintf(outf, "\t/* Send the last string */\n");
	fprintf(outf, "\tLinkOut(size, link, data[n], LINKTIMEOUT);\n");
	fprintf(outf, "\n");

	/* Create the final bits of code */
	fprintf(outf, "\t/* It thinks we're an i-server, so fool it! */\n");
	fprintf(outf, "\tLinkIn(sizeof(i16), link, &i16, LINKTIMEOUT);\n");
	fprintf(outf, "\tLinkIn(i16, link, data, LINKTIMEOUT);\n");
	fprintf(outf, "\n");
	fprintf(outf, "\t/* Magic! */\n");
	fprintf(outf, "\ts[0] = 9; s[1] = 0; s[2] = 0; s[3] = 6;\ts[4] = 0;\n");
	fprintf(outf, "\ts[5] = '#'; s[6] = '1'; s[7] = s[8] = s[9] = s[10] = '0';\n");
	fprintf(outf, "\n");
	fprintf(outf, "\t/* make the B422 a happy TRAM */\n");
	fprintf(outf, "\tLinkOut(11, link, s, LINKTIMEOUT);\n");
	fprintf(outf, "\n");
	fprintf(outf, "\treturn(TRUE);\n");
	fprintf(outf, "\n");
	fprintf(outf, "}\n");

	fclose(inf);
	fclose(outf);
}
