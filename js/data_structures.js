var colors = ['red', 'blue', 'green', 'indigo'];
var names = ['ralph', 'bojack', 'gerald', 'ian'];

colors[colors.length] = 'pink';
names[names.length] = 'paul';
if(colors.length == names.length){
	var horses = {};
	var temp = '';
	for(var i = 0; i < colors.length; i++){
		temp = names[i];
		horses.temp = colors[i];
		console.log(horses.temp);
	}

}

function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;

	this.honk = function() {console.log("honk!");
		};
}
var car1 = new Car("Toyota", "Prius", "2015");
var car2 = new Car("Honda", "Civic", "2010");
var car3 = new Car("Porsche", "Macaan", "2015");
console.log(car1);
console.log(car2);
console.log(car3);
car3.honk();