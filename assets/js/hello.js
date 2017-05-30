// This only works with the import and not the require.
//
// let Hello = {
//   sayHello(msg) {
//     console.log( msg);
//   }
// }
//
let Hello = {
  sayHello: function(msg) {
    console.log( msg);
  }
}
export default Hello;

