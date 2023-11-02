let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block"; // It displays the current slide (indexed by slideIndex - 1) by setting its display property to "block," making it visible.
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}


//    let slideIndex = 0;: This variable slideIndex is used to keep track of the current slide being displayed. It is initialized to 0.

 //showSlides();: This immediately invokes the showSlides function when the page loads to start the slideshow.

// function showSlides() { ... }: This is the main function responsible for displaying the slides.

//  It first selects all elements with the class "mySlides" and stores them in the slides variable.

//  It iterates over all the slides and sets their display property to "none," effectively hiding all of them.

//  It increments the slideIndex variable to move to the next slide.

//  It checks if slideIndex has exceeded the total number of slides. If it has, it resets slideIndex to 1, effectively looping back to the first slide.

//  It displays the current slide (indexed by slideIndex - 1) by setting its display property to "block," making it visible.

//  Finally, it schedules the showSlides function to run again after a 2-second delay (2000 milliseconds) using setTimeout. This creates the automatic slideshow effect.

// This code will cycle through the slides with the class "mySlides" every 2 seconds, showing one slide at a time and then moving to the next. To use this code, make sure you have the corresponding HTML structure with elements having the class "mySlides" to represent the individual slides.