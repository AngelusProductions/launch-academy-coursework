import React from 'react';
import NewTaskForm from './NewTaskForm'

class WinterTodoList extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      tasks: [],
      newTask: {title: ''},
      newTaskErrors: []
    }
    this.handleNewTask = this.handleNewTask.bind(this)
    this.handleTaskTitleChange = this.handleTaskTitleChange.bind(this)
  }

  componentDidMount(){
    fetch('/api/v1/tasks').then(resp => {
      if(resp.ok){
        return resp
      }
    }).then(resp => resp.json()).then(json => {
      this.setState({tasks: json})
    })
  }

  handleNewTask(task){
    fetch('/api/v1/tasks', {
      method: 'POST',
      body: JSON.stringify({
        title: task.title
      })
    }).then(resp => {
      if(resp.ok || resp.status === 422) {
        return resp
      }
    }).then(resp => resp.json()).then(json => {
      if(json.errors){
        this.setState({
          newTaskErrors: json.errors
        })
      }
      else {
        this.setState({
          tasks: this.state.tasks.concat(json),
          newTask: {title: ''},
          newTaskErrors: []
        })
      }
    })
  }

  handleTaskTitleChange(event){
    this.setState({
      newTask: { title: event.currentTarget.value }
    })
  }

  render() {
    //build the list of tasks based on what's in state
    let taskItems = this.state.tasks.map(task => {
      return (
        <li key={`task-list-${task.id}`}>
          <a href="#">{task.title}</a>
        </li>)
    })

    //if there are tasks to list, place them in an ordered list
    let taskList
    if(taskItems.length > 0){
      taskList = (<ol>{taskItems}</ol>)
    }

    //build the list of errors if they're present
    let errorListItems = this.state.newTaskErrors.map(error => {
      return (<li>{error}</li>)
    })

    //if there are errors, place them in an unordered list
    let errorsList
    if(errorListItems.length > 0){
      errorsList = (<ul className="errors">{errorListItems}</ul>)
    }

    return (
      <div>
        <h2>Winter Todo List</h2>
        {taskList}
        {errorsList}
        <NewTaskForm
          task={this.state.newTask}
          handleTaskTitleChange={this.handleTaskTitleChange}
          handleNewTask={this.handleNewTask} />
      </div>
    )
  }
}

export default WinterTodoList;
