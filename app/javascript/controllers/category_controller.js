import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('connected');
    const searchForm = document.getElementById('search-form');
    const searchInput = document.getElementById('search-input');
    const categorySpans = document.querySelectorAll('.category');

    // Add click event listener to each category span
    categorySpans.forEach(span => {
      span.addEventListener('click', () => {
        console.log("click");
        const category = span.getAttribute('data-category');
        searchInput.value = category; // Set the query value to the category
        searchForm.submit(); // Submit the form
      });
    });

    searchForm.addEventListener('submit', (event) => {
      event.preventDefault();
      const query = searchInput.value.trim();

      if (query !== '') {
        searchForm.submit();
      } else {
        console.log('Please enter a search query');
        window.location.href = '/events';
      }
    });
  }
}
