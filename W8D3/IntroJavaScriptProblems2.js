function titleize(arr, printCallback){
    for (let i of arr){
        printCallback(i);
    };
};

printCallback = function(name){
    console.log(`Mx. ${name} Jingleheimer Schmidt`);
};

// titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, arrayOfTricks){
    this.name = name;
    this.height = height;
    this.arrayOfTricks = arrayOfTricks;
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function(){
    this.height += 12;
};

Elephant.prototype.addTrick(trick) = function(){
    this.arrayOfTricks.push(trick);
};

Elephant.prototype.play = function(){
    let trick = this.arrayOfTricks[Math.floor(Math.random()*this.arrayOfTricks.length)];
    console.log(`${this.name} is ${trick}!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];