import React from 'react';
import Grocery from './Grocery';

const GroceryList = props => {

  let groceryList = props.groceries.map (grocery => {
    return(
      <Grocery
        id={grocery.id}
        key={grocery.id}
        name={grocery.name}
        handleButtonClick={props.handleButtonClick}
      />
    )
  });
  return(
    <div>
      <ul>
        {groceryList}
      </ul>
    </div>
  )
};

export default GroceryList;
