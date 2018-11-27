import React from 'react';

const List = props => {

  let count = 0
  props.list.map( element => {
    props.list[count] = <li key={count}>{element}</li>;
    count++;
  });

  return (
    <div className='box list'>
      <h1>Here Is a List</h1>
      <ul>{props.list}</ul>
    </div>
  )
}

export default List;
