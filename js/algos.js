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

  for (var i = 0; i < array.length; i++){
    if (longest.length < array[i].length){
      longest = array[i];
    }
  }

  return longest;
}

// input: two objects
// output: a boolean
// steps:
  // create a function with two objects as parameters
  // compare key-value pairs to eachother
  // if any key-value pair match return true
  // if no key-value pairs match return false

function match_key_value(obj1, obj2) {

  for (var key in obj1){
    if (obj1[key] == obj2[key]){
      return true;
    }
  }
  return false;
}

// input: a integer for length
// output: an array of strings of the given length
// steps:
  // create a function with an integer as a parameter
  // create a new array
  // create an alphabet
  // create random words based on the integer given
  // return new array with added words

function random_word_gen(integer) {

  var words = [];

  for (var i = 0; i < integer; i++){

    var alphabet = ["a","b","c","d","e","f","g","h","i","j",
                    "k","l","m","n","o","p","q","r","s","t",
                    ,"v","w","x","y","z"];

    var random_num = Math.floor((Math.random() * 10) + 1);
    var random_num2 = Math.floor((Math.random() * 10) + 1) + random_num;

    my_strings = alphabet.slice(random_num, random_num2).join("")
    words.push(my_strings);

  };

  return words;

}



// ---------------------------------------------------

// Driver code: Find the Longest Phrase

console.log(longest_char(["I","Love","You"]))
console.log(longest_char(["Hello","How","Are","You"]))
console.log(longest_char(["Get","Down","Tonight"]))

// Driver code: Find a Key-Value Match

console.log(match_key_value({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(match_key_value({nam: "Buddy", age: 34}, {name: "Tamir", age: 54}))
console.log(match_key_value({nam: "Buddy", age: 54}, {name: "Tamir", age: 54}))

// Driver code: Generate Random Test Data

console.log(random_word_gen(4))


for (var i = 0; i < 10; i++){
  words = random_word_gen(3);
  console.log(words)
  results = longest_char(words);
  console.log(results)
}
