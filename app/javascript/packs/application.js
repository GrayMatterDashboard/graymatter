/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker')
console.log('what env am I: ', process.env.NODE_ENV)

if (process.env.NODE_ENV !== 'production') {
  process.env.BASE_URL = "http://localhost:3000/";
} else {
  process.env.BASE_URL = "https://staging-graymatter.herokuapp.com/"
  //   process.env.BASE_URL = "https://prod-graymatter.herokuapp.com/"
}

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext)