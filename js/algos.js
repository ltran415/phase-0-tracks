// input: an array of words
// output: longest word in the array
// steps:
  // create a function that takes an array of words or phrase as a parameter
  // iterate through the array to find the length of each string
  // create a varible for the longest string and set it to nothing
  // compare the longest string varible with the array object's length
  // if the length is greater than the longest string varible then add it, otherwise skip
  // return the longest string varible 

function longest_char(array){
  var longest = "";

  for(var i =0; i < array.length; i++){
    if (longest.length < array[i].length){
      longest = array[i];
    }
  }

  return longest;
}

console.log(longest_char(["I","Love","You"]))
console.log(longest_char(["Hello","How","Are","You"]))
console.log(longest_char(["Get","Down","Tonight"]))
