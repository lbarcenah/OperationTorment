# Operación Tormenta

Juego de acción run & gun 2D (estilo arcade de los 90) hecho en un único `index.html`.
Un nivel completo con emboscada y jefe final (TITÁN-9).

## Jugar con Docker

```bash
docker compose up -d --build
```

Abre **http://localhost:8080** en el navegador.

Para que los compañeros jueguen desde su equipo: `http://<IP-de-tu-máquina>:8080`.

Parar el contenedor:

```bash
docker compose down
```

### Sin docker compose

```bash
docker build -t operacion-tormenta .
docker run -d -p 8080:80 --name operacion-tormenta operacion-tormenta
```

### Compartir la imagen sin registro

```bash
docker save operacion-tormenta:latest -o operacion-tormenta.tar
# el compañero:
docker load -i operacion-tormenta.tar
docker run -d -p 8080:80 operacion-tormenta:latest
```

## Jugar sin Docker

Abre `index.html` directamente en el navegador.

## Controles

| Acción | Teclado | Mando |
|---|---|---|
| Moverse | ← → / A D | Stick / cruceta |
| Apuntar arriba | ↑ / W | Arriba |
| Agacharse (en el aire: disparar abajo) | ↓ / S | Abajo |
| Saltar | Z / K / Espacio | A |
| Disparar | X / J | X / RT |
| Granada | C / L | B / Y |
| Pausa | P / Esc | Start |
| Sonido on/off | M | — |

Atajo: añade `#boss` a la URL para empezar directamente en el jefe final.

> La fuente pixel se carga desde Google Fonts; sin internet el juego funciona igual con una fuente monoespaciada.
