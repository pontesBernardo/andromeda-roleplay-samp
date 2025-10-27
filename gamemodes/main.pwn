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

CMD:cv(playerid, params[])
{
    new car, carID, color[2], Float:pos[4];

    if (sscanf(params, "ddd", carID, color[0], color[1])) 
        SendClientMessage(playerid, 0xFF0000AA, "Uso: /cv <carID> <color1> <color2>");
    if (!GetPlayerPosition(playerid, pos)) 
        SendClientMessage(playerid, 0xFF0000AA, "Erro ao obter a posicao do jogador.");

    car = CreateVehicle(carID, pos[0], pos[1], pos[2], pos[3], color[0], color[1], -1, false);
    PutPlayerInVehicle(playerid, car, 0);
    SendClientMessage(playerid, -1, "Veiculo criado com sucesso.");
    return 1;
}

stock GetPlayerPosition(playerid, Float:pos[4])
{
    GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    GetPlayerFacingAngle(playerid, pos[3]);
    return 1;
}