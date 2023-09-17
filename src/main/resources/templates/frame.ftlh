<#macro frame>

<!DOCTYPE html>
<html>
<head>
<title>HTMX-Testing</title>

<!-- CDN HTMX -->
<script src="https://unpkg.com/htmx.org@1.9.5" integrity="sha384-xcuj3WpfgjlKF+FXhSQFQ0ZNr39ln+hwjN3npfM9VBnUskLolQAcN80McRIVOPuO" crossorigin="anonymous"></script>

<!-- CDN PicoCss -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css">

</head>

<body style="display: flex; flex-direction: column; align-items: center">
<#nested>
</body>

</html>


</#macro>