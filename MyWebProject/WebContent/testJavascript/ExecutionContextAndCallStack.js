var a = 1;
function outer(){
    function inner(){
        console.log("inner : " + a);
        var a = 3;
    }
    inner();
    console.log("outer : " + a);
}
outer();
console.log("main : " + a);