/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GameObject.h
 * Author: jordi
 *
 * Created on December 31, 2019, 1:05 PM
 */

#ifndef GAMEOBJECT_H
#define GAMEOBJECT_H

#pragma once

#include "Game.h"

class GameObject {
    
public:
    GameObject(const char* texturesheet, int x, int y);
    ~GameObject();
    
    void Update();
    void Render();
    
private:
    int xpos;
    int ypos;
    
    SDL_Texture* objTexture;
    SDL_Rect srcRect, destRect;
    
};


#endif /* GAMEOBJECT_H */

