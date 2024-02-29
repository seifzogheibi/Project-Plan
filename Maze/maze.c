#include <stdio.h>

//This code is adapted from an example provided on w3schools.com "How to write structs in C."//

//struct for storing maze data in 2D array
typedef struct Maze{
char storage[100][100]; //Can be changed after maze dimensions are known
} Maze;

//struct to display the player
typedef struct Player{
    int x;
    int y;
} Player;

//Function for reading the maze
void read_maze(char *filename, Maze* maze) {
    //open the file
    //check that the file exists
    //check that the file has a valid maze i.e good dimensions and all tests pass
    //implement a for loop to check if the rows and columns are within the givin parameters
        //go through the first row and check that there exists at least 5 characters (or what is required)
        //use an incrementer (counter) to move to the next row if the previous one is valid
        //if the counter stops at a value less than the total number of rows, then the maze will fail the dimensions test
        //apply the same steps for the columns
}

//Function for displaying the maze and playsr
void display_maze(const Maze* maze, const Player* player){
    //use loops to display the maze and player
}

//Function to move the player
_Bool move_player(Maze* maze, Player* player, char movement){
    //check user input is being read
    //add a feature that gives the player a message if an invalid key is pressed
    //update players position in the maze based on the movement
    //return true if the movement was successful, false if not
}

int main(int argc, char **argv){

//Call the reading function

//Call the display function


//---Game---//

//Add user input reader to allow movement

//Add code that updates the maze as the player move i.e player position is stored

//Insert some type of loop for the user to be able to move continuously 
    //while loop since we dont know when the user would reach the exit

//Print message for when player reaches the exit

return 0;
}

//This code is adapted from chatGPT’s response to the prompt ‘Show me different skeleton codes and explain what key details I need to include in my skeleton code for a game.’