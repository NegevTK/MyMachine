<?php // pagina de controle de acesso ao login

    $email = trim($_POST['email']);
    $senha = md5($_POST['senha']);

    include 'conexao.php';
    $pdo = Conexao::conectar();
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM Usuarios WHERE Email LIKE ?";
    $query = $pdo->prepare($sql);
    $query->execute(array($email));
    $dados = $query->fetch(PDO::FETCH_ASSOC);
    $nome = $dados['Nome'];
    Conexao::desconectar();

    echo $senha;

    if($senha == md5($dados['Senha']) ){
        session_start();

        $_SESSION['Nome'] = $nome;
        
        header("location:telaCadastro.php");
    }
    else header("location:telaLogin.php");
?>