import React from 'react';
import Playlist from './Playlist'

const PlaylistCollection = props => {

  let playlistComponents = props.playlists.map((playlist)=> {

    let playlistClass;
    if (props.selectedPlaylistId === playlist.id) {
      playlistClass = "selected";
    }

    let setSelectedPlaylist = () => {
      props.setSelectedPlaylist(playlist.id)
    }

      return (
        <Playlist
          key = {playlist.id}
          id = {playlist.id}
          name = {playlist.name}
          setSelectedPlaylist={setSelectedPlaylist}
          playlistClass={playlistClass}
        />

      )
    }
  )

  return(
    <div>
      {playlistComponents}
    </div>

  )
}

export default PlaylistCollection;
