<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Clientes</title>
		<jsp:include page="header.jsp"></jsp:include>
	</head>
<body>
	<jsp:include page="header2.jsp"></jsp:include>
	<div class="container">
	<br />
		<div class="row">
			<div class="col-md-12">	
				<div class="panel panel-default">
					<div class="panel-body">					
						<h3 class="text-primary">
							Cliente
						</h3>
						<c:url var="addAction" value="/cliente/add" ></c:url>
						<br />
						<form:form class="form-inline" action="${addAction}" commandName="cliente">		
							<c:if test="${!empty cliente.nombre}">							
								<div class="row">
									<div class="col-md-4">
										<div class="form-group has-default">
											<form:label class="control-label" for="id" path="id">ID:</form:label>
											<form:input class="form-control" id="id" path="id" readonly="true" size="8" disabled="true" />
											<form:hidden path="id" />				
										</div>
									</div>
								</div>
								<br />	
							</c:if>							
							<div class="row">
								<div class="col-md-4">	
									<div class="form-group">
										<form:label class="control-label" for="dniCuit" path="dniCuit">DNI/CUIT:</form:label><br />
										<form:input class="form-control" id="dniCuit" path="dniCuit" />				
									</div>
								</div>
								<div class="col-md-4">	
									<div class="form-group">
										<form:label class="control-label" path="nombre">Nombre:</form:label><br />
										<form:input class="form-control"  path="nombre" />
									</div>
								</div>
								<div class="col-md-4">	
									<div class="form-group">
										<form:label class="control-label" path="apellido">Apellido:</form:label><br />
										<form:input class="form-control"  path="apellido" />
									</div>						
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-md-4">	
									<div class="form-group">
										<form:label class="control-label" path="telMovil">Celular:</form:label><br />
										<form:input class="form-control"  path="telMovil" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<form:label class="control-label" path="email">Email:</form:label><br />
										<form:input class="form-control"  path="email" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<form:label class="control-label" path="fechaNacimiento">Fecha de Nacimiento:</form:label><br />
										<form:input class="form-control"  path="fechaNacimiento" />
									</div>
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<form:label class="control-label" path="domicilio">Domicilio:</form:label><br />
										<form:input class="form-control"  path="domicilio" />					
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="checkbox">
											<label class="control-label">
												<form:checkbox path="activo" checked="checked"/> Activo		
											</label>
										</div>									
									</div>
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-md-12">
									<c:if test="${!empty cliente.nombre}">
										<input class="btn btn-primary" type="submit" value="Editar" />
									</c:if>    
									<c:if test="${empty cliente.nombre}">
										<input class="btn btn-success" type="submit" value="Agregar" />
									</c:if>
								</div>
							</div>
						</form:form>	
					</div>	
				</div>
			</div>
		</div>
	<br>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<h3 class="text-primary">Listado Clientes</h3>
						<br />
						<c:if test="${!empty listClientes}">
						<div class="table-responsive">
							<table class="table table-bordered table-hover">		
								<tr class="active success">
									<th>Documento</th>			
									<th>Nombre</th>
									<th>Apellido</th>
									<th>Celular</th>
									<th>Email</th>
									<th>Domicilio</th>
									<th>Fecha de Nacimiento</th>
									<th>Activo</th>		
									<th>Acciones</th>									
								</tr>				
							<c:forEach items="${listClientes}" var="cliente">		
								<tr>		
									<td><c:out value="${cliente.dniCuit}" /></td>				
									<td><c:out value="${cliente.nombre}" /></td>
									<td><c:out value="${cliente.apellido}" /></td>
									<td><c:out value="${cliente.telMovil}" /></td>
									<td><c:out value="${cliente.email}" /></td>				
									<td><c:out value="${cliente.domicilio}" /></td>	
									<td><c:out value="${cliente.fechaNacimiento}" /></td>
									<td><c:out value="${cliente.activo}" /></td>												
									<td align="center">
										<a style="padding: 5px;color:gray" href="<c:url value='/edit/${cliente.id}' />"><span class="glyphicon glyphicon-edit"></span></a>
										<a style="padding: 5px;color:gray;" href="<c:url value='/remove/${cliente.id}' />"><span class="glyphicon glyphicon-remove"></span></a>
									</td>
								</tr>
							</c:forEach>
							</table>
						</div>
						</c:if>	
					</div>
				</div>	
			</div>
		</div>
	<br>
	<a href="index">Ir a Inicio</a>
	</div>
</body>
</html>