<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
     body {
    font-family: 'Poppins', sans-serif;
    background: rgb(2,0,36);
    background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background-color: #fff;
    padding: 30px;
    max-width: 400px;
    width: 100%;
    border-radius: 10px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

h3 {
    text-align: center;
    font-size: 25px;
    font-weight: 500;
    color: #333;
    margin-bottom: 20px;
    position: relative;
}

h3::before {
    content: "";
    position: absolute;
    left: 50%;
    bottom: -10px;
    width: 40px;
    height: 3px;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    transform: translateX(-50%);
}

label {
    font-weight: bold;
    font-size: 14px;
    color: #333;
}

.form-control {
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: border-color 0.3s ease;
}

.form-control:focus {
    border-color: #9b59b6;
}

.button-container {
    text-align: center;
    margin-top: 20px;
}

button[type="submit"],
button[type="reset"] {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.btn-primary {
    background: rgb(2,0,36);
    background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);
    color: white;
    font-weight: bold;
}

.btn-primary:hover {
    transform: scale(1.05);
}

.btn-secondary {
    background-color: #f44336;
    color: white;
}

.btn-secondary:hover {
    background-color: #d32f2f;
    transform: scale(1.05);
}

/* Responsive Design */
@media (max-width: 480px) {
    .form-container {
        width: 90%;
        padding: 20px;
    }
    h3 {
        font-size: 20px;
    }
    button[type="submit"],
    button[type="reset"] {
        width: 100%;
        margin-top: 10px;
    }
}


    </style>
</head>
<body>

    <%@include file="mainnavbar.jsp" %>

    <!-- Centered form container -->
    <div class="form-container">
        <h3><u>Employee Login</u></h3>
        <form method="post" action="checkemplogin">
            <div class="form-group">
                <label for="eemail">Enter Email</label>
                <input type="text" class="form-control" id="eemail" name="eemail" required>
            </div>
            <div class="form-group">
                <label for="epwd">Enter Password</label>
                <input type="password" class="form-control" id="epwd" name="epwd" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Login</button>
                <button type="reset" class="btn btn-secondary">Clear</button>
            </div>
        </form>
    </div>

</body>
</html>
