<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Login &amp; Cadastro - Visualizar Senha Correto</title>
<style>
  * {
    box-sizing: border-box;
    margin: 0; padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }
  html, body {
    height: 100%;
    background: #f4f7fa;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    color: #222;
  }
  .auth-container {
    background: #fff;
    max-width: 350px;
    width: 100%;
    padding: 40px 30px 35px;
    border-radius: 14px;
    box-shadow: 0 12px 24px rgba(0,0,0,.09), 0 0 0 1px rgba(0,0,0,.04);
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  h2 {
    font-weight: 700;
    font-size: 28px;
    margin-bottom: 30px;
    color: #0d3b66;
    letter-spacing: 0.02em;
  }
  .input-group {
    width: 100%;
    margin-bottom: 24px;
    position: relative;
  }
  label {
    display: block;
    font-size: 15px;
    color: #4a4a4a;
    margin-bottom: 8px;
    user-select: none;
  }
  input {
    width: 100%;
    padding: 14px 44px 14px 16px;
    font-size: 16px;
    border-radius: 8px;
    border: 2px solid #ccd6f6;
    background: #fbfcfe;
    color: #222;
    transition: border-color .3s ease, box-shadow .3s ease;
  }
  input::placeholder { color: #a3a9d1; }
  input:focus {
    outline: none;
    border-color: #3f72af;
    background: #fff;
    box-shadow: 0 0 8px #3f72af66;
  }
  .icon-left {
    position: absolute;
    right: 44px;
    top: 40px;
    width: 20px;
    height: 20px;
    fill: #a3a9d1;
    pointer-events: none;
    transition: fill .3s ease;
  }
  input:focus + .icon-left { fill: #3f72af; }
  .toggle-password {
    position: absolute;
    right: 14px;
    top: 40px;
    width: 28px;
    height: 28px;
    background: none;
    border: none;
    cursor: pointer;
    padding: 0;
    z-index: 20;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #a3a9d1;
    transition: color 0.3s ease;
  }
  .toggle-password:hover,
  .toggle-password:focus {
    color: #3f72af;
    outline: none;
  }
  .toggle-password svg {
    width: 22px;
    height: 22px;
    fill: currentColor;
  }
  button[type="submit"] {
    background: #3f72af;
    color: #fff;
    font-weight: 700;
    font-size: 18px;
    padding: 14px 20px;
    width: 100%;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    box-shadow: 0 5px 12px rgba(63,114,175,.4);
    transition: background-color .3s ease, box-shadow .3s ease;
  }
  button[type="submit"]:hover,
  button[type="submit"]:focus {
    background: #325a8e;
    box-shadow: 0 5px 18px rgba(50,90,142,.7);
  }
  button[type="submit"]:focus {
    outline-offset: 2px;
    outline: 3px solid #a8b9db;
  }
  .switch-link {
    margin-top: 20px;
    font-size: 14px;
    color: #0d3b66;
    cursor: pointer;
    text-decoration: underline;
    user-select: none;
    transition: color .3s ease;
  }
  .switch-link:hover, .switch-link:focus {
    color: #234a87;
    outline: none;
  }
  .hidden { display: none; }
  @media (max-height: 600px) and (max-width: 350px) {
    html, body { padding: 10px; }
    .auth-container {
      padding: 32px 20px 28px;
      max-width: 100%;
      max-height: 600px;
      box-shadow: 0 8px 18px rgba(0,0,0,.12);
    }
    h2 {
      font-size: 24px;
      margin-bottom: 24px;
    }
    input {
      padding: 12px 44px 12px 16px;
      font-size: 14px;
    }
    button[type="submit"] {
      font-size: 16px;
      padding: 12px 18px;
    }
    .icon-left, .toggle-password {
      top: 36px;
      width: 18px;
      height: 20px;
    }
    .switch-link {
      margin-top: 16px;
      font-size: 13px;
    }
  }
</style>
</head>
<body>
  <main class="auth-container" role="main" aria-label="Área de autenticação">
    <!-- Login -->
    <section id="loginSection">
      <h2>Entrar na sua Conta</h2>
      <form id="loginForm" novalidate>
        <div class="input-group">
          <label for="loginUsername">Usuário</label>
          <input type="text" id="loginUsername" name="loginUsername" placeholder="Digite seu usuário" autocomplete="username" required aria-required="true" />
          <svg class="icon-left" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M12 12c2.7 0 5-2.3 5-5s-2.3-5-5-5-5 2.3-5 5 2.3 5 5 5zm0 2c-3.3 0-10 1.7-10 5v3h20v-3c0-3.3-6.7-5-10-5z"/></svg>
        </div>
        <div class="input-group">
          <label for="loginPassword">Senha</label>
          <input type="password" id="loginPassword" name="loginPassword" placeholder="Digite sua senha" autocomplete="current-password" required aria-required="true" />
          <button type="button" class="toggle-password" aria-label="Mostrar senha" tabindex="0" data-target="loginPassword">
            <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24">
              <path d="M12 5c-7.633 0-12 6.75-12 7s4.367 7 12 7 12-6.75 12-7-4.367-7-12-7zm0 12c-2.967 0-5.5-3.134-5.5-5s2.533-5 5.5-5 5.5 3.134 5.5 5-2.533 5-5.5 5zm0-8c-1.635 0-3 1.79-3 3s1.365 3 3 3 3-1.79 3-3-1.365-3-3-3z"/>
            </svg>
          </button>
        </div>
        <button type="submit">Entrar</button>
      </form>
      <div tabindex="0" role="button" class="switch-link" id="showRegister" aria-label="Ir para cadastro">Não tem uma conta? Cadastre-se</div>
    </section>

    <!-- Cadastro -->
    <section id="registerSection" class="hidden">
      <h2>Criar nova Conta</h2>
      <form id="registerForm" novalidate>
        <div class="input-group">
          <label for="registerUsername">Usuário</label>
          <input type="text" id="registerUsername" name="registerUsername" placeholder="Escolha um usuário" autocomplete="username" required aria-required="true" />
          <svg class="icon-left" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M12 12c2.7 0 5-2.3 5-5s-2.3-5-5-5-5 2.3-5 5 2.3 5 5 5zm0 2c-3.3 0-10 1.7-10 5v3h20v-3c0-3.3-6.7-5-10-5z"/></svg>
        </div>
        <div class="input-group">
          <label for="registerEmail">Email</label>
          <input type="email" id="registerEmail" name="registerEmail" placeholder="Seu melhor email" autocomplete="email" required aria-required="true" />
          <svg class="icon-left" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 2v.01L12 13 4 6.01V6h16z"/></svg>
        </div>
        <div class="input-group">
          <label for="registerPassword">Senha</label>
          <input type="password" id="registerPassword" name="registerPassword" placeholder="Digite uma senha" autocomplete="new-password" required aria-required="true" />
          <button type="button" class="toggle-password" aria-label="Mostrar senha" tabindex="0" data-target="registerPassword">
            <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24">
              <path d="M12 5c-7.633 0-12 6.75-12 7s4.367 7 12 7 12-6.75 12-7-4.367-7-12-7zm0 12c-2.967 0-5.5-3.134-5.5-5s2.533-5 5.5-5 5.5 3.134 5.5 5-2.533 5-5.5 5zm0-8c-1.635 0-3 1.79-3 3s1.365 3 3 3 3-1.79 3-3-1.365-3-3-3z"/>
            </svg>
          </button>
        </div>
        <div class="input-group">
          <label for="registerPasswordConfirm">Confirmar Senha</label>
          <input type="password" id="registerPasswordConfirm" name="registerPasswordConfirm" placeholder="Confirme sua senha" autocomplete="new-password" required aria-required="true" />
          <button type="button" class="toggle-password" aria-label="Mostrar senha" tabindex="0" data-target="registerPasswordConfirm">
            <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24">
              <path d="M12 5c-7.633 0-12 6.75-12 7s4.367 7 12 7 12-6.75 12-7-4.367-7-12-7zm0 12c-2.967 0-5.5-3.134-5.5-5s2.533-5 5.5-5 5.5 3.134 5.5 5-2.533 5-5.5 5zm0-8c-1.635 0-3 1.79-3 3s1.365 3 3 3 3-1.79 3-3-1.365-3-3-3z"/>
            </svg>
          </button>
        </div>
        <button type="submit">Cadastrar</button>
      </form>
      <div tabindex="0" role="button" class="switch-link" id="showLogin" aria-label="Voltar ao login">Já tem uma conta? Entrar</div>
    </section>
  </main>

<script>
  const loginSection = document.getElementById('loginSection');
  const registerSection = document.getElementById('registerSection');

  document.getElementById('showRegister').addEventListener('click', () => {
    loginSection.classList.add('hidden');
    registerSection.classList.remove('hidden');
    registerSection.querySelector('input').focus();
  });
  document.getElementById('showLogin').addEventListener('click', () => {
    registerSection.classList.add('hidden');
    loginSection.classList.remove('hidden');
    loginSection.querySelector('input').focus();
  });

  document.getElementById('loginForm').addEventListener('submit', e => {
    e.preventDefault();
    const username = e.target.loginUsername.value.trim();
    const password = e.target.loginPassword.value.trim();
    if (!username || !password) {
      alert('Preencha todos os campos.');
      return;
    }
    alert(`Bem-vindo, ${username}! Login realizado com sucesso.`);
    e.target.reset();
  });

  document.getElementById('registerForm').addEventListener('submit', e => {
    e.preventDefault();
    const u = e.target.registerUsername.value.trim();
    const email = e.target.registerEmail.value.trim();
    const p = e.target.registerPassword.value.trim();
    const pc = e.target.registerPasswordConfirm.value.trim();
    if (!u || !email || !p || !pc) {
      alert('Preencha todos os campos.');
      return;
    }
    if (p !== pc) {
      alert('Senhas não coincidem.');
      return;
    }
    alert(`Conta criada com sucesso para ${u}!`);
    e.target.reset();
    document.getElementById('showLogin').click();
  });

  // Alternar mostra/oculta senha
  document.querySelectorAll('.toggle-password').forEach(btn => {
    btn.addEventListener('click', () => {
      const targetId = btn.getAttribute('data-target');
      const input = document.getElementById(targetId);
      if (input.type === 'password') {
        input.type = 'text';
        btn.setAttribute('aria-label', 'Ocultar senha');
      } else {
        input.type = 'password';
        btn.setAttribute('aria-label', 'Mostrar senha');
      }
    });
  });
</script>
</body>
</html>

