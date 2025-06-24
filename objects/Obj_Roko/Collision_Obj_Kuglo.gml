//al colisionar, provocar explosion y eliminacion de objeto

//sonido de destruccion
audio_play_sound(snd_rockdestroy, 0, false, 1, 0, random_range(0.4, 1.2))
//destruir instancia
instance_destroy(other);
//crear efecto ("efecto", x, y, "magnitud", "Color")
effect_create_above(ef_explosion, x, y, 300, c_white);

//contador de poder y aparicion
if (Obj_Juego.powerup_time < 0)
{
	var _obj = choose(Obj_Multi, Obj_Fantasma);
	instance_create_layer(x, y, "Instances", _obj);
	Obj_Juego.powerup_time = 20;
}

//al impactar una bala, cambia de direccion
direction = random(360);

// Aumentar combo
Obj_Juego.combo += 1;
		
// Aumentar el multiplicador cada X aciertos
	if (Obj_Juego.combo mod Obj_Juego.combo_max == 0) 
		
	{
		Obj_Juego.multiplier += 1;
	}

//aqui define que si el sprite es la roca grande va a:
if sprite_index == spr_rock_big
//pasar a la roca menor
{
        sprite_index = spr_rock_small;
        instance_copy(true);
}
//en cambio, si hay menos de 12 objetos de roca se regenera 
// Si hay menos de 12 instancias de Obj_Roko...
if (instance_number(Obj_Roko) < 12) {
    // --- Reposicionar ESTA instancia fuera del margen ---
    var _borde = irandom(3); // 0: arriba, 1: derecha, 2: abajo, 3: izquierda
    
    switch (_borde) {
        case 0: // Arriba
            x = random_range(-margen, room_width + margen);
            y = -margen;
            break;
        case 1: // Derecha
            x = room_width + margen;
            y = random_range(-margen, room_height + margen);
            break;
        case 2: // Abajo
            x = random_range(-margen, room_width + margen);
            y = room_height + margen;
            break;
        case 3: // Izquierda
            x = -margen;
            y = random_range(-margen, room_height + margen);
            break;
    }
    
    // --- Cambiar el sprite de ESTA instancia ---
    sprite_index = spr_rock_big; // Usa tus sprites
}
else //pero si no, se destruye
{
        instance_destroy();
		
		
}

score += 10 * Obj_Juego.multiplier;	


