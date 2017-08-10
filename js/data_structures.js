// var colors = ["blue", "green", "purple", "red"];

// var horse_names = ["Mr. Ed", "Drogon", "Rhaegal", "Viserion"];

// colors.push("white");

// horse_names.push("BoJack");

// var colored_horses = {}

// horse_names.forEach(function(value, index) {
//   colored_horses[value] = colors[index];
// });

// console.log(colored_horses);

function Car(make, year, new_car) {
  console.log("Our new car:", this);

  this.make = make;
  this.year = year;
  this.new_car = new_car;

  this.vroom = function() { console.log("VRROOOOMMMMM!"); };
  this.rmrm = function() { console.log("rmrmrmrmrmrmrmrmrmrmrm"); };

  console.log("CAR INITIALIZATION COMPLETE!");
}

console.log("Let's build a car ...");

var first_car = new Car("Ford", 2018, true);
console.log(first_car);
console.log("Our car sounds noice:");
first_car.vroom();
console.log("----------------");

console.log("Let's build another car!");
var second_car = new Car("Packard", 1945, false);
console.log(second_car);
console.log("Our car sounds classically noice")
second_car.rmrm();
console.log("----------------");






