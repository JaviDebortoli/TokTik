# TokTik

---

## 🎵 TokTik

TokTik es una aplicación móvil desarrollada en Flutter, inspirada en la experiencia principal de TikTok: un feed vertical de videos en pantalla completa con interacción tipo “reels”.

Este proyecto fue creado con fines educativos y prácticos, enfocándose principalmente en dispositivos Android.

---

## 📱 Descripción del Proyecto

TokTik replica el comportamiento esencial de TikTok:

- Feed vertical infinito
- Reproducción automática de videos al hacer scroll
- Interfaz minimalista centrada en contenido multimedia
- Botones de interacción animados (likes, vistas, pista de audio)

El objetivo del proyecto es demostrar una arquitectura limpia en Flutter, separando correctamente:

- Dominio
- Infraestructura
- Presentación
- Providers (estado)

---

## 📦 Dependencias Utilizadas

Estas son las dependencias utilizadas:

| Paquete           | Uso                          |
| ----------------- | ---------------------------- |
| `video_player`    | Reproducción de videos       |
| `provider`        | Gestor de estado             |
| `animate_do`      | Animaciones para UI          |
| `intl`            | Formateo de números y fechas |

---

## 🎞️ Videos Necesarios (IMPORTANTE)

Este proyecto requiere archivos de video locales para funcionar correctamente.

Debes descargar los videos desde el siguiente enlace:

https://att-c.udemycdn.com/2023-02-10_20-55-42-97ef5504fb516220c2cf7207f9ac35e8/original.zip?response-content-disposition=attachment%3B+filename%3Dvideos.zip&Expires=1770429784&Signature=SQQfjh7XR3JfNqN98AyPQxhzRj7OlvYc1ywtBWLsmI9dTlHDC19Xa9um4UfCsQfbp9jvaY6Wgc6hTDBog7UJXlTn23bmFwEdHGfzWxvNc0sj8koFKbFVPmpqgg0ZWllYQgouVSa4gVzf2leQwI5Sc8xl6uOGejtHgRTIvTcijew8ZWBZQUaN16~Uc3QGSDbPa5sTCDoUUvEHgPVkR9kB8-1XoxwXa6sKYzjN6lVYnTQGFs7Uy4A01Nal4cRYojZyzrT0-VZLsaYic6Mu8cHNv-ZEuTaT--nOvtltddNWVbuAaXTUC~yFcuBT-s6dOklhHRyZpko4BMerPBCbdIKl1g__&Key-Pair-Id=K3MG148K9RIRF4.

Una vez descargados, descomprime el contenido y coloca los videos en:

*TokTik/assets/videos/*

Y asegúrate de que estén registrados en pubspec.yaml.

---

## ▶️ Instalación y Ejecución

1. Clonar repositorio
```
git clone https://github.com/JaviDebortoli/TokTik.git
cd TokTik
```

2. Instalar dependencias
```
flutter pub get
```

3. Descargar videos y ubicarlos en /assets/videos/

4. Ejecutar en Android
```
flutter run
```

---

## 👨‍💻 Autor

Desarrollado por Javier M. Debórtoli
Repositorio: TokTik
