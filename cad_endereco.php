<?php

include_once 'conect.cfg';
session_start();
//recebe o nome
$id_aluno = $_POST["id_aluno"];
// dados do endereco do aluno
$cep = $_POST["cep"];
$rua = $_POST["rua"];
$numero = $_POST["numero"];
$complemento = $_POST["complemento"];
$bairro = $_POST["bairro"];
$cidade = $_POST["cidade"];
$estado = $_POST["estado"];
$uf = $_POST["uf"];
$ibge = $_POST["ibge"];

//exit;$arrayName = array('$id_aluno','$cep','$rua','$numero','$complemento','$bairro','$cidade','$ibge')";
$sql = "insert into enderecos values (null,'$id_endereco','$cep','$rua','$numero','$bairro','$cidade','$estado','$ibge')";

if (mysqli_query($con, $sql)){
    // Caso a conexao esteja correta cria o retorno do cadastro
    $msg = "Cadastrado com sucesso!";
}else{    
    // Caso a conexao nao seja realizada cria o retorno do cadastro com erro
    $msg = "Erro ao Cadastrar";
}
// Encerra a conexão com o banco
mysqli_close($con);
// Cria um alert javascript carrega o conteúdo da variável $msg e redireciona para o index
echo "<script>alert ('".$msg."'); location.href='index.php';</script>"
        

?>