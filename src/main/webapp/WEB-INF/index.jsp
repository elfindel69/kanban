<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background-size:cover;
	background-repeat:no-repeat;
	background-position:center; 
	background-attachment: fixed;
	height:100vh; 
	overflow: scroll;
}

.card{
	margin: auto;
}

.nav_special{
	background-color:rgba(225,225,225,0.9)!important;
}

.table {
	background-color:#eeeeee;
}

.table > tbody > tr > td, .table-bordered > thead > tr > th {
	border: 0.5px solid white !important;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
	integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
	crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
	
	$(".link_drag").draggable({
		axis : 'x',
		revert: "invalid",
	});

	$('.table_taches td').droppable({
		drop : function(event, ui) {
			
			var $this = $(this);
			var idTache = event.currentTarget.activeElement.dataset['idtache'];
			var idColonne = $this[0].classList[0].split("_")[1];
			
			ui.draggable.position({
				my : "center",
				at : "center",
				of : $this,
				using : function(pos) {
					$(this).animate(pos, 200, "linear");
				}
			});
			
			$.ajax({
				type : 'PUT',
				url : 'taches/deplacer',
				data : {
					ID_TACHE : idTache,
					ID_COLONNE : idColonne
				}
			});
		}
	});
	
});
</script>
<title>Tableau Kanban</title>
</head>
<body>
	<div class="container">
	
		<div class="card text-center" style="margin-top: 30px;">
			<div class="card-header">
				<h1>Tableau Kanban</h1>
			</div>
			<div class="card-body">
				<table
					class="table table-striped table-bordered table-dark table_taches">
					<thead>
						<tr>
							<th scope="col"><font color="black">&Agrave; faire</font></th>
							<th scope="col"><font color="black">En cours</font></th>
							<th scope="col"><font color="black">&Agrave; tester</font></th>
							<th scope="col"><font color="black">Terminé</font></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="tache" items="${taches}">
							<tr>
								<c:forEach var="i" begin="1" end="${tache.colonne.id - 1}" step="1">
									<td width="25%" class="drop_${i}"></td>
								</c:forEach>
										<td width="25%" class="drop_${tache.colonne.id}"><a href="#" type="button"
											class="btn detail_tache link_drag" data-idTache="${tache.id}"
											style="color: white; background-color:#${tache.typeTache.couleur}"
											data-toggle="modal">${tache.intitule}<br>${tache.developpeurs.get(0).prenom} ${tache.developpeurs.get(0).nom}</a></td>
								<c:forEach var="i" begin="${tache.colonne.id + 1}" end="4" step="1">
									<td width="25%" class="drop_${i}"></td>
								</c:forEach>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
