<?php

// Executa a conexao com o mysql e selecionar a base
include_once 'conect.cfg';

//Recupera os dados enviados via POST
// recebe o nome
$id_aluno = $_POST["id_aluno"];
// recebe o endereco
$id_endereco = $_POST["id_endereco"];
// recebe o Email
$email = $_POST["email"];
// recebe o cpf digitado
$cpf = $_POST["cpf"];
// recebe a senha Digitada
$senha = $_POST["senha"];
// Cria uma senha utilizando a criptografia de HASH em Md5
$senha = $_POSTmd5["senha"];

//montar a query sql de gravação recebendo as variaveis via post
$sql = "INSERT INTO alunos VALUES (null,'$nome','$email','$senha','$cpf')";

//Faz a conexao e executa a instrucao carregada na varivael $sql e os envia para o banco mysql.

//Recupera o Ultimo ID inserido no Banco
    if (mysqli_query($con, $sql)) {
       // Caso a conexao esteja correta cria o retorno do cadastro 
        $msg = "Cadastrado com sucesso!";
        // Cadastro do Endereco
    
} else {
    // Caso a conexao nao seja realizada cria o retorno do cadastro com erro
    $msg = "Erro ao Cadastrar";
}
// Encerra a conexão com o banco
mysqli_close($con);
// Cria um alert javascript carrega o conteúdo da variável $msg e redireciona para o index
echo "<script>alert ('" . $msg . "'); location.href='index.php';</script>";


    ?>