const form = document.querySelector("form");
const inputNome = document.querySelector("#nome");
const inputSenha = document.querySelector("#senha");
const inputEmail = document.querySelector("#email");

const formDados = {
  nome: inputNome.value,
  senha: inputSenha.value,
  email: inputEmail.value,
};

let cadastrar = () => {
  fetch("hhttps://localhost:5500/cadastrar", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ formDados }),
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error("Erro na solicitação.");
      }
      return response.json();
    })
    .then((data) => {
      console.log(data);
    })
    .catch((error) => {
      console.error("Erro:", error);
    });
};

let limpar = () => {
  inputNome.value = "";
  inputSenha.value = "";
  inputEmail.value = "";
};

form.addEventListener("submit", function (event) {
  event.preventDefault();
  cadastrar();
  limpar();
});
