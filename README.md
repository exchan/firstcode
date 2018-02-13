Project Exchange

Thank you for your purchase of ProjectEX! If you need support please send a message via the site you purchased from!

THIS IS FOR INTERNAL USE ONLY AS DIRECTED BY THE AUTHOR

Laravel 4 Framework Powered MySQL Altcoin Cryptocurrency Exchange

Features:

Homepage with price tickers and statistics (signup and login)
Market
Market Pairs (BTC/LTC, BTC/DRK, etc.)
Wallets (Connects to wallet daemons via jsonRPC)
User Profile
User Two Factor Authentication (Authy)
User Verification
User Register or Login
User Forgot Password
User Reset Password
reCaptcha on Register, Login, Forgot Password pages


Admin Panel Features:
Ban, Edit, or Delete Users
Add/Edit Wallets
Add/Edit Markets/Pairs
Edit/Add Fees
General Site Settings (Google reCaptcha API Keys and Pusher API Keys)
Manage Orders
Manage Users
Manage News
Manage Pages


HOW TO RUN LOCALLY:

php artisan serve (Starts on http://localhost:8000)
To start Laravel Application

MySQL runs on localhost as -u root and -p root as default
Migrations can be found under database/migrations
Migrations can also be generated if new tables are added with the migration:generate command

node nodeServer.js (Starts on localhost:8081)
Node Server for socket.io Trade Engine
Located in public/assets/websockets/nodeServer.js


Other Thoughts TODO: (Only for administrator)
Frontend Design
Fix homepage
Fix footer
API Pages
Animations
Responsive Rework
Remove Verifications
Redesign Admin Panel
