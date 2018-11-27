import React from 'react';
import Tweet from '../components/Tweet'

const TwitterFeed = (props) => {
  let accounts = props.data.map( account => {
    return <Tweet
            key={account.id_str}
            id={account.id_str}
            text={account.text}
            user={account.user}
            retweet_count={account.retweet_count}
            favorite_count={account.favorite_count}
            entities={account.entities}
            favorited={account.favorited}
            retweeted={account.retweeted}
            timestamp_ms={account.timestamp_ms}
          />
  });

  return(
    <div>
      {accounts}
    </div>
  )
};

export default TwitterFeed;
