let number = prompt("Enter a number:");

number = Number(number);

if (number > 0) {
  console.log("The number is positive");
} else if (number < 0) {
  console.log("The number is negative");
} else if (number === 0) {
  console.log("The number is zero");
} else {
  console.log("Invalid input. Please enter a valid number!");
}
