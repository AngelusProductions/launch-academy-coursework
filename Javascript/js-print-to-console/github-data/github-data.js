let data = require('./data');

console.log (`There are ${data.length} repositories.`);

let sizes = data.map ( repository => {
  return repository.size;
});
data.forEach( repository => {
if ( repository.size == Math.max(...sizes) ) {
  console.log (`The largest repository is \"${repository.name}\" of size: ${repository.size}`);
}
});

function compare(a,b) {
  if (a.created_at < b.created_at) {
    return -1;
  } else if ( a.created_at > b.created_at) {
    return 1;
  } else {
  return 0;
  }
}
console.log(`\"${data.sort(compare)[data.length - 1].name}\" ` +
  `was the most recently created on ${new Date(data.sort(compare)[data.length - 1].created_at).toString()}` );

let repositoryDescriptions = data.map( repository => {
  return repository.description;
});
console.log(repositoryDescriptions);

let dataSummaries = data.map( repository => {
  return `Name is \"${repository.name},\" ${repository.watchers_count} watchers, owner is ${repository.owner}, `;
});
console.log(dataSummaries);
