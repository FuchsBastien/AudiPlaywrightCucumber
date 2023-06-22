const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');


function isItFriday(today) {
    if (today === "Friday") {
        return "Yeah";
    } else {
        return "Nope";
    }
}

Given('today is {string}', function (givenDay) {
    this.today = givenDay;
  });

/*Given('today is Sunday', async function () {
    //this. veut dire que la variable est globale donc accessible dans une autre fonction
    this.today = 'Sunday';
    //return 'pending';
});

Given('today is Friday', function () {
    this.today = 'Friday';
     //return 'pending';
}); */

When("I ask whether it's Friday yet", async function () {
    this.actualAnswer = isItFriday(this.today);
    //return 'pending';
});

Then('I should be told {string}', async function (expectedAnswer) {
    assert.strictEqual(this.actualAnswer, expectedAnswer);
    //return 'pending';
});
  
