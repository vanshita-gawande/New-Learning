document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("bookButtonDEL").addEventListener("click", function() {
        document.getElementById("bookingModalDEL").style.display = "block";
        // Hide the success message when the modal is opened
        document.getElementById("successMessageDEL").style.display = "none";
    });

    document.getElementById("closeModalDEL").addEventListener("click", function() {
        document.getElementById("bookingModalDEL").style.display = "none";
    });

    document.getElementById("bookingFormDEL").addEventListener("submit", function(e) {
        e.preventDefault();

        // Collect form data
        const name = document.getElementById("nameDEL").value;
        const date = document.getElementById("dateDEL").value;
        const time = document.getElementById("timeDEL").value;

        const formData = new FormData();
        formData.append("nameDEL", name);
        formData.append("dateDEL", date);
        formData.append("timeDEL", time);

        const xhr = new XMLHttpRequest();
        xhr.open("POST", "delux.php", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Handle the response from the server
                if (xhr.responseText === "success") {
                    // Booking was successful, display the success message
                    document.getElementById("bookingModalDEL").style.display = "none";
                    document.getElementById("successMessageDEL").style.display = "block";
                }
            }
        };
        xhr.send(formData);
    });
});