import React from 'react';

const Playlist = props => {

  return(
    <div>
      <p className={props.playlistClass} onClick={props.setSelectedPlaylist}>{props.name}</p>
    </div>
  )
}

export default Playlist;
