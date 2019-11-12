function isHappy(a){
	t = parseInt(a);
	sum = parseInt(t);
	var flag = 0;
	count = parseInt(1);
	while((sum!=1) && (sum != 4)){
		x = Math.floor(sum);
		sum=0;
		while(x>0){
			sum += (x%10)*(x%10);
			x = Math.floor(x/10);
		}
		count += 1;
		
	}
	if(sum==1){
		alert("Your no is happy enough!!!");
	}else{
		alert("Why did you choose a sad no :(");
	}
}

var ip = document.getElementById("txt");
var btn = document.getElementById("btn");

var res="";

// btn.onclick() = function(){ 
// 	console.log("clicked");
// 	dis.innerText = "mohan";
// }


function checkString(){
	var val = document.getElementById("txt").value ;
	if(isNaN(val)){
		console.log("You have entered a string");
	}else{
		console.log("hay rama");
	}
}

function checkEmpty(){
	var val = document.getElementById("txt").value ;
	if(val.length >0){
		console.log("Not empty");
	}else{
		console.log("empty");
	}
}
function split(){
	var val = document.getElementById("txt").value ;
	var arr = val.split(" ");
	var l = arr.length ; 
	console.log(l);
	for(var x=0;x<l;x++){
		console.log(arr[x]);
	}
}

function getNum(){
	var x = prompt("input integers separated by commas.");
	var arr = x.split(",");
	var l = arr.length ; 
	console.log(l);
	for(var x=0;x<l;x++){
		arr[x] = parseInt(arr[x]);
		console.log(arr[x]);
	}
	arr.sort(function(a, b){
	    return a - b;
	});
	
	alert(arr);
}
//second last problem
function guessGame(){
	var arr = ['R','A','H','U','L'];
	var res = ['_','_','_','_','_'];
	var count= 0 ;
	while(count<5){
		var x = prompt("Guess the blank letter of :"+res);
		var flag = 0;
		for(var i=0;i<5;i++){
			if(arr[i] == x[0]){
				if(res[i]!=x[0]){
					res[i] = x[0];
					count++;
					console.log("Congrats you successfully gussed a char:) "+ res);
				}else{
					console.log("you have gussed the guessed char: "+res);
				}
			}

		}
	}
	alert("Congo man You have successfully guessed a name "+res);
	console.log("Congo man You have successfully guessed a name "+res);
}
guessGame();

// function isString(){
// 	var t = ip.value ;
// 	if(typeof(t) == "string"){
// 		dis.value = "You have enetred an string";
// 	}
// }

// var num = prompt("enter any number to check happy or sad :) or :(");
// isHappy(num);

