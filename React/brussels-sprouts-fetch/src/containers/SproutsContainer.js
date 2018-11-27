import React, { Component } from 'react';
import RandomSprout from '../components/RandomSprout';
import SproutsIndex from '../components/SproutsIndex';

class SproutsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      recipe: "",
      recipes: [],
      longestName: ""
    }
  }

getRandomRecipe(){
  fetch('/api/v1/random-recipe')
    .then(response => {
      if (response.ok) {
      return response;
    } else {
      let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
      throw(error);
    }
  })
    .then(response => response.json())
    .then(body => {
      this.setState({ recipe: body, recipes: []})
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
}

  getAllRecipes(){
    fetch('/api/v1/recipes')
      .then(response => {
        if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
      .then(response => response.json())
      .then(body => {
        this.setState({ recipes: body, recipe: ""})
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  getLongestName() {
    fetch('/api/v1/longestName')
      .then(response => {
        if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
      .then(response => response.json())
      .then(response => {
        this.setState({ longestName: response });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){

    let handleRandomClick = () => {
      this.getRandomRecipe();
    }

    let handleIndexClick = () => {
      this.getAllRecipes();
    }

    let handleLongestNameClick = () => {
      this.getLongestName();
    }

    return(
      <div className="container">
        <h1>Sprout Fetcher</h1>
        <RandomSprout
          recipe={this.state.recipe}
        />
        <SproutsIndex
          recipes={this.state.recipes}
        />

        <div></div>

        <div className="buttons">
          <button onClick={handleRandomClick} className="btn">Get Random Recipe</button>

          <button onClick={handleIndexClick} className="btn">See All Recipes</button>

          <button onClick={handleLongestNameClick}>Longest Name</button>
        </div>
      </div>
    )
  }
}

export default SproutsContainer;
