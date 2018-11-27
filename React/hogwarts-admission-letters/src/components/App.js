import React from 'react';
import AcceptanceLetterText from './AcceptanceLetterText';
import RejectionLetterText from './RejectionLetterText';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      boxCheck: "accept"
    }
    this.checkboxChanger = this.checkboxChanger.bind(this);
  }

  checkboxChanger() {
    if (this.state.boxCheck === "accept") {
      this.setState( {boxCheck: "reject"} );
    } else {
      this.setState( {boxCheck: "accept"} );
    }
  };

  render() {

    let letter;
    if (this.state.boxCheck === "accept") {
      letter = <AcceptanceLetterText />;
    } else {
      letter = <RejectionLetterText />;
    }

    return(
      <div>
        <div className="letter-body">

          <div className="small-12 small-centered text-center columns">
            <input type="checkbox" onClick={this.checkboxChanger} />
            <label>
              <h5>Rejected?</h5>
            </label>
          </div>

          <img src="https://vignette.wikia.nocookie.net/harrypotter/images/a/ae/Hogwartscrest.png/revision/latest?cb=20110806202805" id="hogwarts-logo"/>
          <h1>HOGWARTS SCHOOL OF WITCHCRAFT AND WIZARDRY</h1>
          <br />

          <h3 id="headmaster-name">Headmaster: Albus Dumbledore</h3>
          <p id="merlin-order">
            (Order of Merlin, First Class, Grand Sorc., Chf. Warlock, Supreme Mugwump, International Confed. of Wizards)
          </p>

          <br />
          <p>Dear Addressee,</p>
            <div>
              {letter}
            </div>
          <br />

          <p>Yours sincerely,</p>
          <h3>Minerva McGonagall</h3>
          <h3>Deputy Headmistress</h3>

        </div>
      </div>
    );
  };
};

export default App;
