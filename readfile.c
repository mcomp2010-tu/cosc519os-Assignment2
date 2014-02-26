#include <stdio.h>

int main()
{
    char *inname = "file.txt";
    char *outname = "fileout.txt";

    FILE *infile;
    FILE *outfile;

    char line_buffer[BUFSIZ]; /* BUFSIZ is defined if you include stdio.h */
    char line_number;

    infile = fopen(inname, "r");
    outfile = fopen(outname,"w"); 

    if (!infile) {
        printf("Couldn't open file %s for reading.\n", inname);
        return 0;
    }
    printf("Opened file %s for reading.\n", inname);

    line_number = 0;
    while (fgets(line_buffer, sizeof(line_buffer), infile)) {
        ++line_number;
        /* note that the newline is in the buffer */
        printf("%4d: %s", line_number, line_buffer);
        fprintf(outfile,"%4d: %s",line_number, line_buffer);
    }
    printf("\nTotal number of lines = %d\n", line_number);
    fprintf(outfile,"\nTotal number of lines = %d\n", line_number);

    fclose(infile);
    fclose(outfile);

    return 0;
}
