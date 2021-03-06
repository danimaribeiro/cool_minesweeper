#ifndef MINESWEEPER_H
#define MINESWEEPER_H
#define MAX 100

#include<clickablelabel.h>

class Minesweeper
{
public:
    Minesweeper();
    int matrix[MAX][MAX], width, height;
    ClickableLabel* labels[MAX][MAX];
    void generate_field(int width,int height, int numberbomb);
    void print_matrix(int width, int height);

private:
    void increment_matrix(int width, int height, int x, int y);
};

#endif // MINESWEEPER_H
