<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f7f7f7;
        }

        .success-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 500px;
            width: 100%;
            text-align: center;
            animation: fadeIn 0.5s ease-in-out;
        }

        .success-container h3 {
            font-size: 28px;
            color: #28a745;
            margin-bottom: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Using HTML entity for checkmark */
        .success-container h3::before {
            content: "\u2713"; /* Checkmark entity for UTF-8 */
            color: #28a745;
            font-size: 32px;
            margin-right: 10px;
        }

        .success-container p {
            font-size: 18px;
            color: #555;
            margin-bottom: 30px;
        }

        .success-container button {
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .success-container button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        /* Fade-in Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .success-container h3 {
                font-size: 24px;
            }

            .success-container p {
                font-size: 16px;
            }

            .success-container button {
                width: 100%;
                padding: 12px 0;
            }
        }

        @media (max-width: 480px) {
            .success-container h3 {
                font-size: 20px;
            }

            .success-container p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="success-container">
        <h3>Registration Successful</h3>
        <p>Your account has been successfully created. You can now log in using your credentials.</p>
        <button onclick="location.href='emplogin'">Proceed to Login</button>
    </div>

</body>
</html>
