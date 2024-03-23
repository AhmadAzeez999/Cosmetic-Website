$(document).ready(function () 
{
    $("form").submit(async function (event) 
    {
        $(".error-message").text("");

        var isValid = true;

        var name = $("#name").val();
        if (name.trim() === "") 
        {
            $("#nameError").text("Please enter your name.");
            isValid = false;
        }

        var email = $("#email").val();
        if (!isValidEmail(email)) 
        {
            $("#emailError").text("Please enter a valid email address.");
            isValid = false;
        } 
        else 
        {
            var available = await checkEmailAvailability(email);
            if (!available) 
            {
                $("#emailError").text("This email is already in use. Please choose another.");
                isValid = false;
            }
        }

        if (isValid) 
        {
            var password = $("#password").val();
            if (!isValidPassword(password)) 
            {
                $("#passwordError").text("Please enter a valid password (at least 6 characters, one letter, and one number).");
                isValid = false;
            }

            var passwordConfirmation = $("#password_confirmation").val();
            if (password !== passwordConfirmation) 
            {
                $("#passwordConfirmationError").text("Passwords do not match.");
                isValid = false;
            }
        }

        if (!isValid) 
        {
            event.preventDefault();
        }
    });

    function isValidEmail(email) 
    {
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }

    function isValidPassword(password) 
    {
        var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
        return passwordRegex.test(password);
    }

    function checkEmailAvailability(email) 
    {
        var isAvailable = false;
    
        $.ajax(
        {
            url: 'validate-email.php',
            type: 'GET',
            data: { email: email },
            dataType: 'json',
            async: false,
            success: function (data) 
            {
                isAvailable = data.available;
            },
            error: function () {}
        });
    
        return isAvailable;
    }
});
