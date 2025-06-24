//Especificar lugar donde se dibuje
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Dibujar texto
draw_text(x, y, "Movimiento:\nW = Adelante\nA = Izquierda\nD = Derecha\nDisparo:\nEspacio");

//Volver a definir el lugar en su predeterminado para no joder otros valores
draw_set_halign(fa_left);
draw_set_valign(fa_top);
