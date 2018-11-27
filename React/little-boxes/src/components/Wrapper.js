import React from 'react';
import Picture from './Picture';
import Numbers from './Numbers';

let date = (new Date).toString()
let random = parseInt(Math.random() * 100)

const Wrapper = props => {
  return (
    <div className='box wrapper'>
      <h1>{props.header}</h1>
      <p>{props.paragraph}</p>
      <Numbers
      date={date}
      random={random}/>
      <Picture
      src="https://cdn2.vectorstock.com/i/1000x1000/51/91/cartoon-lamb-vector-575191.jpg"/>
    </div>
  )
}

export default Wrapper;
