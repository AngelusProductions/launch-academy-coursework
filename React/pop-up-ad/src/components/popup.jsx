import React from 'react';
// import times from "https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
// import FontAwesomeIcon from "https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"

let handleExit = () => {
  confirm("No Tay Tay today day?");
}

let handleSubmit = () => {
  confirm("Invalid email address");
}

const Popup = props => {
  return(
    <div id="popUpBox">
      <h1>You won {props.artist} tix!</h1>
      <i class="fas fa-times" onClick={handleExit}>X</i>
      <input type="text" id="form" placeholder="email here"></input>
      <button id="prize" onClick={handleSubmit}>CLAIM YOUR PRIZE</button>
    </div>
  );
};

export default Popup;
