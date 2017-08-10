var colors = ["blue", "green", "purple", "red"];

var horse_names = ["Mr. Ed", "Drogon", "Rhaegal", "Viserion"];

colors.push("white");

horse_names.push("BoJack");

var colored_horses = {}

horse_names.forEach(function(value, index) {
  colored_horses[value] = colors[index];
});

console.log(colored_horses);

