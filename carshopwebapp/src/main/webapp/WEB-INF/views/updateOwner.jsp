<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html >


<html>
<head>
    <style>
        table, th, td {
            border: 3px solid black;
        }


    </style>
    <meta http-equiv="Content-Type" content="text/html" ; charset=UTF-8">
    <title>Update a record</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form action="updateOwn" method="post">
      <pre>
    Id:   <input type="text" name="id" value="${owner.id}" readonly="true"/>
    ΑΦΜ: <input type="text" name="afm"${owner.afm}/>
    Ονομα: <input type="text" name="onoma${owner.onoma}"/>
    Επίθετο: <input type="text" name="epitheto"${owner.epitheto}/>
    Διεύθυνση: <input type="text" name="dieuthinsi"${owner.dieuthinsi}/>
    Email: <input type="text" name="email"${owner.email}/>
    Κωδικος: <input type="text" name="kwdikoXristi"${owner.id}/>
    Μαρκα: <input type="text" name="markaOximatos"${owner.markaOximatos}/>
    Πινακιδα: <input type="text" name="pinakidaOximatos"${owner.pinakidaOximatos}/>
    Χρηστης: Admin <input type="radio" name="tipoXristi" value="Administrator"${owner.tipoXristi=='Administrator'?'checked':'' }/>    User <input type="radio" name="tipoXristi" value="User"${owner.tipoXristi=='User'?'checked':'' }/>
   <br>
    <input type="submit" value="Αποθηκευσε τα Δεδομενα"/>
    </pre>
</form>
</body>
</html>