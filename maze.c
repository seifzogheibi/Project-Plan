#include <stdio.h>

//This test is adapted from an example provided on w3schools.com "How to write structs in C."//

//struct for storing maze data in 2D array
typedef struct Maze{
int storage[100][100]; //Can be changed after maze dimensions are known
} Maze;

//struct to display the player
typedef struct Player{
    int x;
    int y;
} Player;

//Function for reading the maze
void read_maze(char *filename, Maze* maze) {
    //add file reading code
}

//Function for displaying the maze and playsr
void display_maze(const Maze* maze, const Player* player){
    //use loops to display the maze and player
}

//Function to move the player
_Bool move_player(Maze* maze, Player* player, char movement){
    //add player movement code
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

//This test is adapted from chatGPT’s response to the prompt ‘Show me different skeleton codes and explain what key details I need to include in my skeleton code for a game.’