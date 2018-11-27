import React from 'react';

const TitleField = (props) => {
  return (
    <label>{props.label}
      <input
        name={props.name}
        type='text'
        className="text-entry"
        value={props.content}
        onChange={props.handleTitleChange}
      />
    </label>
  );
}

export default TitleField;
