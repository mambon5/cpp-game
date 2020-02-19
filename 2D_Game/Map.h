/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Map.h
 * Author: jordi
 *
 * Created on December 31, 2019, 6:55 PM
 */

#ifndef MAP_H
#define MAP_H

#pragma once

#include "Game.h"

class Map {
public:
    
    Map();
    ~Map();
    
    void LoadMap(int arr[20][25]);
    void DrawMap();
    
private:
    
    SDL_Rect src, dest;
    
    SDL_Texture* water;
    SDL_Texture* grass;
    SDL_Texture* dirt;
    
    int map[20][25];
    
};


#endif /* MAP_H */

