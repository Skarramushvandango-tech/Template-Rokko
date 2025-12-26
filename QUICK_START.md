# ROKKO! Records - Quick Start Guide

## 🚀 So siehst du dir die Webseite-Vorschau an

### Option 1: Lokal auf deinem Computer (Einfachste Methode)

1. **Öffne den Datei-Explorer** und navigiere zum Projekt-Ordner
2. **Doppelklick auf `index.html`** - Die Webseite öffnet sich in deinem Browser
3. **Fertig!** Du siehst jetzt die komplette ROKKO! Records Webseite

### Option 2: Mit lokalem Webserver (Professioneller)

Wenn du Python installiert hast:

```bash
# Im Terminal/CMD, navigiere zum Projekt-Ordner
cd pfad/zum/Template-Rokko

# Starte einen lokalen Webserver
python3 -m http.server 8080

# Öffne im Browser
# http://localhost:8080
```

### Option 3: GitHub Pages (Live im Internet)

Die Webseite ist bereits auf GitHub Pages verfügbar unter:
- **Mit Custom Domain:** `https://rokko_webtest.de` (falls DNS konfiguriert)
- **Mit GitHub URL:** `https://[dein-username].github.io/Template-Rokko/`

---

## ✅ Was funktioniert alles?

### Auf der Hauptseite (index.html):
- ✅ Video-Intro (mit Ton-Button unten rechts)
- ✅ Audio-Player (Vandango Album)
- ✅ 5 Künstler-Karten (klickbar)
- ✅ ROKKO! Clips (YouTube Integration)
- ✅ ROKKO! Beats (5 Releases)
- ✅ ROKKO! Merch (Spreadshirt Link)
- ✅ ROKKO! News (3 Artikel)
- ✅ Kontaktformular

### Künstler-Seiten:
- ✅ Biografie
- ✅ Diskografie
- ✅ Videos (ausklappbar)
- ✅ Streaming-Buttons (5 Plattformen)
- ✅ Social Media Links
- ✅ Zurück-Button zur Hauptseite

### Navigation:
- ✅ Alle Menü-Punkte funktionieren
- ✅ Alle internen Links funktionieren
- ✅ Responsive Design (funktioniert auf Handy, Tablet, Desktop)

---

## 📱 Mobile Ansicht testen

### Am Computer:
1. Öffne die Webseite im Browser
2. Drücke `F12` (oder Rechtsklick → "Untersuchen")
3. Klicke auf das Handy-Symbol (📱) oben links
4. Wähle ein Gerät (z.B. "iPhone SE") aus der Dropdown-Liste

### Am Handy:
Öffne einfach die Webseite auf deinem Handy - sie passt sich automatisch an!

---

## 🔧 Häufige Fragen

### "Ich sehe kein Video!"
- **Lösung:** Das Video (`images/rokko/video/intro_movie.mp4`) muss existieren
- **Tipp:** Wenn du noch kein Video hast, wird ein Platzhalter angezeigt - das ist normal

### "Die Social Media Links funktionieren nicht!"
- **Das ist richtig so!** Die Links sind Platzhalter (`href="#"`)
- **Was tun:** Ersetze `#` mit deinen echten Social Media URLs
- **Beispiel:** `href="https://instagram.com/rokko_records"`

### "Der Audio-Player zeigt Fehler!"
- **Überprüfe:** Sind die MP3-Dateien im `mp3/vandango/` Ordner?
- **Format:** Die Dateien sollten `.m4a` oder `.mp3` Format haben

### "Das YouTube-Clips-Feld ist leer!"
- **Das ist normal!** Du musst entweder:
  1. Einen YouTube API Key konfigurieren (siehe `YOUTUBE_API_SETUP.md`)
  2. Oder: Es werden automatisch Platzhalter-Videos angezeigt

---

## 📝 Was kann ich ändern?

### Texte ändern:
Öffne die HTML-Dateien mit einem Texteditor (z.B. Notepad++, VS Code) und suche nach dem Text, den du ändern möchtest.

**Beispiel - Willkommenstext ändern:**
```html
<!-- In index.html, Zeile ~231 -->
<h2 class="title">Willkommen bei ROKKO! Records</h2>
<p class="cousine">Dein eigener Text hier!</p>
```

### Bilder austauschen:
Ersetze die Bilder in den `images/rokko/` Ordnern mit deinen eigenen Bildern. **Wichtig:** Behalte die gleichen Dateinamen bei!

**Beispiel - Artist-Foto ändern:**
```
Ersetze: images/rokko/artists/vandano_press/vandango.png
Mit: Deinem eigenen Foto (gleicher Dateiname!)
```

### Links aktualisieren:
Suche nach `href="#"` in den HTML-Dateien und ersetze `#` mit der echten URL.

**Beispiel - Spotify Link hinzufügen:**
```html
<!-- Vorher -->
<a href="#"><i class="fa fa-spotify"></i></a>

<!-- Nachher -->
<a href="https://open.spotify.com/artist/deine-artist-id" target="_blank">
  <i class="fa fa-spotify"></i>
</a>
```

---

## 🎨 Farben ändern (Vorsicht!)

Die ROKKO! Farben sind in `styles/colors/color-caqui.css` definiert:
- **Primärfarbe:** `#bdb76b` (Caqui/Khaki)
- **Sand:** `#DEC292`
- **Braun:** `#5D4037`

**⚠️ Achtung:** Laut `SCHUTZPROTOKOLL.md` sollten diese Farben NICHT geändert werden!

---

## 📚 Weitere Hilfe

- **Vollständiger Funktionstest:** Siehe `WEBSITE_HEALTH_CHECK.md`
- **Deployment:** Siehe `DEPLOYMENT.md`
- **YouTube Integration:** Siehe `YOUTUBE_API_SETUP.md`
- **Änderungs-Richtlinien:** Siehe `SCHUTZPROTOKOLL.md`
- **Projekt-Übersicht:** Siehe `README.md`

---

## ✅ Zusammenfassung

**Die Webseite funktioniert perfekt!**

1. Öffne `index.html` im Browser → Du siehst die Webseite
2. Alle Features funktionieren
3. Vorschau funktioniert einwandfrei
4. Keine kritischen Fehler

**Du kannst jetzt:**
- ✅ Die Webseite ansehen
- ✅ Texte ändern
- ✅ Bilder austauschen
- ✅ Links hinzufügen
- ✅ Auf GitHub Pages deployen

---

**Viel Erfolg mit deiner ROKKO! Records Webseite! 🎵**
