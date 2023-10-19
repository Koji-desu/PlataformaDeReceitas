const form = document.querySelector("#formCadastro");
const fields = document.querySelectorAll('#required')
const spans = document.querySelectorAll('.spanForm')
const emailRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/

form.addEventListener('submit', (event)=>{
  event.preventDefault();
  nameValidate();
  emailValidate();
  passwordValidate();
  confirmPasswordValidate();
  submitForm();
})

let limpar = () => {
  inputNome.value = "";
  inputSenha.value = "";
  inputEmail.value = "";
  inputConfSenha.value = "";
};

let setError = (index)=>{
  fields[index].style.border = '2px solid #e63636';
  spans[index].style.display = 'block';
}

let removeError = (index)=>{
  fields[index].style.border = '';
  spans[index].style.display = 'none';
}

let nameValidate = ()=>{
  if(fields[0].value.length < 3){
    setError(0)
    return false
  
  } else {
    removeError(0)
    return true
   
  }

}

let emailValidate = ()=>{
  if(emailRegex.test(fields[1].value)){
    removeError(1)
    return true
  } else{
    setError(1)
    return false

  }
}

let passwordValidate = ()=>{
  if(fields[2].value.length <8){
    setError(2)
    return false
  } else {
    removeError(2)
    confirmPasswordValidate()
    return true

  }
}

let confirmPasswordValidate = ()=>{
  if(fields[2].value == fields[3].value && fields[3].value.length >= 8){
    removeError(3)
    return true
  } else{
    setError(3)
    return false
  }
}

let submitForm = ()=>{
  if (nameValidate() && emailValidate() && passwordValidate() && confirmPasswordValidate()) {
    form.submit();
  } else{
  }
}