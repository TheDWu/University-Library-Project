<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Freq Checkout</title>
    <link rel="stylesheet" href="mostFreq.css">
</head>
<body>
    <div class="container">
        <div id="title">
            <h1>Cougar Library</h1>
        </div>
        <div id="buttons">
            <button class = "navButton" onclick="document.location='\\librarian-fees\\manage-fees.php'">Manage Fees</button>
            <button class = "navButton" onclick="document.location='\\librarian-fees\\report-fees.php'">Report Fees</button>
            <button class = "navButton" onclick="document.location='\\librarian-fees\\manage-items.php'">Manage Items</button>
            <button class = "navButton" onclick="document.location='\\librarian-fees\\alerts.php'">Alerts</button>
            <button class = "navButton" onclick="document.location='\\librarian-fees\\mostfreq.php'">Frequency Report</button>
        </div>
    </div>
    <div id="report">
        <h2>Most Frequently Checked-Out Items</h2>
        <label for="itemType">Item Type:</label>
        <select id="itemType">
            <option value="All">All</option>
            <option value="Book">Book</option>
            <option value="Textbook">Textbook</option>
            <option value="Laptop">Laptop</option>
            <option value="DVD">DVD</option>
            <option value="Calculator">Calculator</option>
        </select>
        <br>
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate">
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate">
        <button onclick="filterTable()">Filter</button>
        <p id="timePeriod"></p>
        <table id="checkoutTable">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Item Type</th>
                    <th>Number of Checkouts</th>
                </tr>
            </thead>
            <tbody>
            <?php
                session_start();
                $id = $_SESSION["ID"];
                $servername = "localhost";
                $username = "root";
                $password = "root1234";
                $dbname = "library";
        
                $conn = new mysqli($servername, $username, $password, $dbname);
                

                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                // Fetch data from database
                $sql = "SELECT title, item_type, num_checkouts FROM checkedout_items ORDER BY num_checkouts DESC";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // Output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["title"] . "</td>";
                        echo "<td>" . $row["item_type"] . "</td>";
                        echo "<td>" . $row["num_checkouts"] . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='3'>No items found</td></tr>";
                }

                $conn->close();
            ?>
            </tbody>
        </table>
        <p id="noResultsMessage" style="display: none; color: red;">No results found for the specified period.</p>
    </div>

    <script>
        function filterTable() {
            var startDate = document.getElementById('startDate').value;
            var endDate = document.getElementById('endDate').value;
            var tableRows = document.querySelectorAll('#checkoutTable tbody tr');

            // Parse dates to compare
            var startDateObj = new Date(startDate);
            var endDateObj = new Date(endDate);

            // Check if the provided dates are valid
            if (isNaN(startDateObj.getTime()) || isNaN(endDateObj.getTime())) {
                document.getElementById('timePeriod').innerText = "Invalid date";
                document.getElementById('noResultsMessage').style.display = 'none'; // Hide no results message if shown
                return;
            }

            // Display time period
            document.getElementById('timePeriod').innerText = `Time Period: ${startDate} to ${endDate}`;

            // Flag to track if any valid rows are found
            var validRowsFound = false;

            tableRows.forEach(function(row) {
                var itemType = row.cells[1].innerText; // Assuming item type is in the second column
                var checkoutDate = new Date(row.cells[2].innerText); // Assuming checkout date is in the third column

                if ((itemTypeFilter === 'All' || itemType === itemTypeFilter) &&
                    (checkoutDate >= startDateObj || startDate === '') &&
                    (checkoutDate <= endDateObj || endDate === '')) {
                    row.style.display = '';
                    validRowsFound = true; // At least one valid row is found
                } else {
                    row.style.display = 'none';
                }
            });

            // If no valid rows are found, display a message
            if (!validRowsFound) {
                document.getElementById('checkoutTable').style.display = 'none';
                document.getElementById('noResultsMessage').style.display = 'block';
            } else {
                document.getElementById('checkoutTable').style.display = 'table';
                document.getElementById('noResultsMessage').style.display = 'none';
            }
        }
    </script>
</body>
</html>