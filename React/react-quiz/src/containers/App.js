// HEY, HI! USE THE LAST ONE PLEASE. THIS IS JUST MY WORK ON EXCEEDS :)


import React from 'react';
import data from '../constants/data'
import Question from '../components/Question'

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state= {
      selectedId: null,
      result: null,
      resultClass: null,
      questionId: 1,
      questionBody: null,
      questionAnswerId: null,
      questionAnswers: []
    }
    this.setSelectedId = this.setSelectedId.bind(this);
  }

  setSelectedId (id) {
    this.setState( {selectedId: id});
    if (this.props.data.question.correctAnswerId === id) {
      this.setState({result: "CORRECT"});
      this.setState({resultClass: "correct"});
    } else {
      this.setState({result: "INCORRECT"});
      this.setState({resultClass: "incorrect"});
    }
  }

  nextQuestionClick() {
    fetch('../../api/v1/questions.json')
      .then(response => {
            if (response.ok) {
              return response;
            } else {
              let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
              throw(error);
            }
          })
          .then(response => response.text())
          .then(body => {
            debugger
            body = JSON.parse(body);
            let index = Math.floor(Math.random()*3);
            this.setState( {questionId: index} );
            this.setState( {questionBody: body.questions[index].body} );
            this.setState( {questionAnswerId: body.questions[index].correctAnswerId} );
            this.setState( {questionAnswers: body.questions[index].answers} );
          })
          .catch(error => console.error(`Error in fetch: ${error.message}`));
        }

  render(){
    debugger

    let question = this.props.data.question;

    return(
      <div id="wrapper">
        <h1 className="question">{question.body}</h1>
          <Question
            key={this.state.questionId}
            id={this.state.questionId}
            body={this.state.question.body}
            correctAnswerId={question.correctAnswerId}
            answers={question.answers}
            selectedId={this.state.selectedId}
            setSelectedId={this.setSelectedId}
          />
          <h2 className={this.state.resultClass}>{this.state.result}</h2>
          <button onClick={this.nextQuestionClick}>Next Question</button>
      </div>
    )
  }
}

export default App
