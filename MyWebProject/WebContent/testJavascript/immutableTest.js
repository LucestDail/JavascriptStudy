var user = {
    name : "Jaenam",
    gender: "male"
};

var changeName = function(user,newName){
    var newUser = user;
    newUser.name =newName;
    return newUser;
};

var user2 = changeName(user,"jung");

if(user !== user2){
    console.log("user information has been changed");
}

console.log(user.name, user2.name);
console.log(user === user2);