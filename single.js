document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("bookButtonSING").addEventListener("click", function() {
        document.getElementById("bookingModalSING").style.display = "block";
        // Hide the success message when the modal is opened
        document.getElementById("successMessageSING").style.display = "none";
    });

    document.getElementById("closeModalSING").addEventListener("click", function() {
        document.getElementById("bookingModalSING").style.display = "none";
    });

document.getElementById("bookingFormSING").addEventListener("submit", function(e) {
    e.preventDefault();

    // Collect form data
    const name = document.getElementById("nameSING").value;
    const date = document.getElementById("dateSING").value;
    const time = document.getElementById("timeSING").value;

    const formData = new FormData();
    formData.append("nameSING", name);
    formData.append("dateSING", date);
    formData.append("timeSING", time);

    const xhr = new XMLHttpRequest();
    xhr.open("POST", "single.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Handle the response from the server
            if (xhr.responseText === "success") {
                // Booking was successful, display the success message
                document.getElementById("bookingModalSING").style.display = "none";
                document.getElementById("successMessageSING").style.display = "block";
            }
        }
    };
    xhr.send(formData);
});
});