# ROKKO! Records - Deployment Checkliste

## ✅ Website Setup - KOMPLETT

### Technische Infrastruktur
- ✅ Hauptseite `rokko-index.html` erstellt und konfiguriert
- ✅ Automatische Weiterleitung von `index.html` → `rokko-index.html`
- ✅ CNAME Datei für Custom Domain (`rokko_webtest.de`) erstellt
- ✅ 5 Künstler-Biografieseiten erstellt:
  - ✅ `artist-vandango.html` (SkaRamush Vandango)
  - ✅ `artist-bellieu.html` (Henri Bellieu)
  - ✅ `artist-fleur.html` (Fléur et Buenié)
  - ✅ `artist-schablonski.html` (Skank Schablonski)
  - ✅ `artist-anger-uschis.html` (Anger Uschis)
- ✅ Alle internen Links aktualisiert
- ✅ Farbschema ROKKO! (Caqui/Khaki #bdb76b, Sand #DEC292, Braun #5D4037)
- ✅ Responsive Design (Desktop, Tablet, Mobile)
- ✅ ROKKO! Clips Sektion mit YouTube Integration
- ✅ Streaming-Buttons auf allen Artist-Seiten
- ✅ Video-Sektionen mit aufklappbarem Dropdown
- ✅ Social Media Links Bereiche vorbereitet

### Dokumentation
- ✅ README.md - Projekt-Übersicht
- ✅ SCHUTZPROTOKOLL.md - Änderungsrichtlinien
- ✅ CHANGES_SUMMARY.md - Zusammenfassung aller Änderungen
- ✅ YOUTUBE_API_SETUP.md - YouTube API Integration Anleitung
- ✅ docs/README_WEBSITE.md - Entwickler-Dokumentation
- ✅ DEPLOYMENT.md - Diese Checkliste

---

## 📦 Was ist FERTIG und EINSATZBEREIT

Die Website ist **vollständig funktionsfähig** und kann **sofort deployed** werden!

**Alle technischen Features sind implementiert:**
1. ✅ Responsive Design
2. ✅ Navigation
3. ✅ Sektionen (Home, Crew, Beats, Merch, News, Kontakt)
4. ✅ Artist-Seiten mit allen Features
5. ✅ Streaming-Buttons
6. ✅ YouTube-Integration (OPTIONAL)
7. ✅ Kontaktformular
8. ✅ Farbschema und Design

---

## 🎨 Was noch CONTENT benötigt (OPTIONAL)

Diese Dinge benötigen **echte Inhalte von dir**. Die Website funktioniert auch ohne diese - sie zeigt Platzhalter an.

### Bilder (Optional - Website zeigt Platzhalter)
- [ ] **Logo**: `images/rokko/logo/rokko-logo.png`
  - Empfohlene Größe: 300x100 px (transparent PNG)
  - Wird im Header angezeigt
  
- [ ] **Hero-Video**: `images/rokko/video/intro-video.mp4`
  - Desktop: 1920x1080 px (16:9)
  - Mobil: 720x1280 px (9:16)
  - Max. 10-15 MB
  - Self-hosted (keine YouTube-Werbung!)
  
- [ ] **Künstlerfotos**: `images/rokko/artists/[kuenstlername].jpg`
  - Kartenansicht: 400x400 px (quadratisch)
  - Detail: 600x800 px (Hochformat)
  - Für: vandango, bellieu, fleur, schablonski, anger-uschis
  
- [ ] **Album-Cover**: `images/rokko/albums/[album-name].jpg`
  - Größe: 556x556 px (**quadratisch!**)
  - Format: JPG oder PNG
  
- [ ] **Merch-Maskottchen**: `images/rokko/merch/mascot.jpg`
  - Größe: 700x400 px (rechteckig)
  - Für die Merchandise-Sektion

- [ ] **Social Media Vorschaubild** (Optional): `images/rokko/logo/rokko-og-image.jpg`
  - Größe: 1200x630 px
  - Für Facebook, Twitter, etc.
  - Aktivierung: Kommentare in `rokko-index.html` entfernen

- [ ] **Favicon** (Optional): `images/rokko/logo/favicon.ico` + `apple-touch-icon.png`
  - favicon.ico: 16x16, 32x32 px
  - apple-touch-icon.png: 180x180 px
  - Aktivierung: Kommentare in `rokko-index.html` entfernen

### Texte (Optional - Website zeigt Platzhalter)
- [ ] **Künstler-Biografien** schreiben
  - Dateien: `artist-*.html`
  - Suche nach `<!-- BIOGRAFIE HIER EINFÜGEN -->`
  - Ersetze Platzhalter-Text mit echten Infos

- [ ] **Social Media Links** eintragen
  - Auf jeder Artist-Seite
  - Instagram, Facebook, Twitter, etc.
  - Suche nach `href="#"` in den Social Media Bereichen

### Konfiguration (Optional)
- [ ] **Kontaktformular E-Mail** konfigurieren
  - Aktuell: Nur Frontend-Formular
  - Für echte E-Mails: Backend-Service nötig (z.B. Formspree, EmailJS)
  - Anleitung in `rokko-index.html` Kommentaren

- [ ] **YouTube API** einrichten (Optional für ROKKO! Clips)
  - Nur nötig wenn automatische Playlist gewünscht
  - Anleitung: `YOUTUBE_API_SETUP.md`
  - Funktioniert auch ohne (zeigt Platzhalter)

---

## 🚀 GitHub Pages Deployment

### Schritt 1: Repository zu GitHub pushen
```bash
git add .
git commit -m "ROKKO! Records Website - Ready for deployment"
git push origin main
```

### Schritt 2: GitHub Pages aktivieren
1. Gehe zu deinem Repository auf GitHub
2. **Settings** → **Pages**
3. **Source**: 
   - Branch: `main`
   - Folder: `/ (root)`
4. **Save** klicken
5. Warten 1-2 Minuten

### Schritt 3: Domain konfigurieren (Optional)
Falls du `rokko_webtest.de` oder eine andere Domain nutzen willst:

1. **Bei deinem Domain-Provider** (z.B. IONOS, Strato, etc.):
   - Erstelle einen **A-Record** für `@` (oder deine Subdomain):
     ```
     185.199.108.153
     185.199.109.153
     185.199.110.153
     185.199.111.153
     ```
   - ODER einen **CNAME-Record** zu `<username>.github.io`

2. **In GitHub Pages Settings**:
   - Custom domain: `rokko_webtest.de` eintragen
   - **Enforce HTTPS** aktivieren
   - Warten auf DNS-Propagation (kann bis 24h dauern)

### Schritt 4: Testen
- **Mit Custom Domain**: `https://rokko_webtest.de`
- **Ohne Custom Domain**: `https://<username>.github.io/Template-Rokko/`

Die Seite wird automatisch zu `rokko-index.html` weiterleiten.

---

## ✅ Fertig!

**Die Website ist einsatzbereit!**

Du kannst sie jetzt deployen und später die Content-Optionen (Bilder, Texte, etc.) nach und nach hinzufügen.

Alle Platzhalter sind so gestaltet, dass die Seite auch ohne echte Inhalte professionell aussieht.

---

## 📞 Support

Bei Fragen zu:
- **Deployment**: Siehe `docs/README_WEBSITE.md`
- **Änderungen**: Siehe `SCHUTZPROTOKOLL.md`
- **YouTube Integration**: Siehe `YOUTUBE_API_SETUP.md`
- **Projekt-Übersicht**: Siehe `README.md`
