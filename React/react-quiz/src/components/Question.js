import React from 'react'
import Answer from './Answer'

const Question = props => {

  let ClassName = "";

  let handleSelection = (id) => {
    props.setSelectedId(id)
  }

  let className = "";
  let selectedId = props.selectedId;
  let answers = props.answers.map( answer => {

  let handleAnswerSelection = () => {
    return handleSelection(answer.id);
  }

    return(
      <Answer
        key={answer.id}
        id={answer.id}
        body={answer.body}
        selectedId={selectedId}
        handleAnswerSelection={handleAnswerSelection}
      />
    )
  });

  return(
    <div id="questions">
      <ul>
        {answers}
      </ul>
    </div>
  )
}

export default Question;
