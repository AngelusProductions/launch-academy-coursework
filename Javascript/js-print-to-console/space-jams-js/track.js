
class Track {
  constructor ( album_id, track_id, title, track_number, duration_ms) {
    this.albumID = album_id;
    this.id = track_id;
    this.title = title;
    this.trackNumber = track_number;
    this.durationMs = duration_ms;
  }
}

module.exports = Track;
