import React, { Component } from 'react';
import ArticleTile from '../components/ArticleTile';
import ArticleFormContainer from '../containers/ArticleFormContainer';

class ArticlesIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      articles: []
    }
    this.addNewArticle = this.addNewArticle.bind(this)
  }

  componentDidMount() {
    fetch('/api/v1/articles')
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
      this.setState({articles: body})
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  addNewArticle(formPayload) {
    fetch('/api/v1/articles', {
      method: 'post',
      body: JSON.stringify(formPayload)
    })
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
        console.log('Fetch Post Successful');
        console.log(body);
        this.setState({ articles: this.state.articles.concat(body) })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


  render() {
    let articles = this.state.articles.map(article => {
      return(
        <ArticleTile
          key={article.id}
          id={article.id}
          title={article.title}
          body={article.body}
        />
      )
    })

    return(
      <div className="row">
        <div className="small-8 small-centered columns">
          <h1>My Blog!</h1>
          <hr/>
          {articles}
          <ArticleFormContainer addNewArticle={this.addNewArticle} />
        </div>
      </div>
    )
  }
}

export default ArticlesIndexContainer;
