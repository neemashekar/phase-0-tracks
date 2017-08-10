function reverseStr(str){
	reversedStr = "";
	for (i = str.length-1; i > -1; i --){
		reversedStr += str[i];
	}
	return reversedStr;
}
newStr = reverseStr('Hello');
if (1 == 1)
	console.log(newStr);


