// input: string
// output: reverse string
// steps:
    // - create a function that takes a string as an argument
    // - iterate through each letter of string and print the string backwards

function reverse(string) {
  var str = "";

  for (var i = string.length -1; i >= 0; i--) {
    str += string[i];
  }

  return str;
}

// driver code

var reverse_str = reverse("hello")
console.log(reverse_str)

var i = 0
if (i == 0) {
    console.log(reverse_str)
}
