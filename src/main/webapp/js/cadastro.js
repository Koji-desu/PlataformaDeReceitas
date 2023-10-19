const form = document.querySelector("#formCadastro");
const inputNome = document.querySelector("#nome");
const inputSenha = document.querySelector("#senha");
const inputConfSenha = document.querySelector("#confSenha")
const inputEmail = document.querySelector("#email");

let limpar = () => {
  inputNome.value = "";
  inputSenha.value = "";
  inputEmail.value = "";
  inputConfSenha.value = "";
};


