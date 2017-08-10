function reverseStr(str){
	var reversedStr = "";
	for (var i = str.length-1; i > -1; i --){
		reversedStr += str[i];
	}
	return reversedStr;
}
var newStr = reverseStr('Hello');
if (1 == 1)
	console.log(newStr);


