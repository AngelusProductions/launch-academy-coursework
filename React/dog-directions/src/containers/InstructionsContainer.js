import React, { Component } from 'react';
import StepTile from '../components/StepTile';
import ItemTile from '../components/ItemTile';
import FetchButton from '../components/FetchButton';

class InstructionsContainer
 extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedId: null,
      activity: "",
      supplies: [],
      directions: []
    }
    this.setSelectedStep = this.setSelectedStep.bind(this);
    this.fetchData = this.fetchData.bind(this);
  }

    fetchData() {
      fetch('../../api/v1/favorite_things.json')
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
          body = JSON.parse(body);
          this.setState( {activity: body.activity} );
          this.setState( {supplies: body.supplies} );
          this.setState( {directions: body.directions} );
        })
        .catch(error => console.error(`Error in fetch: ${error.message}`));
      }

  setSelectedStep(stepId) {
    this.setState({ selectedId: stepId });
  }

  render(){

    let supplies = this.props.data.supplies
    let directions = this.props.data.directions

    let items = this.state.supplies.map(supply => {
      return(
        <ItemTile
        item={supply.item}
        key={supply.id}
        id={supply.id}
        />
      )
    })

    let steps = this.state.directions.map(direction => {

      let className;
      if(direction.id === this.state.selectedId) {
        className = "selected";
      }

      let handleClick = () => {
        this.setSelectedStep(direction.id)
      }

      return(
        <StepTile
          step={direction.step}
          key={direction.id}
          id={direction.id}
          handleClick={handleClick}
          className={className}
        />
      )
    })

    return(
      <div>
        <h1>How To {this.state.activity}</h1>
        <h3>Supplies:</h3>
        <ul>
          {items}
        </ul>
        <h3>Instructions:</h3>
        <ol>
          {steps}
        </ol>
        <FetchButton
        fetchData={this.fetchData}
        />
      </div>
    )
  }
}

export default InstructionsContainer;
