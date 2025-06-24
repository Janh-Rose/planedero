// Evento iniherente del padre
event_inherited();

//comprobar si ya existe dicho objeto
if (instance_exists(Obj_Controles))
{
	//de ser asi, destruir
		instance_destroy(Obj_Controles);
}
else
{
	//si no, crea objeto
		instance_create_layer(room_width / 2, room_height - 200, "Instances", Obj_Controles);
}