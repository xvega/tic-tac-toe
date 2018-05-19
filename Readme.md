#Tic-Tac-Toe ruby

#Using Rspec to test it


The algorithm for win detection works with 3 methods encapsulated 
in one. 

If we iterate the rows in a matrix and we make unique a row and its size is 1,
 it means that we have a winner. Using the same principle for columns, 
if we transpose a matrix, rows turn into columns and columns 
into rows, that's why we can re-use the method for rows. 
For the diagonal I use a ruby library called matrix, but later on
I use the same principle of making unique the resulting vector. 