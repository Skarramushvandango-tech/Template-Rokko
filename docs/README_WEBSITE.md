# ROKKO! Records Webseite - Entwickler-Dokumentation

## 🚀 Schnellstart

Diese Dokumentation erklärt, wie du die ROKKO! Records Webseite lokal testen und auf GitHub Pages veröffentlichen kannst.

---

## 📁 Projektstruktur

```
Template-Rokko/
├── rokko-index.html          # 🌟 Hauptseite (ROKKO! Records)
├── artist-vandango.html      # SkaRamush Vandango Biografie
├── artist-bellieu.html       # Henri Bellieu Biografie
├── artist-fleur.html         # Fléur et Buenié Biografie
├── artist-schablonski.html   # Skank Schablonski Biografie
├── styles/
│   ├── main.css              # Haupt-Styles
│   ├── rokko-custom.css      # ROKKO! spezifische Styles
│   └── colors/
│       └── color-caqui.css   # Farbschema (#bdb76b)
├── scripts/
│   ├── main.js               # Haupt-JavaScript
│   ├── discography.js        # Diskografie-Funktionalität
│   └── vendor/               # Drittanbieter-Bibliotheken
├── images/
│   └── rokko/                # ROKKO! spezifische Bilder
│       ├── artists/          # Künstlerfotos
│       ├── albums/           # Album-Cover
│       ├── merch/            # Merchandise-Bilder
│       └── logo/             # Logos
└── docs/
    └── README_WEBSITE.md     # Diese Dokumentation
```

---

## 💻 Lokales Testen

### Option 1: Visual Studio Code Live Server (Empfohlen)

1. **Installiere VS Code**: [https://code.visualstudio.com/](https://code.visualstudio.com/)

2. **Installiere die Live Server Extension**:
   - Öffne VS Code
   - Gehe zu Extensions (Ctrl+Shift+X)
   - Suche nach "Live Server"
   - Installiere die Extension von Ritwick Dey

3. **Starte den Server**:
   - Öffne das Projektverzeichnis in VS Code
   - Rechtsklick auf `rokko-index.html`
   - Wähle "Open with Live Server"
   - Der Browser öffnet sich automatisch unter `http://localhost:5500`

### Option 2: Python SimpleHTTPServer

Wenn du Python installiert hast:

```bash
# Python 3
cd /pfad/zu/Template-Rokko
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

Dann öffne `http://localhost:8000/rokko-index.html` im Browser.

### Option 3: Node.js serve

1. **Installiere serve global**:
   ```bash
   npm install -g serve
   ```

2. **Starte den Server**:
   ```bash
   cd /pfad/zu/Template-Rokko
   serve .
   ```

3. Öffne die angezeigte URL im Browser.

### Option 4: npx serve (ohne Installation)

```bash
cd /pfad/zu/Template-Rokko
npx serve .
```

---

## 🌐 GitHub Pages Veröffentlichung

### Methode 1: Aus main Branch (Root)

1. Gehe zu deinem Repository auf GitHub
2. Klicke auf **Settings** (Einstellungen)
3. Scrolle zu **Pages** in der linken Seitenleiste
4. Unter **Source**, wähle:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
5. Klicke auf **Save**
6. Warte 1-2 Minuten, bis die Seite erstellt wird
7. Deine Webseite ist dann unter `https://<username>.github.io/Template-Rokko/rokko-index.html` erreichbar

### Methode 2: Mit Custom Domain (CNAME)

Eine `CNAME`-Datei existiert bereits im Repository. Um eine eigene Domain zu verwenden:

1. Aktiviere GitHub Pages wie oben beschrieben
2. Unter **Custom domain**, gib deine Domain ein (z.B. `rokko-records.de`)
3. Konfiguriere bei deinem Domain-Anbieter:
   - **A-Record**: Zeigt auf die GitHub Pages IP-Adressen:
     - `185.199.108.153`
     - `185.199.109.153`
     - `185.199.110.153`
     - `185.199.111.153`
   - ODER **CNAME-Record**: Zeigt auf `<username>.github.io`
4. Aktiviere **Enforce HTTPS** für sichere Verbindungen

### Nach der Veröffentlichung

- **Hauptseite**: `https://<domain>/rokko-index.html`
- **Künstler-Seiten**: `https://<domain>/artist-vandango.html` etc.

---

## 🔧 Entwicklungs-Tipps

### Dateien bearbeiten

- **Inhalte ändern**: Bearbeite `rokko-index.html` oder die Artist-Seiten
- **Styles anpassen**: Nur in `styles/rokko-custom.css` Änderungen vornehmen
- **Bilder hinzufügen**: In `images/rokko/` entsprechende Ordner nutzen

### Bildgrößen

| Verwendung | Maße | Format |
|------------|------|--------|
| Künstlerfotos (Karte) | 400 x 400 px | JPG/PNG |
| Künstlerfotos (Detail) | 600 x 800 px | JPG/PNG |
| Album-Cover | 380 x 380 px | JPG/PNG (quadratisch!) |
| Merch-Bild | 700 x 400 px | JPG/PNG |

### Vor dem Commit

1. Teste alle Seiten lokal
2. Überprüfe responsive Ansichten (Desktop, Tablet, Mobile)
3. Teste alle Links und Navigation
4. Lies das `SCHUTZPROTOKOLL.md` für geschützte Dateien

---

## 📋 Checkliste für neue Inhalte

- [ ] Bilder in korrekter Größe und Format
- [ ] Alt-Texte für alle Bilder
- [ ] Links funktionieren
- [ ] Responsive Ansicht getestet
- [ ] SCHUTZPROTOKOLL.md gelesen

---

## ❓ Hilfe & Support

Bei Fragen oder Problemen:
1. Lies das `SCHUTZPROTOKOLL.md` für Richtlinien
2. Überprüfe die `README.md` für Projektinformationen
3. Teste die Seite lokal vor dem Deployment

---

## 📝 Changelog

- **2024**: Initiale Website-Dokumentation erstellt
