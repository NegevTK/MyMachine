<!DOCTYPE html>
<html lang="pt-br">

<head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Login</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="Bootstrap/dist/bootstrap.min.css">
    <link rel="stylesheet" href="telaLoginStyle.css">
</head>

<body>
    <div class="card-group">
        <div class="img-left d-none d-md-flex"></div>
        <div class="card">
            <div class="card-header">Entrar</div>
            <div class="card-body">
                <h4 class="title text-center mt-4">
                    MyFootWear
                    <small class="form-text text-muted"><i>"Boas Escolhas fazem você obter sucesso na vida..." ~MyFootWear. </i></small>
                </h4>
                <form action="login.php" method="POST" name="frmLogin">
                    <div class="form-group">
                        <label for="">Endereço de email</label>
                        <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Seu email" required>
                        <small id="emailHelp" class="form-text text-muted">Não compartilhe seu email com ninguém.</small>
                    </div>
                    <div class="form-group">
                        <label for="">Senha</label>
                        <input type="password" class="form-control" id="senha" name="senha" aria-describedby="passwordHelp" placeholder="Senha" required>
                        <small id="passwordHelp" class="form-text text-muted">A equipe do MyFootWear jamais pedirá sua senha, Não compartilhe ela com ninguém. </small>
                    </div>
                    <button type="submit" class="btn btn-primary btn btn-sucess  btn-block">Entrar</button>
                    <button type="button" class="btn btn-primary btn btn-sucess  btn-block" onclick="JavaScript:location.href='telaCadastro.php'">Cadastrar</button>
                </form>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</html>
