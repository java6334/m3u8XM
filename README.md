# M3U8 XM
A WIP script that converts SiriusXM's web app into a M3U8 file.
Credits to [andrew0](https://github.com/andrew0) for the basis of this script.


## Features
- Automatic login.
- Creates a full channel playlist.
- Support for channel logos & genre filtering.
- Xtra streams supported.
- Automatically downloads a M3U file in the m3u8xm directory.

## Create Project Directory:
```bash
mkdir -p m3u8xm
```

## Go To Project Directory:
```bash
cd m3u8xm
```

## Clone The Project:
```bash
git clone https://github.com/java6334/m3u8XM
```

## Edit Your Configuration File:
Don't forget to rename ``config.example.ini`` to ``config.ini`` and edit the email or username & password to your SXM account!

## Configure IP Settings:
```
[settings]
ip = x.x.x.x # Your VPS IP address goes here.
port = 8888
playlist_host = x.x.x.x # Your VPS IP address goes here.
playlist_scheme = http
playlist_port = 8888
playlist_output = /app/output/siriusxm.m3u

# You can leave the following lines as default.
xtra_queue_tracks = 6
xtra_extend_threshold = 0.70
xtra_playlist_max_age = 900
xtra_session_ttl = 25200
```

## Start The Container:
```
docker compose up -d
```


## This project is not affiliated with SiriusXM.
