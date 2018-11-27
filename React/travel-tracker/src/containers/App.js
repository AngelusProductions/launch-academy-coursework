import React, { Component } from 'react';
import data from '../constants/data'
import styles from '../stylesheets/index.css'
import Place from '../components/Place'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      crossedOutId: null
    }
    this.setCrossedOut = this.setCrossedOut.bind(this);
  }

  setCrossedOut(id) {
    this.setState( {crossedOutId: id} );
  }

  render() {

    let places = this.props.data.places;

    let placesList = places.map( place => {

    let className;
    if (place.id === this.state.crossedOutId) {
      className = "crossedOut";
    } else {
      className = "unCrossed";
    }

    let crossOut = () => {
      this.setCrossedOut(place.id);
    }

    return (
      <Place
        key={place.id}
        id={place.id}
        name={place.name}
        className={className}
        crossOut={crossOut}
      />
    )
  });

    return (
      <div id="wishlist-div">
        <div className="row">
          <div className="small-12 small-centered columns text-center">
            <h3>Wanderlust Wishlist</h3>
              <ul className="list">{placesList}</ul>
          </div>

        </div>
      </div>
    );
  }
}

export default App;
