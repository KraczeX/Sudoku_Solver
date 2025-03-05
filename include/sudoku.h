#ifndef SUDOKU_H
#define SUDOKU_H

#include <stdio.h>
#include <stdlib.h>

extern char POSSIBLE;

typedef struct Box
{
    /* data */
} Box;

typedef struct Square
{
    int number;
    char code;

    Box * box;
    int row;
    int column;    
} Square;

int ** createPuzzle();
void printPuzzle(int ** puzzle);
Square *** setUpPuzzle(int ** puzzle);

#endif