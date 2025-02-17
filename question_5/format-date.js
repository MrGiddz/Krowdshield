/**
 *
 * @param {string | number} date
 *
 * For this question, I will be adding a check to ensure that the correct data type is provided in the paramater and also ensure that the funtion returns a string value.
 *
 * It will throw an error if the wrong data type is provided
 * @throws string
 * @returns string
 */
function formatDate(date) {
  const isValidDate = Date.parse(date);
  if (!isValidDate) throw new Error("Invalid date provided.");
  let options = {
    year: "numeric",
    month: "2-digit",
    day: "2-digit",
    timeZone: "UTC",
  };
  return new Date(date).toLocaleDateString("en-US", options);
}
console.log(formatDate("2024-04-10T14:30:00Z")); //Valid Date
// console.log(formatDate("")); //Invalid Date
console.log(formatDate({})); //Invalid Date
console.log(formatDate("12")); //Invalid Date
