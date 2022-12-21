<html>  
    <head>
    <style>
    body {
	font-family: Arial, Helvetica, sans-serif;
	background: linear-gradient(120deg , #2989b9,#8e44ad);
	
	background-size: cover;
	width: 100vw;
	height: 100vh;
    background: url("img/img2.jpg")
}
form {
	background-color: rgba(0, 0, 0, 0.9);
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 80px;
	border-radius: 15px;
	color: #fff;
}
button {
	padding: 15px;
	border: none;
	outline: none;
	font-size: 15px;
}
button {
	background-color: #a51b0b;
	border: none;
	padding: 15px;
	width: 100%;
	border-radius: 10px;
	color: white;
	font-size: 15px;
}
button:hover {
	background-color: deepskyblue;
	cursor: pointer
	
	

  }
  

  </style>
</head>
<body>

<form  action="login.php" method="post"> 
    
      <label for="uname"><b>E-mail</b></label>
      <input type="text" placeholder="E-mail" name="email" id="email" required>
 <br>
      <label for="psw"><b>Senha</b></label>
      <input type="password" placeholder="Senha" name="senha" id="senha" required>
      <br>
        
      <button  type="submit">Entrar</button>
            
      
  </form>
    
     
     
</body>
</html>
<head>

</head>
<body>
    <?php
  