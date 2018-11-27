import React from 'react';

const BodyField = (props) => {
  return (
    <label>{props.label}
      <textarea
        name={props.name}
        value={props.content}
        className="text-entry"
        onChange={props.handleBodyChange}
      />
    </label>
  );
}

export default BodyField;
