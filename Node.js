function age(num) {
  if (num < 99) {
    let yearOfBirth = getFullYear() - num;
    return yearOfBirth;
  }
}

process.stdin.resume();
process.stdin.setEncoding("utf8");

console.log("What is your age? ");
process.stdin.on("data", num => {
  console.log("You were born in " + age(num));
  process.exit();
});
