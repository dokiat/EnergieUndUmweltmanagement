---
name: responsive-html
description: Passt eine bestehende HTML-Datei responsiv an, ohne Inhalte oder Funktionalität zu verändern.
agent: agent
---

Analysiere die aktuell bearbeitete bestehende HTML-Datei und passe ausschließlich das Layout responsiv an.

Verändere weder Inhalte noch JavaScript-Funktionalität.

Die Darstellung soll für folgende Bildschirmgrößen optimiert werden:

- Desktop
- Notebook
- Tablet im Querformat
- Tablet im Hochformat
- Smartphone

Bestehende Farben, Schriften und Gestaltungselemente sollen erhalten bleiben.

Vermeide feste Breiten und verwende flexible Layouts mit:

- CSS Grid
- Flexbox
- `width: 100%`
- `max-width`
- `min()`
- `max()`
- `clamp()`
- relativen Abständen
- Media Queries

Passe ausschließlich Layout und CSS an.

Dabei gelten folgende verbindliche Regeln:

- Verändere keine JavaScript-Funktionen.
- Verändere keine Event-Handler.
- Verändere keine IDs.
- Verändere keine Berechnungslogik.
- Verändere keine Zufallsfunktionen.
- Verändere keine Auswertungslogik.
- Verändere keine Punkteberechnung.
- Verändere keine SCORM-Funktionalität.
- Verändere keine `name`-, `value`-, `data-*`- oder sonstigen funktionalen Attribute.
- Verändere keine Texte.
- Verändere keine Aufgabenstellungen.
- Verändere keine Antwortmöglichkeiten.
- Entferne keine bestehenden Elemente.
- Füge keine neue Funktionalität hinzu.
- Behalte die bestehende Reihenfolge der Inhalte bei.
- Ändere den JavaScript-Bereich nach Möglichkeit überhaupt nicht.
- Verändere die funktionale HTML-Struktur nur dann, wenn dies für das responsive Layout zwingend erforderlich ist.

Stelle sicher, dass insbesondere folgende Elemente responsiv dargestellt werden:

- Header
- Footer
- Navigationsbereiche
- Inhaltscontainer
- Karten
- Panels
- Bilder
- SVG-Grafiken
- Canvas-Elemente
- Diagramme
- Tabellen
- Formulare
- Eingabefelder
- Buttons
- Drag-and-drop-Bereiche
- interaktive Elemente

Vermeide horizontales Scrollen der gesamten Seite.

Wenn einzelne interaktive Elemente aus technischen Gründen eine Mindestbreite benötigen, darf ausschließlich innerhalb dieser Elemente horizontales Scrollen verwendet werden.

Passe mehrspaltige Layouts so an, dass sie auf kleineren Bildschirmbreiten sinnvoll umbrechen.

Verwende geeignete Media Queries für mindestens folgende Bereiche:

- Desktop: ab ca. 1200 px
- Notebook: ca. 1024 bis 1366 px
- Tablet quer: ca. 900 bis 1200 px
- Tablet hoch: ca. 700 bis 900 px
- Smartphone: unter ca. 700 px

Prüfe besonders folgende Referenzgrößen:

- Desktop: 1920 × 1080
- Notebook: 1366 × 768
- Tablet quer: ca. 1180 × 820
- Tablet hoch: ca. 820 × 1180
- Smartphone: ca. 390 × 844

Die bestehenden Farben, Schriftarten, visuellen Hierarchien und Gestaltungselemente sollen erhalten bleiben.

Bestehende fixe Pixelbreiten, die die responsive Darstellung verhindern, sollen durch flexible CSS-Regeln ersetzt werden.

Nutze vorzugsweise:

```css
width: 100%;
max-width: ...;
display: flex;
display: grid;
grid-template-columns: ...;
flex-wrap: wrap;
font-size: clamp(...);