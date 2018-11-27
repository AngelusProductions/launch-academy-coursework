import React from 'react'

const Answer = props => {

  let className;
  if (props.id === props.selectedId) {
    className = "selected"
  }

  return(
      <li onClick={props.handleAnswerSelection}
          className={className}>
        {props.body}
      </li>
  )
}

export default Answer;
