import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

import style from './styles/app.scss'

import Wrapper from './components/Wrapper';
import Picture from './components/Picture';
import List from './components/List';
import Numbers from './components/Numbers';
import Box from './components/Box'

let wrapperParagraph = "Get a dog little Oggie, get a dog..."

ReactDOM.render(
<div>
  <div>
    <Wrapper
    header="I am a wrap god"
    paragraph={wrapperParagraph}/>
  </div>

  <div>
  <Box
  boxClass='wrapper'
  header='I Am the Wrapper'
  paragraph={wrapperParagraph}
  />
  </div>
</div>,
  document.getElementById('app')
);
