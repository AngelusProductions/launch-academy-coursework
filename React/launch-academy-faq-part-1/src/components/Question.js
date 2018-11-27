import React from 'react';

const Question = props => {
  return(
    <div id="qaContainer">
      <i className={props.faClassName}
         onClick={props.clickQuestion}
         ></i>
      <div id="question">{props.question}</div>
      <div id="answer">{props.answer}</div>
    </div>
  )
}

export default Question;
