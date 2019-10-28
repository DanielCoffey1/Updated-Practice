import React, { Component } from 'react';

class Destination extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clicked: false
    }
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(){
    if(this.state.clicked){
      this.setState({clicked:false, className:""})
    } else {
      this.setState({clicked:true, className:"done"})
    }
  }


  render() {
    return(
      <div className={this.state.className} onClick={this.handleClick}>
      {this.props.name}
      </div>
    )
  }
}

export default Destination;
