var colors = ["green", "blue", "red", "yellow"];

var names = ["Ed", "Speedy", "EC", "Reggie"];


var horseHash = {}

for (var i = 0; i < colors.length; i++) {
  horseHash[names[i]] = colors[i];
}


// Driver code:

console.log(horseHash)

names.push("Baxter")

// Release 2: Build Many Objects Using a Constructor

function Car(make, model, year) {

  console.log("Our new car: ", this)

  this.make = make;
  this.model = model;
  this.year = year;

  this.honk = function(){
    console.log("*Honk Honk*");
  };

}

// Driver code:

var newCar = new Car("Honda", "Civic", 1990);

console.log(newCar);
newCar.honk();

var anotherCar = new Car("BMW", "3 series", 2002);

console.log(anotherCar);
anotherCar.honk();
