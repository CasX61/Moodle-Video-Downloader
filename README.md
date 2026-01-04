# Moodle Video Downloader

Ein einfaches Bash-Skript zum Herunterladen von Moodle Videos gehostet von cloudfront.net (.m3u8).

## Voraussetzungen

- **ffmpeg** muss installiert sein
- Installation auf macOS: `brew install ffmpeg`
- Installation auf Windows: `pip install ffmpeg`
- Installation auf Linux: `sudo apt install ffmpeg` 

## Installation

1. Skript ausführbar machen (macOS):
```bash
chmod +x DownloadMoodleVideos.sh
```

## Verwendung

1. Auf die Video-Seite auf Moofle gehen.
2. DevTools öffnen und auf Network Tab.
3. Jetzt erst auf Video starten klicken.
4. In DevTools kommen mehrere Elemente, auf master.m3u8 klicken und die Request-Url kopieren. Dies ist die video_url.

### Grundlegender Befehl:
```bash
./DownloadMoodleVideos.sh <VIDEO_URL> <AUSGABEDATEI>
```

### Beispiel:
```bash
./DownloadMoodleVideos.sh "cloudfront_url" vorlesung01.mp4
```


## Parameter

- **VIDEO_URL**: Die vollständige URL zur .m3u8-Datei (in Anführungszeichen!)
- **AUSGABEDATEI**: Der gewünschte Dateiname für das heruntergeladene Video (z.B. `vorlesung01.mp4`)

## Wichtig

- Die URL muss in Anführungszeichen stehen.
- Das Video wird als einzelne MP4-Datei gespeichert.
- Die Download-Dauer hängt von der Videogröße und Internetgeschwindigkeit ab.

