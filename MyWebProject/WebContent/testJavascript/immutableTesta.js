var user = {
    name : "jaenam",
    gender: "male"
};

var changeName = function(user,newName){
    return{
        name:newName,
        gender:user.gender
    };
};

var user2 = changeName(user, "jung");

if(user !== user2){
    console.log("user information has been changed");
}
console.log(user.name, user2.name);
console.log(user === user2);