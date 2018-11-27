removeWithoutCopy = (arr, item) => {

  arr.filter{}

  let arr2 = [];
  arr.forEach( (element, index) => {
    if (element != item) {
      arr2.push(index);
    }
  });
  return arr2;
  // arr.forEach(element => {
  //   if (element == item) {
  //     arr.pop(element);
  //   }
  // });
  // return arr;
  //
  // let arr2 = arr.replace(/item/g, 1);
  // return arr2;
  // return arr.replace(/item/g, "");
  // for( i=0; i = arr.length-1; i++){
  //   if ( arr[i] === item) {
  //     arr.splice(i, 1);
  //   }
  // }
  // return arr;
};

append = (arr, item) => {
  arr.push(item);
  return arr;
};

truncate = (arr) => {
  arr.pop();
  return arr;
};

prepend = (arr, item) => {
  arr.unshift(item);
  return arr;
};

curtail = (arr) => {
  arr.shift();
  return arr;
};

concat = (arr1, arr2) => {
  return arr1.concat(arr2);
};

insert = (arr, item, index) => {
  arr.splice(index, 0, item);
  return arr;
}

count = (arr, item) => {
  count = 0;
  arr.forEach( element => {
    if (element == item) {
      count++;
    }
  })
  return count;
};

duplicates = (arr) => {
  dup = [];
  arr2 = [];
  arr.forEach( element => {
    if (arr2.includes(element)) {
      if (!dup.includes(element)) {
        dup.push(element);
      }
    } else {
      arr2.push(element);
    }
  })
  return dup;
};

square = (arr) => {
  let arr2 = arr.map( element => {
    return Math.pow(element, 2);
  });
  return arr2;
};

findAllOccurrences = (arr, item) => {
  occurences = [];
  index = 0;
  arr.forEach( element => {
    if (element == item) {
      occurences.push(index);
    }
    index++;
  })
  return occurences;
};
