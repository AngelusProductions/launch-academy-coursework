import React from 'react';

class NewTaskForm extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      task: {
        title: ''
      }
    }
    this.onSubmit = this.onSubmit.bind(this)
  }

  changeTitle(event){

  }

  onSubmit(event){
    event.preventDefault()
    this.props.handleNewTask(this.props.task)
  }

  render() {
    return (
      <form onSubmit={this.onSubmit} action="#">
        <input type="text" id="todo-title"
          onChange={this.props.handleTaskTitleChange}
          value={this.props.task.title} />
        <input type="submit" className="submit-button" value="Add Todo" />
      </form>
    )
  }
}

export default NewTaskForm