<html>

<head>

</head>
<style>
  body{
    background: url("img/natal.jpg");
    color:white;

  }
</style>

<body>

    <?php
    // Executa a conexao com o mysql e selecionar a base
    include_once 'conect.cfg';

    session_start(); //faz o arquivo iniciar a sessao com o browser

    // pega dados via POST
    // Recebe o valor do email
    $email = $_POST["email"];
    // Recebe o valo do email
    $senha = $_POST["senha"];
    // Converte a senha em um hash criptografado de MD5
    $senha = md5($senha);
    //montar a instrução para ir ao banco
    //e selecionar o usuario que tenha este email
    $sql = "select * from users where email = '$email' AND senha = '$senha' ";

    //executar conexao e roda a query sql
    $resultado = mysqli_query($con, $sql);

    if (mysqli_num_rows($resultado) == 1) {

        // Variavel $row recebe o conteudo do array gerado pelo banco
        $row = mysqli_fetch_array($resultado);

        //enviar dados recebidos do banco de dados para a sessão iniciada
        $_SESSION["email"] = $row["email"];
        $_SESSION["perfil"] = $row["perfil"];
        $_SESSION["tempo"] = time();

        //encontrou
        //vou redirecionar o usuario para a pasta do sistema
        if ($_SESSION["perfil"] == "2") {
            //$logado = $conteudo_adm ;
            // Cria o formulario cadastrar e Alterar Senha
            echo '<h1>Cadastrar usuario</h1>
                 <form action="cad_usuario.php" method="post">
                 Nome
                          <input type="text" name="nome" id="nome" required>
                 Email
                          <input type="text" name="email" id="email"  required>
                      Senha
                          <input type="password"  name="senha" id="senha"  required>
                          <span >Perfil:</span>
                          </div>					
		<select name="perfil" id="perfil" class="browser-default custom-select">
		  <option value="0" selected="selected">Aluno</option> 
		  <option value="1">Professor</option>
          <option value="2">Coordenador</option>
		  </select>
					
                        <button type="submit" >Cadastrar</button>   
                        
                    <h1>Alterar Senha</h1>
                </form>
                 
                 <form action="alt_senha.php" method="post">
                 
                 Email
                          <input type="text" name="email" id="email"   required>
                          <p></p>
                      Senha
                          <input type="password"  name="senha" id="senha"  required>
                          		
                        <button type="submit" >Alterar</button>                     
                </form>
                
                <a href="consultar.php">Consultar usuario</a>                
                
                ';
        }
        // Verifica a seção de acordo com o perfíl
        if ($_SESSION["perfil"] == "1") {
            // Variavel $e recebe a linha contendo o email do usuario carregado pelo banco
            $e = $row["email"];
            echo '<h1>Perfil de Professor</h1>
                 <form action="alt_senha.php" method="post"> 
                     Email';
            echo "<input type='text' name='email' id='email' readonly='true' value='$e'";
            echo "required>";
            echo '     Senha
                          <input type="password"  name="senha" id="senha"  required>
                          		
                        <button type="submit" >Alterar</button>                     
                </form>';
        }
        // Verifica a seção de acordo com o perfíl
        if ($_SESSION["perfil"] == "0") {
            // Variavel $e recebe a linha contendo o email do usuario carregado pelo banco
            $e = $row["email"];
            echo '<h1>Perfil de aluno</h1> 
                     <form action="alt_senha.php" method="post"> 
                     Email';
            echo "<input type='text' name='email' id='email' readonly='true' value='$e'";
            echo "required>";
            echo '     Senha
                          <input type="password"  name="senha" id="senha"  required>
                          		
                        <button type="submit" >Alterar</button>                     
                </form>';
        }
    } else {
        // Cria um alerta informando que o usuário ou senha é inválido
        echo "<script>alert ('Email ou Senha Invalidos!'); location.href='index.php';</script>";
    }

   ?> 

    
    <div style="width:50vh;">

      <form method="Post" action="cad_aluno.php">
        <label>id_aluno:
        <input name = "name"type="text" size="10" /></label><br/> 
        <label> email:
        <input name="email" type="text" id="email" size="10" /></label><br/>
        <label> cpf:
        <input name="cpf" type="text" id="cpf" size="10" /></label><br/>
        <label class="">Cep:
        <input name="cep" type="text" id="cep"  size="10" maxlength="9"
               onblur="pesquisacep(this.value);" /></label><br />
        <label>Rua:
        <input name="rua" type="text" id="rua" size="60" /></label><br />
        <label>numero:
        <input name="numero" type="text" id="numero" size="20" /></label><br/>
        <label>Complemento:
        <input name="complemento" type="text" id="complemento" size="20" /></label><br/> 
        <label>Bairro:
        <input name="bairro" type="text" id="bairro" size="40" /></label><br />
        <label>Cidade:
        <input name="cidade" type="text" id="cidade" size="40" /></label><br />
        <label>Estado:
        <input name="uf" type="text" id="uf" size="2" /></label><br />
        <label>IBGE:
        <input name="ibge" type="text" id="ibge" size="8" /></label><br />
        <input type="submit" name="btnLogin" value="Enviar" require>
        
        
      </form>
    </div>
    <h1>Area de Usuário</h1>
    
    <?php
    // Carrega o conteúdo da sessão email que foi criada no login
    echo "Seja Bem Vindo! " . $_SESSION['email'];
    echo "<p></p> <a href='logout.php'>Logout</a> </a>";

    ?>

</body>

</html>