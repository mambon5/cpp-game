/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Game.cpp
 * Author: jordi
 * 
 * Created on December 30, 2019, 1:36 PM
 */

#include "Game.h"
#include "TextureManager.h"
#include "Map.h"
#include "Components.h"
#include "Vector2D.h"
#include "Collision.h"
#include "ColliderComponent.h"

Map* map;
Manager manager;

SDL_Renderer* Game::renderer = nullptr;
SDL_Event Game::event;
auto& player(manager.addEntity());

Game::Game()
{}

Game::~Game()
{}

void Game::init(const char* title, int width, int height, bool fullscreen)
{
    window_flags = 0;
    if( fullscreen )
    {
        window_flags = SDL_WINDOW_FULLSCREEN;
    }
    
    if( SDL_Init(SDL_INIT_EVERYTHING) == 0 )
    {
        window = SDL_CreateWindow(title, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, width, height, window_flags);
        renderer = SDL_CreateRenderer(window, -1, render_flags = SDL_RENDERER_ACCELERATED);
        isRunning = true;
    }
    map = new Map();

    player.addComponent<TransformComponent>();
    player.addComponent<SpriteComponent>("assets/images.png");
    player.addComponent<KeyboardController>();
    //player.addComponent<ColliderComponent>("player");
}

void Game::handleEvents()
{
    SDL_PollEvent(&event);
    switch (event.type)
    {
    case SDL_QUIT:
        isRunning = false;
        break;
    /*case SDL_KEYDOWN:
        switch (event.key.keysym.scancode)
        {
        case SDL_SCANCODE_W:
        case SDL_SCANCODE_UP:
            player.getComponent<TransformComponent>().position.Add(Vector2D(0, -32));
            break;
        case SDL_SCANCODE_A:
        case SDL_SCANCODE_LEFT:
            player.getComponent<TransformComponent>().position.Add(Vector2D(-32, 0));
            break;
        case SDL_SCANCODE_S:
        case SDL_SCANCODE_DOWN:
            player.getComponent<TransformComponent>().position.Add(Vector2D(0, 32));
            break;
        case SDL_SCANCODE_D:
        case SDL_SCANCODE_RIGHT:
            player.getComponent<TransformComponent>().position.Add(Vector2D(32, 0));
            break;
        }*/
    default:
        break;
    }
}

void Game::update()
{
    manager.refresh();
    manager.update();
    
    //if( Collision::AABB(player.getComponent<ColliderComponent>().collider, SDL_Rect()) )
    {
        
    }
}

void Game::render()
{
    SDL_RenderClear(renderer);    
    map->DrawMap();
    manager.draw();    
    SDL_RenderPresent(renderer);
}

void Game::clean()
{
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}