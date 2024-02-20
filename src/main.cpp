#include "game.hpp"

sint32 main()
{
    engine* Engine;
    engine::actor Player;
    engine::colorbox PlayerColor;

    Engine = new engine(NULL, NULL, 1920, 1080, 1000 / 60);
    Player = Engine->Actors.New(NULL, 0, 0, 0, 50, 50, 1);
    PlayerColor = Player->Colorboxes.New();
    
    while (Engine->Update())
    {
        if (Engine->Keys[KEY_LEFT] && !Engine->Keys[KEY_RIGHT])
        {
            Player->SetX(Player->GetX() - 0.5 * Engine->Timing.GetDeltaTime());
        }
        else if (Engine->Keys[KEY_RIGHT] && !Engine->Keys[KEY_LEFT])
        {
            Player->SetX(Player->GetX() + 0.5 * Engine->Timing.GetDeltaTime());
        }

        if (Engine->Keys[KEY_UP] && !Engine->Keys[KEY_DOWN])
        {
            Player->SetY(Player->GetY() + 0.5 * Engine->Timing.GetDeltaTime());
        }
        else if (Engine->Keys[KEY_DOWN] && !Engine->Keys[KEY_UP])
        {
            Player->SetY(Player->GetY() - 0.5 * Engine->Timing.GetDeltaTime());
        }
    }

    delete Engine;

    return 0;
}