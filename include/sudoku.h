#ifndef SUDOKU_H
#define SUDOKU_H

#include <stdio.h>
#include <stdlib.h>

extern int UNSOLVED;
extern int SIZE_ROWS;
extern int SIZE_COLUMNS;

typedef struct Box
{
    /* data */
} Box;

typedef struct Square
{
    int number;

    int possible[9];
    int solvable;

    Box * box;
    int row;
    int column;    
} Square;

int ** createPuzzle();
void printPuzzle(int ** puzzle);
Square *** setUpPuzzle(int ** puzzle);

#endif