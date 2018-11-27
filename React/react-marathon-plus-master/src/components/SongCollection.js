import React from "react"

import Song from "./Song"

const SongCollection = (props) => {

  let selectedPlaylistSongs = [];
  let songComponents = props.songs.map( song => {
    let songClass;

    let songClickHandler = () => {
      props.setSelectedSong(song.id)
    }

    if (song.id === props.selectedSongId){
      songClass = "selected"
    } else {
      songClass = "unselected"
    }

    if (props.selectedPlaylistSongIds.includes(song.id)) {
      selectedPlaylistSongs.push(<Song key={song.id} id={song.id} song={song} songClickHandler={songClickHandler} songClass={songClass} />);
    }
    
    return( {selectedPlaylistSongs} )
  })

  return(
    <div>
      {selectedPlaylistSongs}
    </div>
  )
}

export default SongCollection
