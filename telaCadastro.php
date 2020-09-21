<!DOCTYPE html>
<html lang="pt-br">

<head>
  <!-- Meta tags Obrigatórias -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Criar conta</title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="Bootstrap/dist/bootstrap.min.css">
  <link rel="stylesheet" href="telaCadastroUsuarioStyle.css">
</head>

<body>
  <div class="card-group">
    <div class="img-left d-none d-md-flex"></div>
    <div class="card">
      <div class="card-header">Criar conta MyFootWear</div>
      <div class="card-body">
        <form action="insUsuario.php" method="POST" id="frmInsUsuario" name="frmInsUsuario">
          <div class="form-row">
            <div class="form-group col-md-7">
              <label for="inputEmail4">Nome</label>
              <input type="text" class="form-control" placeholder="Nome completo" id="txtNome" name="txtNome">
            </div>
            <div class="form-group col-md-5">
              <label for="inputPassword4">CPF</label>
              <input type="text" class="form-control" placeholder="CPF" id="txtCPF" name="txtCPF">
            </div>
          </div>
          <div class="form-group">
            <label for="inputAddress">Endereço</label>
            <input type="text" class="form-control" placeholder="Rua dos Programadores, nº 0" id="txtEnder" name="txtEnder">
          </div>
          <div class="form-row">
            <div class="form-group col-md-8">
              <label for="inputEmail4">Email</label>
              <input type="email" class="form-control" placeholder="Email" id="txtEmail" name="txtEmail">
            </div>
            <div class="form-group col-md-4">
              <label for="inputPassword4">Senha</label>
              <input type="password" class="form-control" placeholder="Senha" id="txtSenha" name="txtSenha">
            </div>
          </div>
          <div class="form-group">
            <label for="inputComplemento">Complemento</label>
            <input type="text" class="form-control" placeholder="Apartamento, hotel, casa, etc." id="txtComplemento" name="txtComplemento">
          </div>
          <div class="form-row">
            <div class="form-group col-md-5">
              <label for="inputCity">Cidade</label>
              <input type="text" class="form-control" placeholder="Cidade..." id="txtCidade" name="txtCidade">
            </div>
            <div class="form-group col-md-4">
              <label for="inputEstado">Estado</label>
              <select id="inputEstado" class="form-control" placeholde="UF" id="txtEstado" name="txtEstado">
                <option selected>Escolher...</option>
                <option>SP</option>
              </select>
            </div>
            <div class="form-group col-md-3">
              <label for="inputCEP">CEP</label>
              <input type="text" class="form-control" placeholder="CEP" id="txtCEP" name="txtCEP">
            </div>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary btn btn-dark btn-block" id="btnCriar">Criar conta</button>
            <button type="button" class="btn btn-primary btn btn-dark btn-block" id="btnCriar" onclick="JavaScript:location.href='telaLogin.php'">Já possuí uma conta?</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>