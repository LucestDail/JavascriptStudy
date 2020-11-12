var copyObject = function(target){
    var result = {};
    for(var prop in target){
        result[prop] in target[prop];
    }
    return result;
}

var user = {
    name : "jaenam",
    gender: "male"
};

var user2 = copyObject(user);
user2.name = "jung";

if(user !== user2){
    console.log("user information has been changed");
}
console.log(user.name, user2.name);
console.log(user === user2);