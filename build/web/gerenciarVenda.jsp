<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang= "pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Gerenciar Venda</title>
		<link rel = "shortcut icon" href = "imagens/libelula.jpg" />
        <link rel="stylesheet" type="text/css" href = "estilo/estiloGerenciarVenda.css"/>
        <style>
            @font-face{
                font-family: 'FonteLogo';
                src:url(fonte/bubblegum-sans-regular.otf);
                }
        </style>

    </head>

        <body>
            <div id="corpo">
                
                <%-- Logo marca do sistema --%>
                <header id="cabecalho">
                    <img src="imagens/libelula.jpg"/>
                    <nav id="nomeLogo">
                        <h2>SAP</h2>
                        <h3> Consultores </h3>
                    </nav>
                </header>
                
                <%-- Tabela de boas vindas ao administrador --%>
                <header id="boasVindas">
                   <table>
                <tr>
                    <td id="bemVindo">
                        Olá&nbsp;  
                    </td>
                    <td id="nomeCliente">
                        <%= session.getAttribute("usuario") %>
                    </td>
                </tr>
            </table>           
                </header>

                <%-- Botão sair do sistema --%>
                <header id="botaoSair">
                    <form id="sair" action="Logoff" method="post">
                        <input type="submit" name="tSair" id="cSair" value="Sair"/>
                    </form>
                </header>
                
                <%-- Área do menu do administrador --%>
                <nav id="inicio">
                    <ul>
                        <li class="itemmenu">
                            <a href="administrador.jsp"><strong>Início</strong></a>
                        </li>
                    </ul>
                </nav>
                
                <nav id="gerenciarProduto">                	
                    <ul>
                        <li class="itemmenu">
                            <a href="gerenciarProduto.jsp"><strong>Gerenciar Produto</strong></a>                    
                        </li>
                    </ul>
                </nav>
         
                <nav id="gerenciarCliente">      
                    <ul>
                        <li class="itemmenu">
                            <a href="gerenciarCliente.jsp"><strong>Gerenciar Cliente</strong></a>                 
                        </li>
                    </ul>
                </nav>

                <nav id="gerenciarVenda">
                    <ul>
                        <li class="itemmenu">
                            <a href="gerenciarVenda.jsp"><strong>Gerenciar Venda</strong></a>                    
                        </li>
                    </ul>        
                </nav>

                <%-- Formulário pra dar baixa na dívida do cliente --%>
                <div id="corpoDarBaixaNasVendas">
                    <h1 id="darBaixaNaDividaDoCliente">Dar Baixa na Dívida do Cliente</h1>
                    <h3>Para dar Baixa na Dívida do Cliente Preencha os Campos Abaixo</h3>
                    <form id="darBaixaVenda" method="post" action="DarBaixa">
                        <fieldset id="darBaixaVenda">
                            <legend>Dados Necessários</legend>
                            <table>
                                <tr>
                                    <td>
									<label for="cNomeClienteBaixa">Nome do Cliente:</label>
									</td>
									<td>
									<input type="text" class="gerenciarVendas" name="NomeClienteBaixa" id="cNomeClienteBaixa" size="30" 
                                                                               maxlength="50" placeholder="Nome Completo"/>
									</td>
                                </tr>

                                <tr>
                                    <td>
									<label for="cEmailClienteBaixa">Email do Cliente:</label>
									</td>
									<td>
									<input type="email" class="gerenciarVendas" name="EmailClienteBaixa" id="cEmailClienteBaixa" size="30" 
									maxlength="50"/>
									</td>
                                </tr>
                                <tr>
                                    <td>
									<label for="cValorPago">Valor Pago:</label>
									</td>
									<td>
									<input type="text" name="ValorPago" id="cValorPago" class="gerenciarVendas" size="30" maxlength="10" 
									placeholder="Digite o Valor Pago Ex:50,00" />
									</td>
                                </tr>
                                 <tr>
                                    <td>
									<label for="cDataPagamento">Data do Pagamento:</label>
									</td>
									<td>
									<input type="date" name="DataPagamento" id="cDataPagamento" class="gerenciarVendas" size="30" />
									</td>
                                </tr>
                            </table>
                            <input type="submit" name="tDarBaixa" id="cDarBaixa" value="Dar Baixa"/>
                        </fieldset>
                    </form>
                </div>

                <%-- Formulário para realizar vendas --%>
                <div id="corpoVendas">
                    <form id="vender" method="post" action="VendaProdutos">

                        <h1>Realizar Vendas</h1>    
                        <fieldset id="dadosDoCliente">
                            <legend>Dados do Cliente</legend>
                                <table>
                                    <tr>
                                        <td>
										<label for="cNomeCliente">Nome do Cliente:</label>
										</td>
										<td>
                                                                                    <input type="text" class="gerenciarVendas" name="NomeCliente" id="cNomeCliente" size="30" maxlength="50" placeholder="Nome Completo"/>
										</td>
                                    </tr>

                                    <tr>
                                        <td>
										<label for="cEmailCliente">Email do Cliente:</label>
										</td>
										<td>
										<input type="email" class="gerenciarVendas" name="EmailCliente" id="cEmailCliente" size="30" maxlength="80"/>
										</td>
                                    </tr>
                                </table>
                        </fieldset>

                        <fieldset id="dadosVenda">
                            <legend>Dados Da Venda</legend>
                            <table>
                                <tr>
                                    <td>
									<label for="cNomeProdutoVendido">Nome do Produto:</label>
									</td>
									<td>
									<input type="text" class="gerenciarVendas" name="NomeProdutoVendido" id="cNomeProdutoVendido" size="30" 
									maxlength="50"/>
									</td>
                                </tr>
                                <tr>
                                    <td>
									<label for="cTipoProdutoVendido">Tipo do Produto:</label>
									</td>
									<td>
									<input type="text" class="gerenciarVendas" name="TipoProdutoVendido" id="cTipoProdutoVendido" size="30" 
									maxlength="50"/>
									</td>
                                </tr>
                                <tr>
                                    <td>
									<label for="cVolumeProdutoVendido">Volume do Produto:</label>
									</td>
									<td>
									<input type="text" class="gerenciarVendas" name="VolumeProdutoVendido" id="cVolumeProdutoVendido" size="30" 
									maxlength="10"/>
									</td>
                                </tr>
                                <tr>
                                    <td>
									<label for="cQuantidadeProdutosVendidos">Quantidade de Itens:</label>
									</td>
									<td>
									<input type="number" class="gerenciarVendas" name="QuantidadeProdutosVendidos" id="cQuantidadeProdutosVendidos" 
									min="1" max="9999"/>
									</td>
                                </tr>
                                <tr>
                                    <td>
									<label for="cPrecoProdutoVendido">Preço do Produto:</label>
									</td>
									<td>
									<input type="text" class="gerenciarVendas" name="PrecoProdutoVendido" id="cPrecoProdutoVendido" size="30" 
									maxlength="10" placeholder="Valor Unitário, Ex:25,50"/>
									</td>
                                </tr>
                                <tr>
                                    <td>
									<label for="cDataVendaProduto">Data da Venda:</label>
									</td>
									<td>
									<input type="date" class="gerenciarVendas" name="DataVendaProduto" id="cDataVendaProduto" size="30"/>
									</td>
                                </tr>
                            </table>
                        </fieldset>
                            <input type="submit" value ="Vender" id="cVender"/>
                            <input type="reset" value ="Limpar" id="cLimpar"/>

                    </form>
                </div>

                <%-- Rodapé da página --%>
                <footer id="rodape">
                    <br />
                    Copyright &copy; 2014
                </footer>
                <br />

            </div>
        </body>
</html>