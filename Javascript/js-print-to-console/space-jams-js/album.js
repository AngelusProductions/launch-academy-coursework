class Album {
  constructor(album_id, album_name, album_artists) {
    this.id = album_id;
    this.name = album_name;
    this.artists = album_artists;
    this.durationMin = 0;
    this.tracks = [];
    this.tracksDisplay = [];
  }
  summary() {
    this.tracks.forEach (track => {
      this.tracksDisplay.push(`- ${track.title}`);
      this.durationMin += track.durationMs / 1000 / 60;
    });
    return `Name: ${this.name}\nArtist(s): ${this.artists}\nDuration (min.): ${this.durationMin.toFixed(2)}\n${this.tracksDisplay.join("\n")}\n`;
  }
}

module.exports = Album;
