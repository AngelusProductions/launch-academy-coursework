import React from "react"

const Song = (props) => {
  return(
    <p className={props.songClass} onClick={props.songClickHandler}>
      {props.song.name} - {props.song.artist}
    </p>
  )
}

export default Song
