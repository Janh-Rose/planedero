//evento de colision de nave//

//si tienes poder fantasma, no se activa el evento
if (powerup = 2) exit;

//sonido perder
audio_play_sound(snd_lose, 0, false)
//creacion de efecto
effect_create_above(ef_firework, x, y, 1, c_white);

//destruccion
instance_destroy();

//alarma para reinicio
Obj_Juego.alarm[0] = 120;

