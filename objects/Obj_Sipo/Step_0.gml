//Movimiento de "Sipo"//

//chequeo de teclado (adelante)
if keyboard_check(ord("W"))
//una vez chequeado se da movimiento por aceleración (como el pinchi asteroid):
////("angulo de la imagen", "fuerza aplicada")
{
        motion_add(image_angle, 0.06);
}

//ahora se agregara rotacion al objeto//

//chequeo de teclado (izquierda)
if keyboard_check(ord("A"))
//una vez chequeado se da movimiento a la izquierda
////"angulo de la imagen" suma igual a + "valor asignado"
{
        image_angle += 2.5;
}
//chequeo de teclado (derecha)
if keyboard_check(ord("D"))
//una vez chequeado se da movimiento a la derecha
////"angulo de la imagen" suma igual a - "valor asignado"
{
        image_angle -= 2.5;
}

//ahora se le dara margen dentro de la habitacion//

//"margen de movimiento" ("hor","ver","margen")
move_wrap(true, true, 25)

//AHORA TRATAREMOS DE METER FRICCION EN EL MOVIMIENTO//

//agregamos la variable de direccion actual del movimiento
//"declarar variable" = "funcion punto de direccion" (x1,y1,x2,y2)
var dir = point_direction(0, 0, hspeed, vspeed) 

//agregamos la variable de la magnitud de dicho movimiento
//"declarar variable" = "funcion punto de distancia" (x1,y1,x2,y2)
var vel = point_distance(0, 0, hspeed, vspeed)


// Aplicar fricción
vel = max(vel - friction, 0);

// Limitar velocidad máxima
vel = min(vel, velocidad_max);

// Actualizar movimiento
hspeed = lengthdir_x(vel, dir);
vspeed = lengthdir_y(vel, dir);


//AHORA SI, A DISPARAR//

//si el teclado es presionado
if keyboard_check_pressed(vk_space)
{
	//sonido disparo
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8, 1.2))
	
		//se creara un objeto
		//"se crea una instancia del objeto"
        instance_create_layer(x, y, "Instances", Obj_Kuglo)
		
		//si tiene poder 1
		if (powerup == 1)
		{
			/*define variable de bala con la estancia creada y crear la bala
			
			se crea una segunda bala si tiene el power up un poco mas arriba
			de la primera att:janh  
			*/
			
			var _bullet1 = instance_create_layer(x, y, "Instances", Obj_Kuglo);
			_bullet1.direction += 10;
			
			/*define variable de bala con la estancia creada y crear la bala
			
			se crea una tercera bala si tiene el power up un poco mas abajo
			de la primera att:janh  
			*/
			var _bullet2 = instance_create_layer(x, y, "Instances", Obj_Kuglo);
			_bullet2.direction -= 10;
		}
}