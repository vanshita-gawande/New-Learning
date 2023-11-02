document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("bookButtonSUI").addEventListener("click", function() {
        document.getElementById("bookingModalSUI").style.display = "block";
        // Hide the success message when the modal is opened
        document.getElementById("successMessageSUI").style.display = "none";
    });

    document.getElementById("closeModalSUI").addEventListener("click", function() {
        document.getElementById("bookingModalSUI").style.display = "none";
    });

document.getElementById("bookingFormSUI").addEventListener("submit", function(e) {
    e.preventDefault();

    // Collect form data
    const name = document.getElementById("nameSUI").value;
    const date = document.getElementById("dateSUI").value;
    const time = document.getElementById("timeSUI").value;

    const formData = new FormData();
    formData.append("nameSUI", name);
    formData.append("dateSUI", date);
    formData.append("timeSUI", time);

    const xhr = new XMLHttpRequest();
    xhr.open("POST", "suite.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Handle the response from the server
            if (xhr.responseText === "success") {
                // Booking was successful, display the success message
                document.getElementById("bookingModalSUI").style.display = "none";
                document.getElementById("successMessageSUI").style.display = "block";
            }
        }
    };
    xhr.send(formData);
});
});