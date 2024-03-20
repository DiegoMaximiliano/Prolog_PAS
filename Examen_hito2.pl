% Definición de relaciones
esCategoria(catElectrodomestico).
esCategoria(catEntretenimiento).
esCategoria(catComputadoras).

esElectrodomestico(X) :- esCategoria(catElectrodomestico), esProducto(X).
esEntretenimiento(X) :- esCategoria(catEntretenimiento), esProducto(X).
esComputadoras(X) :- esCategoria(catComputadoras), esProducto(X).

esBatidora(batidoraLG510).
esBatidora(batidoraSamsungB125).
esBatidora(batidoraMarcaPatito).

esLavadora(lavadoraLGBatimix).
esLavadora(lavadoraSamsungL200).

esParlante(parlanteBose).
esParlante(parlanteLG).

esConsola(consolaXbox).
esConsola(consolaPlaystation).

esLaptop(laptopDell).
esLaptop(laptopHP).
esLaptop(laptopMarcaPatito).

esEscritorio(escritorioDell).
esEscritorio(escritorioHP).
esEscritorio(escritorioMarcaPatito).

% Identificamos los productos
esProducto(X) :- esElectrodomestico(X); esEntretenimiento(X); esComputadoras(X).

% Identificamos los clientes
esCliente(juan).
esCliente(maria).
esCliente(pepe).

% Identificamos los productos de cada color
esNegro(X) :- esProducto(X), productoColor(X, negro).
esBlanco(X) :- esProducto(X), productoColor(X, blanco).
esRojo(X) :- esProducto(X), productoColor(X, rojo).
esVerde(X) :- esProducto(X), productoColor(X, verde).
esPlateado(X) :- esProducto(X), productoColor(X, plateado).

% Identificamos los productos que son buenos, malos, caros y baratos
esBueno(X) :- esProducto(X), productoCalidad(X, bueno).
esMalo(X) :- esProducto(X), productoCalidad(X, malo).
esCaro(X) :- esProducto(X), productoPrecio(X, caro).
esBarato(X) :- esProducto(X), productoPrecio(X, barato).

% Recomendaciones para los clientes
recomendar(juan, X) :- esElectrodomestico(X), esNegro(X), esBueno(X). % Juan prefiere electrodomésticos negros y de buena calidad
recomendar(juan, Y) :- esEntretenimiento(Y), esRojo(Y), esCaro(Y). % Juan prefiere entretenimiento rojo y caro

recomendar(maria, X) :- esEntretenimiento(X), esVerde(X), esBarato(X). % María prefiere entretenimiento verde y barato
recomendar(maria, Y) :- esComputadoras(Y), esBueno(Y). % María prefiere computadoras de buena calidad

recomendar(pepe, X) :- esElectrodomestico(X), esPlateado(X), esMalo(X). % Pepe prefiere electrodomésticos plateados y de mala calidad
recomendar(pepe, Y) :- esComputadoras(Y), esBlanco(Y), esCaro(Y). % Pepe prefiere computadoras blancas y caras
