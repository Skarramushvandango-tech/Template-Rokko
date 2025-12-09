# YouTube API Setup für ROKKO! Clips

Diese Anleitung erklärt, wie die automatische YouTube Playlist Integration für die "ROKKO! Clips" Sektion eingerichtet wird.

## Schritt 1: YouTube Data API Key erstellen

1. Gehe zu [Google Cloud Console](https://console.cloud.google.com/)
2. Erstelle ein neues Projekt oder wähle ein bestehendes aus
3. Aktiviere die **YouTube Data API v3**:
   - Navigation: APIs & Services > Library
   - Suche nach "YouTube Data API v3"
   - Klicke auf "Aktivieren"
4. Erstelle einen API Key:
   - Navigation: APIs & Services > Credentials
   - Klicke auf "Create Credentials" > "API Key"
   - Kopiere den generierten API Key

## Schritt 2: YouTube Playlist ID finden

1. Öffne deine YouTube Playlist im Browser
2. Die Playlist ID findest du in der URL:
   ```
   https://www.youtube.com/playlist?list=PLxxxxxxxxxxxxxxxxxxxxxx
   ```
   Die Playlist ID ist der Teil nach `list=` (z.B. `PLxxxxxxxxxxxxxxxxxxxxxx`)

## Schritt 3: API Key und Playlist ID in index.html eintragen

Öffne `index.html` und finde diese Zeilen (ca. Zeile 330):

```javascript
const YOUTUBE_API_KEY = 'YOUR_YOUTUBE_API_KEY_HERE'; // Muss vom User bereitgestellt werden
const PLAYLIST_ID = 'YOUR_PLAYLIST_ID_HERE'; // Die YouTube Playlist ID
```

Ersetze die Platzhalter mit deinen tatsächlichen Werten:

```javascript
const YOUTUBE_API_KEY = 'AIzaSyD...dein-api-key...xyz123';
const PLAYLIST_ID = 'PLxxxxxxxxxxxxxxxxxxxxxx';
```

## Schritt 4: Testen

1. Speichere die Datei
2. Öffne die Website im Browser
3. Scrolle zur "ROKKO! Clips" Sektion oder klicke auf "ROKKO! Clips" im Menü
4. Die Videos sollten automatisch geladen werden
5. Klicke auf ein Video-Thumbnail, um es im Fullscreen Pop-up Player abzuspielen

## Funktionsweise

- Die Videos werden **automatisch** von der YouTube Playlist geladen
- **Neue Videos** erscheinen automatisch auf der Website, sobald sie zur Playlist hinzugefügt werden
- Die Videos werden im **Portrait-Format (9:16)** angezeigt - ideal für YouTube Shorts
- **Klick auf Video**: Öffnet einen schönen Fullscreen Pop-up Player
  - YouTube Video spielt im Pop-up mit Autoplay
  - X-Button zum Schließen (oben rechts)
  - ESC-Taste schließt ebenfalls
  - Klick außerhalb des Videos schließt den Player
  - Video stoppt automatisch beim Schließen

## Wichtige Hinweise

- Die YouTube Data API hat ein **kostenloses Quota** von 10.000 Einheiten pro Tag
- Jeder Abruf der Playlist kostet etwa 1-3 Einheiten
- Das reicht für mehrere tausend Seitenaufrufe pro Tag
- Die Videos werden bei jedem Seitenaufruf neu geladen (automatisches Update)

## Troubleshooting

**Problem: "Videos konnten nicht geladen werden"**
- Überprüfe, ob der API Key korrekt ist
- Überprüfe, ob die Playlist ID korrekt ist
- Stelle sicher, dass die Playlist öffentlich oder nicht gelistet ist (nicht privat)
- Überprüfe in der Google Cloud Console, ob das API Quota nicht überschritten wurde

**Problem: Videos werden nicht im Portrait-Format angezeigt**
- YouTube Shorts werden automatisch im 9:16 Format angezeigt
- Normale YouTube Videos werden ebenfalls im 9:16 Format zugeschnitten
- Das ist gewollt für ein einheitliches Erscheinungsbild

## Alternative ohne API Key (Manuelle Methode)

Wenn du keinen API Key verwenden möchtest, kannst du die Videos auch manuell in den Platzhaltern eintragen:

```javascript
document.getElementById('rokko-youtube-shorts').innerHTML = `
  <div onclick="window.open('https://youtube.com/watch?v=VIDEO_ID_1', '_blank')" style="...">
    <!-- Video 1 HTML -->
  </div>
  <div onclick="window.open('https://youtube.com/watch?v=VIDEO_ID_2', '_blank')" style="...">
    <!-- Video 2 HTML -->
  </div>
`;
```

Allerdings werden neue Videos dann **nicht automatisch** angezeigt.
