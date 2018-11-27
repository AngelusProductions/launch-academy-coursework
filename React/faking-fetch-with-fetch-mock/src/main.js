import './main.scss';
import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import WinterTodoList from './containers/WinterTodoList';

ReactDOM.render(
  <WinterTodoList />,
  document.getElementById('app')
);
