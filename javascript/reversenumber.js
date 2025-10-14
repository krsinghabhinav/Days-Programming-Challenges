let number = 23232434;
let reverse = 0;

while (number > 0) {
  const rem = number % 10;
  reverse = reverse * 10 + rem;
  number = (number / 10) | 0;
}

console.log(`Reverse is ${reverse}`);
