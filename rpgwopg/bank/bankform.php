<form action=bank/viewaccount.php method="POST">
  <center>
  <p>Account Name:<input type="text" name="title" size="30" ></p>
  <input type="hidden" name="server" size="25" value="<?  print($server); ?>">
  <input type="hidden" name="s" size="25" value="<?  print($s); ?>">		
  <p><input type="submit" value="Check Account" name="B1"></p>

  </center>
</form>