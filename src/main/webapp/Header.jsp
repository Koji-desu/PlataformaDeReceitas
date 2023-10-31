<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%! String sessionScope = "ho2je"; %>
<!DOCTYPE html>
<html lang="pt-br">

<body>
    
        <header class="p-3 text-bg-red-500">
        

            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <div class="logo">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none"><img
                            class="bi me-2" src="logo.png" alt="Logo da SENAC MASTER COOK"></a>
                </div>
            </div>

                
                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                    <li><a class="nav-link px-2 text-white" href="/find-all-receitas">Receitas</a></li>
                    <li><a class="nav-link px-2 text-white" href="#">Categorias</a></li>
                    <li><a class="nav-link px-2 text-white" href="#">Sobre</a></li>
                    <li><a class="nav-link px-2 text-white" href="#">Contato</a></li>
                </ul>
            
            <form action="/find-receitas" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control form-control-dark text-bg-light" placeholder="Buscar..." aria-label="Search" name="busca">
            </form>

            <c:if test="${sessionScope.loggedUser != null}">
                <div class="text-end">
                      <a href="/create-receita">
                      <button type="button" class="btn btn-outline-light me-2">Postar Receita</button>
                      </a>
                      <a href="/logout"><button type="button" class="btn btn-warning">Logout</button></a>
                      </div>
            </c:if>
            <c:if test="${sessionScope.loggedUser == null}">
                       <div class="text-end">
                       <a href="/login">
                       <button type="button" class="btn btn-outline-light me-2">Login</button>
                       </a>
                       <a href="/create-user"><button type="button" class="btn btn-warning">Sign-up</button></a>
                       </div>
           </c:if>

        </header>