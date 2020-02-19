/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: jordi
 *
 * Created on December 30, 2019, 1:31 PM
 */

#include "Game.h"

Game* game = nullptr;

int main(int argc, char** argv) {
    
    const int FPS = 60;
    const int frameDelay = 1000 / FPS;
    
    Uint32 frameStart, frameTime;
    
    game = new Game();    
    game->init("GAME", 800, 640, false);
    
    while( game->running() )
    {
        frameStart = SDL_GetTicks();
        
        game->handleEvents();
        game->update();
        game->render();
        
        frameTime = SDL_GetTicks() - frameStart;
        
        if( frameDelay > frameTime )
        {
            SDL_Delay(frameDelay - frameTime);
        }
    }
    
    game->clean();

    return 0;
}

