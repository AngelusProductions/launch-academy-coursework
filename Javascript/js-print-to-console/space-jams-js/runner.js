let Album = require('./album');
let TRACKS = require('./space-jams-tracks');
let Track = require('./track');

let albums = [];

TRACKS.forEach((track) => {

  let album = albums.find(album => { return album.id === track.album_id; });

  if (!album) {
    album = new Album(track.album_id, track.album_name, track.artists);
    albums.push(album);
  }

  album.tracks.push(new Track(track.album_id, track.track_id, track.title, track.track_number, track.duration_ms));
});

albums.forEach((album) => {
  console.log(album.summary());
});
