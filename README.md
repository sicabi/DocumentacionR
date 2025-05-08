# rDoc

## Traducción de la documentación de los paquetes base de R al español

## Breve explicación del proyecto

La traducción al español de la documentación de los paquetes base de **R** es un proyecto que en algún momento deberá ser emprendida por la comunidad de usuarias y usuarios.

Mi idea consiste traducir la documentación original de **R**, del inglés al español, en su versión más actual (4.X.X).

En mi opinión, la traducción propuesta deberá ser una versión extendida de las páginas de ayuda originales y tendrá como objetivo ampliar la información ofrecida en la versión inglesa.

Lo anterior es de suyo necesario no solo por la disponibilidad de traducciones automáticas muy precisas, facilitadas por la inteligencia artificial, sino porque la versión inglesa de la documentación deja mucho que desear, aquí algunas críticas informadas:

> Este es uno de esos casos, en mi opinión, donde la documentación de R te lleva a un paisaje plano, en medio de la nada, en medio de una densa niebla. -- Ted Harding (ayudando a un usuario confundido sobre el comportamiento de coincidencia parcial de R) R-help (noviembre de 2010)

> Si no está seguro de la prioridad relativa de dos operadores, use paréntesis. 1:(nr-1) funcionaría independientemente de si : o - tuvieran mayor prioridad. O, en casos extremos, consulte la documentación. -- Duncan Murdoch R-help (agosto de 2005)

> Si no quieres archivos de ayuda informativos, no cuesta mucho crear archivos que no lo sean. -- Duncan Murdoch (en respuesta a una pregunta sobre cómo instalar un paquete sin editar previamente los archivos .Rd) R-help (mayo de 2010)

> Necesitas familiarizarte con la lectura de la ayuda en línea. La información necesaria está en ?dotchart, solo que está expresada de forma concisa y oscura. Se requiere cierto optimismo. Debes ***creer*** que la información está ahí; luego, pregúntate: "¿Qué podrían querer decir con lo que han escrito que me diga lo que necesito saber?". -- Rolf Turner (sobre la lectura de las páginas de ayuda) R-help (junio de 2013)

> Tony Plate: Es prerrogativa de los miembros de R-core decidir si dedican su tiempo a mejorar la documentación, a mejorar la funcionalidad (o simplemente a vivir). Patrick Burns: Creía que habíamos acordado que a los miembros de R-core no se les permite tener vidas. -- Tony Plate y Patrick Burns (en un hilo sobre cómo mejorar la documentación de las funciones de R) R-devel (noviembre de 2004)

> Tom Backer Johnsen: Acabo de empezar a mirar R y cada vez me irrito más conmigo mismo por no haberlo hecho antes. Sin embargo, una de las cosas que no he encontrado en la documentación es alguna forma de preparar la salida de R para un formato conveniente en algo como MS Word.
>
> Barry Rowlingson: Bueno, hagas lo que hagas, no empieces a mirar LaTeX, porque eso te irritará aún más por no haberlo hecho antes. -- Tom Backer Johnsen y Barry Rowlingson R-help (febrero de 2006)

> Si te contáramos todos los secretos de R, tendríamos que matarte. -- Duncan Murdoch (respondiendo a una solicitud de documentación demasiado detallada) R-help (octubre de 2011)

> R es un programa complejo. Si no sabes cómo encontrar la documentación, dudo que puedas usarlo. -- David Kirby (en respuesta a una pregunta vaga sobre dónde encontrar documentación para R) R-help (febrero de 2010)

> \[El esfuerzo de aprender a usar R\] es el precio que hay que pagar, al igual que los dólares o euros de un paquete comercial. Por ese precio, he aprendido muchísimo, y no solo sobre R. Y lo recordaré la próxima vez que tenga que encontrar una solución contundente para un gran problema presentado por un pequeño cliente de una organización benéfica con un presupuesto invisible. Es un paquete enorme e impresionante, más fácil de percibir porque su potencia no se esconde bajo una apariencia superficial. -- Felix Grant (en un artículo sobre software estadístico gratuito) Scientific Computing World (noviembre de 2004)

> Es interesante que el Instituto SAS considere que, al construir motores de aeronaves, se debe confiar en software no revisado por pares con implementaciones ocultas de métodos analíticos que otros no pueden reproducir. -- Frank Harrell (en respuesta a la declaración del director de marketing de productos tecnológicos de SAS: «Tenemos clientes que construyen motores para aviones. Me alegra que no usen software gratuito cuando me subo a un avión».) R-help (enero de 2009)

## Explicación del contenido del repositorio

En la carpeta `src/` se encuentran las carpetas con los proyectos de traducción de la documentación de los paquetes base de R: `{base}`, `{graphics}`, `{methods}`, `{stats}` y `{utils}`. El mayor avance, aunque mínimo, se ha realizado en la traducción manual de algunas páginas de ayuda del paquete `{base}`.

Depués de probar con varios formatos de texto (`.doc`,`.txt`,`.tex`,`.odt`), he encontrado que la mejor manera de trabajar con un archivo de texto que sirva de código fuente para el resto de formatos es Quarto. Este formato permite publicar en `.pdf`,`.html`, `.doc`.

Dada la posibilidad de editar el archivo `yaml`, Quarto ofrece la capacidad de aplicar cambios generales de formato a todos los archivos `.qmd`. Los principales archivos para mostrar son `double.qmd` e `integer.qmd`, y sus respectivos resultados en PDF o HTML que se pueden encontrar en las carpetas `output/`.

El resto de traducciones realizadas hasta el momento (mayo de 2025) son archivos en formato de texto de documento abierto (`.odt`). La idea es transferir estas traducciones a Quarto y terminar el proyecto en este formato.

En algún momento, se culminará la traducción de cada página de ayuda de los paquetes base de *R* y estarán listos para para ser compartidas con la comunidad de usuarios, ya sea en una página web o en un paquete de *R*, o en algún otro tipo de proyecto colaborativo (una wiki?).

## Sugerencias de estilo

• Realizar una traducción fiel, pero no literal.

• El objetivo es que la página de ayuda en español sea más clara y útil que la original en inglés, pero totalmente equivalente a esta. Hay casos en los que la ayuda de R es MUY críptica, está evidentemente incompleta o es indudablemente confusa en el texto original en inglés. En estas situaciones, se sugiere considerar cómo mejorar la redacción del texto describiendo más ampliamente la acción o explicación omitida en inglés. Por ejemplo, en vez de dejar una traducción como “Si cuenta con una fecha-hora numérica como el número de segundos desde una época, por favor vea los ejemplos.”, describa lo que hace falta→ “Si cuenta con una fecha-hora numérica como el número de segundos desde una época, señale una fecha de origen, en un formato de fecha reconocible, a partir de la cual contar el tiempo. Para saber cómo, por favor vea los ejemplos.”.

• Distinguir las comillas de texto y de código. Tener cuidado con las comillas curvas “”, asegurarse de usar las comillas rectas "" para describir clases y código.

• Usar una fuente libre. Utilizar la fuente Liberation Mono para términos, funciones, conceptos o números que puedan usarse como código dentro de R y la fuente Liberation Sans para el resto del texto explicativo. • Rellenar las elipsis o los términos implicitos que acompañan a los sustantivos. Por ejemplo, en la frase Century (00–99): the integer part of the year divided by 100. Traducir Century → Siglo → El número del siglo: la parte entera del año dividida entre 100.

• Análogamente, desdoblar el nombre de los objetos: Logical NAs → Los valores no disponibles NA en vectores; integer → un valor entero/el valor entero/valor entero;

• También, rellenar el verbo, acción o conjunción faltante cuando en inglés se usen los dos puntos (:). Por ejemplo, en la frase Century (00–99): the integer part of the year divided by 100, se borrarían los dos puntos y se insertaría la frase calculado a partir de para que la traducción final quedara como → El número de siglo (00-99), calculado a partir de la parte entera del año dividida entre 100.

• Usar el futuro condicional en español cuando se use el presente condicional en inglés. Por ejemplo, en la frase "Logical NAs can be converted to either of the classes, but no other logical vectors can be quedaría como" → Los valores no disponibles NA almacenados en vectores lógicos podrán convertirse a cualquiera de las clases, pero ningún otro tipo de valor lógico podrá serlo.
