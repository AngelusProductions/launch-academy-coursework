import React from 'react';

const Grocery = props => {
  return(
    <li key={props.id.toString()}>
      {props.name}
      <button onClick={props.handleButtonClick}>Delete</button>
    </li>
  )
}

export default Grocery;
