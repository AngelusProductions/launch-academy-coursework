import React, {Component} from 'react';

import PlaylistCollection from './PlaylistCollection.js';
import SongCollection from './SongCollection.js';

class App extends Component {
  constructor(props) {
    super(props);
    this.state={
      selectedPlaylistId: 1,
      selectedSongId: null
    }
    this.setSelectedPlaylist=this.setSelectedPlaylist.bind(this)
    this.setSelectedSong=this.setSelectedSong.bind(this)
  }

  setSelectedPlaylist(playlistId) {
    this.setState({selectedPlaylistId: playlistId});
    this.setState({selectedSongId: null})
  }

  setSelectedSong(songId){
    this.setState({selectedSongId: songId})
  }

  render() {
    let playlists = this.props.data.playlists
    let songs = this.props.data.songs
    let selectedPlaylistSongIds = []


    if (this.state.selectedPlaylistId == 1) {
      selectedPlaylistSongIds = playlists[0].songs;
    } else if (this.state.selectedPlaylistId == 2) {
      selectedPlaylistSongIds = playlists[1].songs;
    }

    if (this.state.selectedSongId == null) {
      this.setSelectedSong(selectedPlaylistSongIds[0]);
    }

    return (
      <div className="app row callout">
        <h2 className="title">React Music Player</h2>

        <div className= "small-6 columns">
          <h4>Playlists</h4>
          <PlaylistCollection
            playlists={playlists}
            setSelectedPlaylist={this.setSelectedPlaylist}
            selectedPlaylistId={this.state.selectedPlaylistId}
          />
        </div>

      <div className= "small-6 columns" >
        <h4>Songs</h4>
        <SongCollection
          songs={songs}
          setSelectedSong={this.setSelectedSong}
          selectedSongId={this.state.selectedSongId}
          selectedPlaylistSongIds={selectedPlaylistSongIds}
        />
      </div>

      </div>

    );
  }
}

export default App;
