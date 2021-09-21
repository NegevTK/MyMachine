<?php //remPro.php
    include '../metodos/conexao.php'; 
    //recuperação de valores do formulário pelo método GET
    $pro_id = trim($_GET['ID_Compra']); //veio por meio do hidden
    if (!empty($pro_id)){
        $pdo = Conexao::conectar(); 
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
        $sql = "DELETE FROM vendas WHERE ID_Compra=?";
        $query = $pdo->prepare($sql); 
        $query->execute(array($pro_id));
        Conexao::desconectar(); 
    }
    header("location:../formularios/frmComprasRealizadas.php"); 

?>