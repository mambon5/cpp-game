/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Game.h
 * Author: jordi
 *
 * Created on December 30, 2019, 1:36 PM
 */

#ifndef GAME_H
#define GAME_H

//#pragma once

#include "SDL.h"
#include "SDL_image.h"
#include <iostream>

class Game {
public:
    Game();
    ~Game();
    
    void init(const char* title, int width, int height, bool fullscreen);
    
    void handleEvents();
    void update();
    void render();
    void clean();
    
    bool running() { return isRunning; }
    
    static SDL_Renderer* renderer;
    static SDL_Event event;
private:
    bool isRunning;
    SDL_Window* window;
        
    int window_flags;
    int render_flags;

};

#endif /* GAME_H */

