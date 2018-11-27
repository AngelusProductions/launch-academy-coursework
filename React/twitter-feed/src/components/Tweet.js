import React from 'react';

const Tweet = props => {

  let date = new Date(props.timestamp_ms * 1000);
  let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

  let replyAlert = function replyAlert() {
    alert("Reply");
  };

  let moreAlert = function moreAlert () {
    alert("More");
  };

  let heart;
  let favoritedHeart = function favoritedHeart () {
    alert("Favorite");
  };

  let retweet;
  let retweetedArrow = function retweetedArrow () {
    alert("Retweet");
  };

    if (props.favorited) {
      heart = <button class="icon" onClick={favoritedHeart}><i className="fas fa-heart red" ></i></button>;
    } else {
      heart = <button class="icon" onClick={favoritedHeart}><i className="fas fa-heart black"></i></button>;
    }

    if (props.retweeted) {
      retweet = <button class="icon" onClick={retweetedArrow}><i className="fas fa-retweet green" ></i></button>;
    } else {
      retweet = <button class="icon" onClick={retweetedArrow}><i className="fas fa-retweet black"></i></button>;
    }

  let pictureSource;
  let text = props.text;
  if (props.entities.media) {
    let displayURL = props.entities.media[0].display_url;
    text = text.replace(displayURL, "");
    pictureSource = props.entities.media[0].media_url;
  };

  return (
      <div id="tweet" key={props.id}>

        <img id="proPic" src={props.user.profile_image_url} />

        <div id="elements">
        <div id="header">
            <span id="userName">{props.user.name}</span>
            @{props.user.screen_name}
             • {months[date.getMonth() + 1]} {date.getDay()}
           </div>

          {text}

          <img id="media" src={pictureSource} />

          <div id="icons">
            <button class="icon" onClick={replyAlert} ><i className="fas fa-reply"></i></button>
            {props.retweet_count}{retweet}
            {props.favorite_count}{heart}
            <button onClick={moreAlert}><i className="fas fa-ellipsis-h"></i></button>
          </div>

        </div>
      </div>
  )
};

export default Tweet;
