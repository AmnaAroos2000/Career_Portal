 <head>  
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <script>

        // Make functioning a Search Field
      
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });

   </script>
</head>

  <body>
    
    <input id="myInput" type="text" placeholder="Search..">
    
    <tbody id="myTable">
      
      <-- Within the tag, write your code, what you are searching for -->
      
    </tbody>
           
    
  </body>
