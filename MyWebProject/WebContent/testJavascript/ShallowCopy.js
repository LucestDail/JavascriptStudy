var user = {
    name : "hello",
    urls:{
        a:"abc",
        b:"bcd",
        d:"def"
    }
};
var copyObject = function(target){
    var result = {};
    for(var prop in target){
        result[prop] = target[prop];
    }
    return result;
}


var user2 = copyObject(user);
user2.name = "bye";
console.log(user.name === user2.name);

console.log(user.urls.a === user2.urls.a);
console.log("before : " + user.urls.b);
console.log("before : " + user2.urls.b);

user2.urls.b = "bbb";
console.log("after : " + user.urls.b);
console.log("after : " + user2.urls.b);
console.log(user.urls.b === user2.urls.b);


