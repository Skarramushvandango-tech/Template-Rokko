# ROKKO! Records - Schutzprotokoll für Webseiten-Änderungen

## ⚠️ WICHTIG: Vor jeder Änderung lesen!

Dieses Dokument dient als Leitfaden, um sicherzustellen, dass bei zukünftigen Änderungen an der ROKKO! Records Webseite keine bereits funktionierenden Elemente beschädigt werden.

---

## 🔒 GESPERRTE BASIS-EINSTELLUNGEN (NICHT ÄNDERN!)

### Farbschema
| Eigenschaft | Wert | Datei |
|-------------|------|-------|
| Primärfarbe | `#bdb76b` | Caqui/Khaki |
| CSS-Klasse | `palettecaqui` | body-Tag |
| Farbdatei | `styles/colors/color-caqui.css` | Nicht bearbeiten! |

### Schriftarten
- **Anton** - Für Überschriften (Headlines) - schmal/narrow, fett
- **Roboto** - Für Fließtext
- **Cousine** - Für Untertitel und Zitate

### Header
| Eigenschaft | Wert |
|-------------|------|
| Höhe | 100px |
| Logo max-Höhe | 60px |

### Grundlegende Dateistruktur
```
rokko-index.html     <- Hauptseite (NICHT UMBENENNEN!)
styles/
  └── rokko-custom.css  <- ROKKO! spezifische Styles
  └── colors/
      └── color-caqui.css  <- Farbschema (NICHT BEARBEITEN!)
images/
  └── rokko/           <- Alle ROKKO! Bilder hier
      └── artists/     <- Künstlerfotos
      └── albums/      <- Album-Cover
      └── merch/       <- Merchandise-Bilder
      └── logo/        <- Logos
```

---

## 📐 BILDMASSE (Festgelegt)

### Video (Hero-Bereich)
| Verwendung | Maße | Format |
|------------|------|--------|
| Desktop | 1920 x 1080 px | MP4 (H.264), 16:9 |
| Mobil | 720 x 1280 px | MP4 (H.264), 9:16 |
| Max. Größe | 10-15 MB | - |

### Künstlerfotos
| Verwendung | Maße | Format |
|------------|------|--------|
| Kartenansicht | 400 x 400 px | JPG/PNG, quadratisch |
| Detail-Ansicht | 600 x 800 px | JPG/PNG, Hochformat |

### Album-Cover (IMMER QUADRATISCH!)
| Verwendung | Maße | Format |
|------------|------|--------|
| Grid-Ansicht | 380 x 380 px | JPG/PNG, **quadratisch** |
| Detail-Ansicht | 640 x 640 px | JPG/PNG, **quadratisch** |

### Merch-Bild (RECHTECKIG!)
| Verwendung | Maße | Format |
|------------|------|--------|
| Maskottchen-Bild | 700 x 400 px | JPG/PNG, **rechteckig** |

### Blog/News-Bilder
| Verwendung | Maße | Format |
|------------|------|--------|
| Vorschau | 640 x 380 px | JPG/PNG |

### Header-Banner (falls benötigt)
| Verwendung | Maße | Format |
|------------|------|--------|
| Desktop | 1920 x 400 px | JPG/PNG |
| Mobil | 768 x 300 px | JPG/PNG |

---

## ✅ CHECKLISTE VOR ÄNDERUNGEN

### 1. Backup erstellen
- [ ] Aktuelle Version der zu ändernden Datei kopieren
- [ ] Backup mit Datum benennen: `dateiname_YYYY-MM-DD_backup.html`

### 2. Vor der Änderung prüfen
- [ ] Ist die Datei in der "Gesperrten Dateien"-Liste?
- [ ] Wird ein Farbcode geändert? → STOPP! Nur in `rokko-custom.css`
- [ ] Wird eine Schriftart geändert? → STOPP! Rücksprache erforderlich
- [ ] Wird eine Bildgröße geändert? → Siehe "Bildmaße" oben

### 3. Nach der Änderung testen
- [ ] Desktop-Ansicht (Chrome, Firefox, Safari)
- [ ] Tablet-Ansicht (768px Breite)
- [ ] Mobil-Ansicht (375px Breite)
- [ ] Audio-Player funktioniert
- [ ] Links funktionieren
- [ ] Bilder werden korrekt angezeigt

### 4. Dokumentation
- [ ] Änderung in CHANGELOG.md eintragen
- [ ] Datum und Beschreibung notieren

---

## 🚫 GESPERRTE DATEIEN (NICHT BEARBEITEN!)

Diese Dateien dürfen **nicht** verändert werden:

1. `styles/colors/color-caqui.css` - Farbschema
2. `styles/main.css` - Haupt-Styles des Templates
3. `styles/vendor/*.css` - Alle Vendor-CSS-Dateien
4. `scripts/vendor/*.js` - Alle Vendor-JavaScript-Dateien
5. `fonts/*` - Alle Schriftarten

---

## ✏️ ERLAUBTE ÄNDERUNGEN

Diese Dateien/Bereiche dürfen bearbeitet werden:

1. `rokko-index.html` - Inhaltliche Änderungen (Text, Bilder)
2. `styles/rokko-custom.css` - Zusätzliche Styles (am Ende hinzufügen!)
3. `images/rokko/*` - Bilder hinzufügen/ersetzen
4. `artist-*.html` - Künstler-Biografieseiten
5. `discs/disc-*.html` - Album-Detailseiten

---

## 📁 DATEIBENENNUNGS-KONVENTION

### Bilder
```
images/rokko/artists/[kuenstlername].jpg
images/rokko/albums/[albumtitel-kuenstler].jpg
images/rokko/merch/[produkt-beschreibung].jpg
images/rokko/logo/rokko-logo-[variante].png
```

### Beispiele:
- `skaramush-vandango.jpg`
- `neurocentric-vandango.jpg`
- `tshirt-rokko-black.jpg`
- `rokko-logo-white.png`

---

## 🎨 SEKTIONSNAMEN (FESTGELEGT)

| Sektion | Name | Anchor |
|---------|------|--------|
| Startseite | Home | #anchor00 |
| Künstler | ROKKO! Crew | #anchor01 |
| Diskografie | ROKKO! Beats | #anchor03 |
| Merchandise | ROKKO! Merch | #anchor04 |
| News | ROKKO! News | #anchor07 |
| Kontakt | ROKKO! Kontakt | #anchor08 |

---

## 👥 KÜNSTLER-INFORMATIONEN

| Künstler | Release | Typ |
|----------|---------|-----|
| SkaRamush Vandango | Neurocentric | Album |
| Henri Bellieu | Petite Colibri | Single |
| Fléur et Buenié | Féu Leger | Single |
| Skank Schablonski | Kohle raus, der Merz kommt | Single |

---

## 📝 CHANGELOG

### 2024-XX-XX - Initiale Version
- Hauptseite `rokko-index.html` erstellt
- Farbschema Caqui/Khaki implementiert
- 4 Künstler mit Releases eingerichtet
- ROKKO! Merch Sektion hinzugefügt
- ROKKO! News Sektion (ersetzt Tour Dates)
- Kontaktformular implementiert
- Custom CSS `rokko-custom.css` erstellt
- Schutzprotokoll erstellt

---

## 📞 BEI FRAGEN

Vor größeren Änderungen immer Rücksprache halten!

**Kontakt:** [E-Mail-Adresse einfügen]

---

*Dieses Dokument wurde erstellt, um die Integrität der ROKKO! Records Webseite zu gewährleisten.*
