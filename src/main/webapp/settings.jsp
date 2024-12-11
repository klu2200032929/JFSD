<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Settings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            padding: 20px;
            max-width: 900px;
            margin: auto;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            color: #388e3c;
        }

        form {
            margin-top: 20px;
        }

        .section {
            margin-bottom: 30px;
        }

        .section h2 {
            color: #388e3c;
            border-bottom: 2px solid #ddd;
            padding-bottom: 5px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            resize: vertical;
        }

        .button-group {
            margin-top: 20px;
            text-align: right;
        }

        .button-group button {
            padding: 10px 20px;
            background-color: #388e3c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button-group button:hover {
            background-color: #1abc9c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Admin Settings</h1>
        <form action="updateSettings.jsp" method="POST">
            <!-- Account Settings -->
            <div class="section">
                <h2>Account Settings</h2>
                <div class="form-group">
                    <label for="adminEmail">Admin Email</label>
                    <input type="email" id="adminEmail" name="adminEmail" value= "nacmadhav@gmail.com">
                </div>
                <div class="form-group">
                    <label for="adminPassword">Change Password</label>
                    <input type="password" id="adminPassword" name="adminPassword" value="root" >
                </div>
            </div>

            <!-- User Management -->
            <div class="section">
                <h2>User Management</h2>
                <div class="form-group">
                    <label for="registration">Allow New User Registrations</label>
                    <select id="registration" name="registration">
                        <option value="enabled">Enabled</option>
                        <option value="disabled">Disabled</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="defaultRole">Default Role for New Users</label>
                    <select id="defaultRole" name="defaultRole">
                        <option value="buyer">Buyer</option>
                        <option value="farmer">Farmer</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
            </div>

            <!-- Site Settings -->
            <div class="section">
                <h2>Site Settings</h2>
                <div class="form-group">
                    <label for="siteName">Site Name</label>
                    <input type="text" id="siteName" name="siteName" value="Agriapp">
                </div>
                <div class="form-group">
                    <label for="siteLogo">Site Logo URL</label>
                    <input type="text" id="siteLogo" name="siteLogo" placeholder="Enter logo URL">
                </div>
                <div class="form-group">
                    <label for="contactInfo">Contact Information</label>
                    <input id="contactInfo" name="contactInfo" value="nacmadhav@gmail.com" ></input>
                </div>
                <div class="form-group">
                    <label for="theme">Select Theme</label>
                    <select id="theme" name="theme">
                        <option value="light">Light</option>
                        <option value="dark">Dark</option>
                    </select>
                </div>
            </div>

            <!-- Notifications -->
            <div class="section">
                <h2>Notifications</h2>
                <div class="form-group">
                    <label for="emailNotifications">Enable Email Notifications</label>
                    <select id="emailNotifications" name="emailNotifications">
                        <option value="enabled">Enabled</option>
                        <option value="disabled">Disabled</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="smsNotifications">Enable SMS Notifications</label>
                    <select id="smsNotifications" name="smsNotifications">
                        <option value="enabled">Enabled</option>
                        <option value="disabled">Disabled</option>
                    </select>
                </div>
            </div>

            <!-- Security -->
            <div class="section">
                <h2>Security</h2>
                <div class="form-group">
                    <label for="twoFactorAuth">Enable Two-Factor Authentication</label>
                    <select id="twoFactorAuth" name="twoFactorAuth">
                        <option value="enabled">Enabled</option>
                        <option value="disabled">Disabled</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="passwordPolicy">Password Policy</label>
                    <textarea id="passwordPolicy" name="passwordPolicy" placeholder="Enter password policy"></textarea>
                </div>
            </div>

            <!-- Data Management -->
            <div class="section">
                <h2>Data Management</h2>
                <div class="form-group">
                    <label for="backup">Backup Data</label>
                    <button type="button">Download Backup</button>
                </div>
                <div class="form-group">
                    <label for="restore">Restore Data</label>
                    <input type="file" id="restore" name="restore">
                </div>
            </div>

            <!-- Save Changes Button -->
            <div class="button-group">
                <button type="submit">Save Changes</button>
            </div>
        </form>
    </div>
</body>
</html>
