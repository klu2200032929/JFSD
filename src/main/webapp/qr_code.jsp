<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>QR Code</title>
</head>
<body>
    <h1>Scan this QR Code to Pay</h1>
    <img th:src="'data:image/png;base64,' + ${qrCode}" alt="QR Code">
</body>
</html>
