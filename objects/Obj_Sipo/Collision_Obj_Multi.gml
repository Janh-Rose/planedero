//una vez que obtiene el multi

//definimos variable de poder
powerup = 1;

/*
efinimos alarma

voy a hacer una explicacion para bobos aca
se hace un calculo el cual por mis guevos voy a decirlo asi

10 segundos si estás a 60 FPS.


alarm[1] = segundos que quieres usar * los fps del juego
como es un juego de 60 fps quedaria
alarma[1] = 10 segundos * 60 fps

att: janh (no podias explicarlo asi maldito polo medio)
*/


alarm[1] = 10 * 60;

//recolorear el sprite
image_blend = c_yellow;

//transparencia
image_alpha = 1

//destruye el objeto
instance_destroy(other);