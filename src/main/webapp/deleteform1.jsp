<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
    <link rel="stylesheet" href="css1.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style>
        .modal-success {
            color: green;
        }
        .modal-fail {
            color: red;
        }
        .close-button {
            background-color: violet;
            border-color: violet;
        }
    </style>
</head>
<body>

<div class="container-fluid pad">
    <div class="row">
        <div class="col-md-4 center-container">
            <div class="form-container">
                <h2 class="form-subtitle">DELETE STUDENT</h2>
                <form action="DeleteStudentByIdController" method="post">
                    <label for="id">Enter Student ID:</label>
                    <input type="text" id="id" name="id" required>
                    <br>
                    <br>
                    <button type="submit" class="form-button">Search</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="statusModal" tabindex="-1" role="dialog" aria-labelledby="statusModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusModalLabel">Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <span class="${statusClass}">${message}</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary close-button" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        var message = "${message}";
        if (message !== "") {
            var statusClass = "${statusClass}";
            $('#statusModal').modal('show');
        }
    });
</script>

</body>
</html>
