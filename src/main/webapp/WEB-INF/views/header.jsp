<div class="row col-md-12 ml-1 mt-1">
    <a href="/textma/accueil">
        <img src="<c:url value='/static/images/textma-logo.jpg' />">
    </a>
     <H1 class="ml-1 mt-3">TEXTMA</H1>
</div>

<ul class="nav nav-tabs">
  <li class="nav-item">
        <a class="nav-link <c:if test = '${page == "accueil"}'>active</c:if>" href="/textma/accueil">ACCUEIL</a>
  </li>
  <li class="nav-item">
    <a class="nav-link <c:if test = '${page == "user"}'>active</c:if>" href="/textma/user/list">Utilisateurs</a>
  </li>
  <li class="nav-item">
      <a class="nav-link <c:if test = '${page == "client"}'>active</c:if>" href="/textma/client/list">Clients</a>
  </li>
  <li class="nav-item">
      <a class="nav-link disabled <c:if test = '${page == "product"}'>active</c:if>" href="/textma/user/list">Articles</a>
  </li>
  <li class="nav-item">
      <a class="nav-link <c:if test = '${page == "delivery"}'>active</c:if>" href="/textma/delivery/calendar">Livraison</a>
  </li>
</ul>