import React from 'react';
import List from './List';

let list = ['Asteroids', 'Comets', 'Moon', 'Planets', 'Stars', 'Sun'];

const Picture = props => {
  return (
    <div className='box picture'>
      <h1>Look at This Picture</h1>
      <img alt='Lambi' src={props.src}/>
      <List
      list={list}/>
    </div>
  )
}

export default Picture;
