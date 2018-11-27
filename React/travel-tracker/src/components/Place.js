import React from 'react';

const Place = props => {
  return (
    <li onClick={props.crossOut} className={props.className}>{props.name}</li>
  )
}

export default Place;
