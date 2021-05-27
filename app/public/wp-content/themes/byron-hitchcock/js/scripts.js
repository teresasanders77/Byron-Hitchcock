// Our modules / classes
import NavBar from "./modules/NavBar"



// Instantiate a new object using our modules/classes
var navBar = new NavBar()


// Allow new JS and CSS to load in browser without a traditional page refresh
if (module.hot) {
  module.hot.accept()
}