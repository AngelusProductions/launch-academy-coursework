import React, { Component } from 'react';
import TitleField from '../components/TitleField';
import BodyField from '../components/BodyField';

class ArticleFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      articleTitle: '',
      articleBody: '',
      error: ''
    }
    this.handleTitleChange = this.handleTitleChange.bind(this)
    this.handleBodyChange = this.handleBodyChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.handleClear = this.handleClear.bind(this)
  }

  handleTitleChange(event) {
    this.setState({articleTitle: event.target.value})
  }

  handleBodyChange(event) {
    this.setState({articleBody: event.target.value})
  }

  handleSubmit(event) {
    event.preventDefault()

    if (this.validateFormSubmission(event)) {
      let formPayload = { title: this.state.articleTitle,
                          body: this.state.articleBody }
      this.props.addNewArticle(formPayload)
      this.handleClear()
    }
  }

  handleClear() {
    this.setState({ articleTitle: '', articleBody: ''})
  }

  validateFormSubmission() {
    let valid = true;

    if (this.state.articleTitle === '' && this.state.articleBody === '') {
      this.setState({ error: "Please fill in fields." })
      valid = false
    } else if (this.state.articleTitle === '') {
      this.setState({ error: "Please fill in title." })
      valid = false
    } else if (this.state.articleBody === ''){
      this.setState({ error: "Please fill in body." })
      valid = false
    }

    return valid;
  }

  render() {
    return(
    <div className="new-article-form callout">
      <form onSubmit={this.handleSubmit}>
        <div className="error">{this.state.error}</div>
        <TitleField
          content={this.state.articleTitle}
          label="Article Title"
          name="article-title"
          handleTitleChange={this.handleTitleChange}
        />
        <BodyField
          content={this.state.articleBody}
          label="Article Body"
          name="article-body"
          handleBodyChange={this.handleBodyChange}
        />

        <div className="button-group">
          <input className="button" type="submit" value="Submit" />
        </div>
      </form>
      <button onClick={this.handleClear} className="button">Clear</button>
    </div>
    )
  }
}

export default ArticleFormContainer;
