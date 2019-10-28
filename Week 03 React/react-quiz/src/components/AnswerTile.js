import React from 'react';

const AnswerTile = props => {
  return(
    <div>
      <ul>
        <li onClick={props.handleClick} className={props.className} />
          <button> {props.body} </button>
      </ul>
    </div>
  )
}

export default AnswerTile;
