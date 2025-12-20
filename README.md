# ROKKO! Records - Plattenlabel Webseite

## ✅ STATUS: EINSATZBEREIT!

**Die Website ist vollständig funktionsfähig und kann sofort deployed werden!**

- ✅ Alle technischen Features implementiert
- ✅ Responsive Design (Desktop, Tablet, Mobile)
- ✅ 5 Künstler-Seiten mit allen Features
- ✅ Streaming-Buttons, Video-Integration, Social Media vorbereitet
- ✅ GitHub Pages kompatibel
- ✅ Custom Domain konfiguriert (rokko_webtest.de)
- ✅ **Preview funktioniert einwandfrei** (getestet am 2024-12-20)

**📖 Deployment-Anleitung:** Siehe `DEPLOYMENT.md`  
**🔍 Vollständiger Funktionstest:** Siehe `WEBSITE_HEALTH_CHECK.md`

---

## 🎵 Offizielle ROKKO! Records Webseite

Willkommen bei ROKKO! Records - deinem Plattenlabel für elektronische Musik.

---

## 🚀 Hauptseite

**`rokko-index.html`** - Die offizielle ROKKO! Records Startseite

### Farbschema
- **Primärfarbe:** Caqui/Khaki `#bdb76b`
- **CSS-Klasse:** `palettecaqui`

---

## 👥 ROKKO! Crew (Künstler)

| Künstler | Release | Typ | Biografie-Seite |
|----------|---------|-----|-----------------|
| SkaRamush Vandango | Neurocentric | Album | `artist-vandango.html` |
| Henri Bellieu | Petite Colibri | Single | `artist-bellieu.html` |
| Fléur et Buenié | Féu Leger | Single | `artist-fleur.html` |
| Skank Schablonski | Kohle raus, der Merz kommt | Single | `artist-schablonski.html` |
| Anger Uschis | Coming Soon | TBA | `artist-anger-uschis.html` |

---

## 📐 Bildmaße

### Video (Hero-Bereich) - Self-Hosted HTML5
**EIN Video für alle Geräte (16:9 Querformat):**

| Gerät | Maße | Hinweis |
|-------|------|---------|
| Desktop | **1920 x 1080 px** | Full HD, optimale Qualität |
| Mobil | **1280 x 720 px** | HD, gleiche Datei wird automatisch skaliert |

**Dateiname:** `images/rokko/video/intro-video.mp4`

**Wichtig:** 
- Kein YouTube! Self-hosted Video = keine Werbung
- Video läuft automatisch stumm
- Sound-Button unten rechts zum Einschalten
- Max. Dateigröße: 10-15 MB empfohlen
- Format: MP4 (H.264) oder WebM

### Künstlerfotos
| Verwendung | Maße |
|------------|------|
| Kartenansicht | 400 x 400 px |
| Detail-Ansicht | 600 x 800 px |

### Album-Cover
| Verwendung | Maße |
|------------|------|
| Grid-Ansicht | 556 x 556 px |
| Detail-Ansicht | 1000 x 1000 px |

---

## 📁 Struktur

```
├── rokko-index.html         # 🌟 HAUPTSEITE
├── index.html               # Automatische Weiterleitung → rokko-index.html
├── CNAME                    # GitHub Pages Custom Domain (rokko_webtest.de)
├── artist-vandango.html     # SkaRamush Vandango Biografie
├── artist-bellieu.html      # Henri Bellieu Biografie
├── artist-fleur.html        # Fléur et Buenié Biografie
├── artist-schablonski.html  # Skank Schablonski Biografie
├── artist-anger-uschis.html # Anger Uschis Biografie
├── SCHUTZPROTOKOLL.md       # ⚠️ Änderungs-Protokoll
├── DEPLOYMENT.md            # 🚀 Deployment Checkliste
├── YOUTUBE_API_SETUP.md     # 📺 YouTube API Anleitung
├── styles/
│   ├── rokko-custom.css     # ROKKO! Custom Styles
│   └── colors/
│       └── color-caqui.css  # Farbschema (NICHT ÄNDERN!)
└── images/
    └── rokko/               # Alle ROKKO! Bilder
        ├── artists/         # Künstlerfotos
        ├── albums/          # Album-Cover
        ├── merch/           # Merchandise-Bilder
        └── logo/            # Logos
```

---

## 📋 Sektionen

| Sektion | Name | Beschreibung |
|---------|------|--------------|
| Home | ROKKO! Records | Video-Header mit Welcome-Text |
| Crew | ROKKO! Crew | 4 Künstler mit Biografien |
| Beats | ROKKO! Beats | Diskografie/Releases |
| Merch | ROKKO! Merch | Spreadshirt-Shop-Link |
| News | ROKKO! News | Neuigkeiten vom Label |
| Kontakt | ROKKO! Kontakt | Kontaktformular |

---

## ⚠️ WICHTIG

Vor jeder Änderung das **`SCHUTZPROTOKOLL.md`** lesen!

---

## 🛠️ Nächste Schritte

### ✅ Komplett fertig - Website ist einsatzbereit!

1. ✅ Hauptseite mit Farbschema erstellt
2. ✅ 5 Künstler-Biografieseiten erstellt (inkl. Anger Uschis)
3. ✅ Sektionen umbenannt (ROKKO! Crew, ROKKO! Beats, etc.)
4. ✅ Merchandise-Sektion mit Spreadshirt-Link
5. ✅ ROKKO! News Sektion (ersetzt Tour Dates)
6. ✅ ROKKO! Clips Sektion mit YouTube Integration
7. ✅ Kontaktformular
8. ✅ Schutzprotokoll erstellt
9. ✅ Streaming Buttons auf allen Artist-Seiten
10. ✅ Video-Sektionen mit Dropdown
11. ✅ Deployment-Dokumentation
12. ✅ CNAME für Custom Domain
13. ✅ Alle Links aktualisiert

### 📦 Optional - Content hinzufügen (wenn gewünscht)

Diese Inhalte sind **komplett optional**. Die Website funktioniert auch ohne sie mit Platzhaltern:

- [ ] Logo-Bild hochladen → `images/rokko/logo/rokko-logo.png`
- [ ] Hero-Video erstellen → `images/rokko/video/intro-video.mp4` (1920x1080 oder 720x1280)
- [ ] Künstlerfotos hochladen → `images/rokko/artists/[name].jpg`
- [ ] Album-Cover hochladen → `images/rokko/albums/[album].jpg`
- [ ] Maskottchen-Bild für Merch hochladen → `images/rokko/merch/mascot.jpg`
- [ ] E-Mail-Adresse für Kontaktformular einrichten (Backend-Service benötigt)
- [ ] Biografien der Künstler schreiben (in `artist-*.html` Dateien)
- [ ] Social Media Links eintragen (in `artist-*.html` Dateien)
- [ ] YouTube API Key einrichten (für automatische ROKKO! Clips, siehe `YOUTUBE_API_SETUP.md`)

**📖 Detaillierte Anleitung:** Siehe `DEPLOYMENT.md`

---

## 📚 Dokumentation

- **[SCHUTZPROTOKOLL.md](SCHUTZPROTOKOLL.md)** - Richtlinien für Änderungen an der Webseite
- **[VERIFICATION_GUIDE.md](VERIFICATION_GUIDE.md)** - Anleitung zur Überprüfung implementierter Features
- **[CHANGES_SUMMARY.md](CHANGES_SUMMARY.md)** - Zusammenfassung aller durchgeführten Änderungen
- **[docs/README_WEBSITE.md](docs/README_WEBSITE.md)** - Anleitung zum lokalen Testen und GitHub Pages Veröffentlichung

## ✅ Feature-Überprüfung

Um zu überprüfen, dass alle dokumentierten Features tatsächlich implementiert sind:

### 📱 Mobile / Browser (empfohlen für Handy)
Öffne einfach diese Datei in deinem Browser:
```
verify-mobile.html
```
Interaktive Checkliste mit Links zu allen Features. Funktioniert auf jedem Gerät!

### 💻 Automatisches Script (nur Desktop/Terminal)
```bash
./verify_features.sh
```

Dieser Befehl führt automatische Tests durch und bestätigt, dass alle Features aus `CHANGES_SUMMARY.md` korrekt implementiert sind. Siehe **[VERIFICATION_GUIDE.md](VERIFICATION_GUIDE.md)** für Details.