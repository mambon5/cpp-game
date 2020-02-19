/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "GameObject.h"
#include "TextureManager.h"

GameObject::GameObject(const char* texturesheet, int x, int y)
{
    objTexture = TextureManager::LoadTexture(texturesheet);
    
    xpos = x;
    ypos = y;
}

void GameObject::Update()
{    
    xpos++;
    ypos++;
    
    srcRect.h = 227; 
    srcRect.w = 222;
    srcRect.x = 0;
    srcRect.y = 0;
    
    destRect.h = 32;//srcRect.h;
    destRect.w = 32;//srcRect.w;
    destRect.x = xpos;
    destRect.y = ypos;
}

void GameObject::Render()
{
    SDL_RenderCopy(Game::renderer, objTexture, &srcRect, &destRect);
}