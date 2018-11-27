import React from 'react';
import Question from "../components/Question"

class App extends React.Component {
  constructor(props) {
   super(props);
   this.state = {
     selectedId: null
   }
   this.handleClick = this.handleClick.bind(this);
 }

  handleClick(id) {
    if (this.state.selectedId === id) {
      this.setState({ selectedId: null });
    } else {
      this.setState({ selectedId: id})
    }
  }

  render() {

    let faqsArray = this.props.data.map( faq => {

    let clickQuestion = () => {
      this.handleClick(faq.id);
    }

    let answer;
    let faClassName;
    if (this.state.selectedId === faq.id ) {
      answer = faq.answer;
      faClassName = "fas fa-minus-square green medium";
    } else {
      answer = null;
      faClassName = "fas fa-plus-square black";
    }

      return (
        <Question
          key={faq.id}
          id={faq.id}
          question={faq.question}
          answer={answer}
          clickQuestion={clickQuestion}
          faClassName={faClassName}
        />
      )
    });

    return(
    <div>
      <h1>We are here to help</h1>
      <div>
        {faqsArray}
      </div>
    </div>
    )
  }
}

export default App;
