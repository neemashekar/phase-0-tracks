/*
Only execute function of the variable passed isn't empty
Loop through each element in array and compare the length 
of each string to the current longest string. If the string 
you are currently processing is longer than the current longest
string then set the longest string accordingly. Return the longest
string
*/
function longestStr(strArray){
	if(strArray != null)
	{	
		var longest = "";
		var arrayLen = strArray.length -1;
		for (var i = 0; i < arrayLen; i++){
			if(strArray[i].length > longest.length){
				longest = strArray[i];
			}
		}
		return longest;
	}	
}
/*
If the name value for object 1 matches the name value for object 
2 return true 
Else if the age value for obj 1 matches the age value for obj 2 
return true
Otherwise return false
*/
function keyValueMatch(obj1, obj2){
	if(obj1.name == obj2.name)
		return true;
	else if (obj1.age == obj2.age)
		return true;
	else
		return false;
}
/*
Initialize a new array of the specified length passed by parameter
using a for loop, add each randomly length genereated string to each
element in the array. Return the new array. 
*/
function randomArrayGenerator(integer){
	var array = new Array(integer);
	var x;
	var temp;
	for(var i = 0; i < integer; i++)
	{
		temp = "";
		x = Math.floor((Math.random() * 10) + 1);
		for(var y = 0; y < x; y++){
			temp += "a";
		}
		array[i]= temp; 
	}
	return array; 
}


//--------------DRIVER CODE FOR RELEASE 2----------------
var array = randomArrayGenerator(3);
console.log(array);


/*--------------DRIVER CODE FOR RELEASE 1----------------
var obj1 = {name: "Steven", age: 55};
var obj2 = {name: "Tami", age: 54};
if (keyValueMatch(obj1, obj2))
	console.log("true");
else
	console.log("false");
*/


//-------------DRIVER CODE FOR RELEASE 0----------------
//var stringArray = ["one", "two", "three", "four"];
//var x = longestStr(stringArray);
//console.log(x);
