//dibujar tiempo powerup

//dibuja a si mismo
draw_self();

//si la alarma es mayor que 0
if (alarm[1] > 0)
{
	//editor de texto para que se mueva de forma dinamica
	draw_set_halign(fa_center);
	//contador
	var _time = round(alarm[1] / 60);
	//dibujar contador
	draw_text(x, y - 60, _time);
	draw_set_halign(fa_left)
}