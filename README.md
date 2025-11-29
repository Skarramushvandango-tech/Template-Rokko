# ROKKO! Records - Plattenlabel Webseite

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

---

## 📐 Bildmaße

### Video (Hero-Bereich) - Self-Hosted HTML5
| Verwendung | Maße | Format | Dateiname |
|------------|------|--------|-----------|
| Desktop | 1920 x 1080 px | MP4 (H.264), 16:9 | `images/rokko/video/intro-video.mp4` |
| Mobil | 720 x 1280 px | MP4 (H.264), 9:16 | `images/rokko/video/intro-video-mobile.mp4` |

**Wichtig:** 
- Kein YouTube! Self-hosted Video = keine Werbung
- Video läuft automatisch stumm
- Sound-Button unten rechts zum Einschalten
- Max. Dateigröße: 10-15 MB empfohlen

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
├── artist-vandango.html     # SkaRamush Vandango Biografie
├── artist-bellieu.html      # Henri Bellieu Biografie
├── artist-fleur.html        # Fléur et Buenié Biografie
├── artist-schablonski.html  # Skank Schablonski Biografie
├── SCHUTZPROTOKOLL.md       # ⚠️ Änderungs-Protokoll
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

1. ✅ Hauptseite mit Farbschema erstellt
2. ✅ 4 Künstler-Biografieseiten erstellt
3. ✅ Sektionen umbenannt (ROKKO! Crew, ROKKO! Beats, etc.)
4. ✅ Merchandise-Sektion mit Spreadshirt-Link
5. ✅ ROKKO! News Sektion (ersetzt Tour Dates)
6. ✅ Kontaktformular
7. ✅ Schutzprotokoll erstellt

### Ausstehend:
- [ ] Logo-Bild hochladen
- [ ] Hero-Video erstellen (1920x1080 oder 720x1280)
- [ ] Künstlerfotos hochladen
- [ ] Album-Cover hochladen
- [ ] Maskottchen-Bild für Merch hochladen
- [ ] E-Mail-Adresse für Kontaktformular einrichten
- [ ] Biografien der Künstler schreiben
- [ ] Social Media Links eintragen

---

## 📚 Dokumentation

- **[SCHUTZPROTOKOLL.md](SCHUTZPROTOKOLL.md)** - Richtlinien für Änderungen an der Webseite
- **[docs/README_WEBSITE.md](docs/README_WEBSITE.md)** - Anleitung zum lokalen Testen und GitHub Pages Veröffentlichung