//si esta madre sale de la habitacion, se destruye
if (Obj_Sipo.powerup != 1)

{
Obj_Juego.combo = 0;
Obj_Juego.multiplier = 1;
}

instance_destroy();