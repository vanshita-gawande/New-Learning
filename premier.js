document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("bookButtonPRE").addEventListener("click", function() {
        document.getElementById("bookingModalPRE").style.display = "block";
        // Hide the success message when the modal is opened
        document.getElementById("successMessagePRE").style.display = "none";
    });

    document.getElementById("closeModalPRE").addEventListener("click", function() {
        document.getElementById("bookingModalPRE").style.display = "none";
    });

document.getElementById("bookingFormPRE").addEventListener("submit", function(e) {
    e.preventDefault();

    // Collect form data
    const name = document.getElementById("namePRE").value;
    const date = document.getElementById("datePRE").value;
    const time = document.getElementById("timePRE").value;

    const formData = new FormData();
    formData.append("namePRE", name);
    formData.append("datePRE", date);
    formData.append("timePRE", time);

    const xhr = new XMLHttpRequest();
    xhr.open("POST", "premier.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Handle the response from the server
            if (xhr.responseText === "success") {
                // Booking was successful, display the success message
                document.getElementById("bookingModalPRE").style.display = "none";
                document.getElementById("successMessagePRE").style.display = "block";
            }
        }
    };
    xhr.send(formData);
});
});