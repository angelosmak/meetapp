import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category"
export default class extends Controller {
  connect() {
  }

}
const searchForm = document.getElementById('search-form');
const searchInput = document.getElementById('search-input');

// Get all the category spans
const categorySpans = document.querySelectorAll('.category');

//newly added!

searchForm.addEventListener('submit', (event) => {
  // Prevent the form from submitting
  event.preventDefault();

  // Get the search query
  const query = searchInput.value.trim();

  if (query !== '') {
    // Submit the form with the search query
    searchForm.submit();
  } else {
    // Handle the case when the search query is empty
    console.log('Please enter a search query');
    window.location = '/events'; // Replace '/index' with the desired URL
  }
});
//newly added!



// Add click event listener to each category span
categorySpans.forEach(span => {
span.addEventListener('click', () => {

  console.log("click")
  const category = span.getAttribute('data-category');
  searchInput.value = category; // Set the query value to the category
  searchForm.submit(); // Submit the form
});
});
