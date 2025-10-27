#include <open.mp>
#include <streamer>
#include <sscanf2>
#include <zcmd>

main() {}

public OnGameModeInit()
{
    print("Game Mode Initialized.");
    AddPlayerClass(0, 2495.3547, -1688.2319, 13.6774, 351.1646, WEAPON_M4, 500, WEAPON_KNIFE, 1, WEAPON_COLT45, 100);
    AddStaticVehicle(522, 2493.7583, -1683.6482, 12.9099, 270.8069, -1, -1);
    return 1;
}

public OnGameModeExit()
{
    print("Game Mode Exiting.");
    return 1;
}