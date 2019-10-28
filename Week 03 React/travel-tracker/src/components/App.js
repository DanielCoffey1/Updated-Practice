import React, { useState } from 'react';
import data from '../constants/data';
import styles from '../stylesheets/app.css';
import Destination from '../components/Destination';

const App = props => {
  let destinations = props.data.places.map(destination => {

    return(
      <Destination key = {destination.id} name = {destination.name} />
    )
  })

  return (
    <div id="wishlist-div">
      <div className="row">
        <div className="small-12 small-centered columns text-center">
          <h3>Wanderlust Wishlist</h3>
              {destinations}
        </div>
      </div>
    </div>
  )
}

export default App;
