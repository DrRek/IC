<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Impresa Confidi</title>
<link rel="icon" href="resources/img/logo.png">
<link href="/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="/css/general.css" type="text/css"
	rel="stylesheet" />
<link href="/css/preventivo.css" type="text/css"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/page/header.jsp"%>
	<div id="other-content">
		<div class="row">
			<div class="side-element">
				<%@ include file="/page/side.jsp"%>
			</div>
			<div class="other-side-element" id="textSpace">
				<h2>Informazioni sui preventivi</h2>
				<p>info da scrivere</p>
				<div class="bordered-form">
					<h3>Richiedi un preventivo online:</h3>
					<div class="sotto-sezione">
						<h4>Informazioni sul titolare</h4>
						<div class="form-group">
							<label for="nome">Nome:</label>
							<input class="form-control required string" type="text" name="nome" size="20" />
							<span class="help-block" id="nomeR"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="cognome">Cognome:</label>
							<input class="form-control required string" type="text" name="cognome" size="20" />
							<span class="help-block" id="cognome"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="email">Email:</label>
							<input class="form-control required email" type="text" name="email" size="20" />
							<span class="help-block" id="email"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="telefono">N. telefono:</label>
							<input class="form-control required stringOfNumber" type="text" name="telefono" size="13" />
							<span class="help-block" id="telefono"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="provincia">Provincia:</label>
							<select class="form-control required" name="provincia">
								<option value="ag">agrigento</option>
								<option value="al">alessandria</option>
								<option value="an">ancona</option>
								<option value="ao">aosta</option>
								<option value="ar">arezzo</option>
								<option value="ap">ascoli piceno</option>
								<option value="at">asti</option>
								<option value="av">avellino</option>
								<option value="ba">bari</option>
								<option value="bt">barletta-andria-trani</option>
								<option value="bl">belluno</option>
								<option value="bn">benevento</option>
								<option value="bg">bergamo</option>
								<option value="bi">biella</option>
								<option value="bo">bologna</option>
								<option value="bz">bolzano</option>
								<option value="bs">brescia</option>
								<option value="br">brindisi</option>
								<option value="ca">cagliari</option>
								<option value="cl">caltanissetta</option>
								<option value="cb">campobasso</option>
								<option value="ci">carbonia-iglesias</option>
								<option value="ce">caserta</option>
								<option value="ct">catania</option>
								<option value="cz">catanzaro</option>
								<option value="ch">chieti</option>
								<option value="co">como</option>
								<option value="cs">cosenza</option>
								<option value="cr">cremona</option>
								<option value="kr">crotone</option>
								<option value="cn">cuneo</option>
								<option value="en">enna</option>
								<option value="fm">fermo</option>
								<option value="fe">ferrara</option>
								<option value="fi">firenze</option>
								<option value="fg">foggia</option>
								<option value="fc">forli’-cesena</option>
								<option value="fr">frosinone</option>
								<option value="ge">genova</option>
								<option value="go">gorizia</option>
								<option value="gr">grosseto</option>
								<option value="im">imperia</option>
								<option value="is">isernia</option>
								<option value="sp">la spezia</option>
								<option value="aq">l’aquila</option>
								<option value="lt">latina</option>
								<option value="le">lecce</option>
								<option value="lc">lecco</option>
								<option value="li">livorno</option>
								<option value="lo">lodi</option>
								<option value="lu">lucca</option>
								<option value="mc">macerata</option>
								<option value="mn">mantova</option>
								<option value="ms">massa-carrara</option>
								<option value="mt">matera</option>
								<option value="vs">medio campidano</option>
								<option value="me">messina</option>
								<option value="mi">milano</option>
								<option value="mo">modena</option>
								<option value="mb">monza e della brianza</option>
								<option value="na">napoli</option>
								<option value="no">novara</option>
								<option value="nu">nuoro</option>
								<option value="og">ogliastra</option>
								<option value="ot">olbia-tempio</option>
								<option value="or">oristano</option>
								<option value="pd">padova</option>
								<option value="pa">palermo</option>
								<option value="pr">parma</option>
								<option value="pv">pavia</option>
								<option value="pg">perugia</option>
								<option value="pu">pesaro e urbino</option>
								<option value="pe">pescara</option>
								<option value="pc">piacenza</option>
								<option value="pi">pisa</option>
								<option value="pt">pistoia</option>
								<option value="pn">pordenone</option>
								<option value="pz">potenza</option>
								<option value="po">prato</option>
								<option value="rg">ragusa</option>
								<option value="ra">ravenna</option>
								<option value="rc">reggio di calabria</option>
								<option value="re">reggio nell’emilia</option>
								<option value="ri">rieti</option>
								<option value="rn">rimini</option>
								<option value="rm">roma</option>
								<option value="ro">rovigo</option>
								<option value="sa">salerno</option>
								<option value="ss">sassari</option>
								<option value="sv">savona</option>
								<option value="si">siena</option>
								<option value="sr">siracusa</option>
								<option value="so">sondrio</option>
								<option value="ta">taranto</option>
								<option value="te">teramo</option>
								<option value="tr">terni</option>
								<option value="to">torino</option>
								<option value="tp">trapani</option>
								<option value="tn">trento</option>
								<option value="tv">treviso</option>
								<option value="ts">trieste</option>
								<option value="ud">udine</option>
								<option value="va">varese</option>
								<option value="ve">venezia</option>
								<option value="vb">verbano-cusio-ossola</option>
								<option value="vc">vercelli</option>
								<option value="vr">verona</option>
								<option value="vv">vibo valentia</option>
								<option value="vi">vicenza</option>
								<option value="vt">viterbo</option>
							</select>
							<span class="help-block" id="provincia"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="città">Città:</label>
							<input class="form-control required string" type="text" name="città" size="30" />
							<span class="help-block" id="città"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="via">Via:</label>
							<input class="form-control required stringWithNumber" type="text" name="via" size="50" />
							<span class="help-block" id="via"></span>
						</div>
					</div>
					<div class="sotto-sezione">
						<h4>Informazioni sull'azienda</h4>
						<div class="form-group">
							<label for="tipo">Seleziona se l'azienda ha meno di 3 anni:</label><br>
							<input type="checkbox" name="tipoAzienda"> Startup
							<span class="help-block"id="tipo"></span>
						</div>
						<div class="form-group">
							<label for="ragSociale">Ragione sociale:</label>
							<select class="form-control required" name="ragSociale">
								<option value="S.S.">S.S.</option>
								<option value="S.n.c.">S.n.c.</option>
								<option value="S.a.s.">S.a.s.</option>
								<option value="S.r.l.">S.r.l.</option>
								<option value="S.r.l.s.">S.r.l.s.</option>
								<option value="S.r.l.u.">S.r.l.u.</option>
								<option value="S.p.a.">S.p.a</option>
								<option value="S.a.p.a.">S.a.p.a</option>
							</select>
							<span class="help-block" id="ragSociale"></span>
						</div>
						<div class="notStartup sotto-sezione">
							<h4>Inserisci i dati dei conti correnti già aperti:</h4>
							<div class="singleCC"> <!-- Se modifichi questa parte bisogna cambiare anche il js -->
								<div style="width:40%;display:inline-block;">
									<label for="banca">Banca:</label>
									<input class="form-control string" name="banca" list="suggestedBank" type="text">
									<span class="help-block" id="banca"></span>
								</div>
								<div style="width:40%;display:inline-block;">
									<label for="filiale">Filiale:</label>
									<input class="form-control string" name="filiale" type="text">
									<span class="help-block"id="filiale"></span>
								</div>
								<input class= "btn btn-outline-secondary" name="delete" value="X" type="button" style="width:8%;display:inline-block;color:red;font-weight: bold;">
							</div>
						</div>
						<input class= "btn btn-outline-secondary notStartup" name="add" value="Aggiungi conto!" type="button">
						<%@ include file="/page/banche.jsp"%>
					</div>
					<div class="sotto-sezione">
						<h4>Informazioni sul prestito da richiedere</h4>
						<div class="form-group">
							<label for="tipo">Tipo di prestito:</label>
							<select class="form-control required" name="tipo">
								<option value="Mutuo chirografario">Mutuo chirografario</option>
								<option value="Mutuo ipotecario">Mutuo ipotecario</option>
								<option value="Fido di conto corrente">Fido di conto corrente</option>
								<option value="Altro">Altro</option>
							</select>
							<span class="help-block"id="tipo"></span>
						</div>
						<div class="form-group" id="AltroTipo">
							<br>
							<label for="tipoAltro">Altro tipo di prestito:</label>
							<input class="form-control string requiredIf" name="tipoAltro" type="text"/>
							<span class="help-block"id="tipoAltro"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="importo">Importo:</label>
							<input class="form-control number required" name="importo" type="number" min="0.01" step="0.01" max="50000" placeholder="In euro"/>
							<span class="help-block"id="importo"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="durata">Durata:</label>
							<input class="form-control number required" name="durata" type="number" min="1" max="10" placeholder="In anni"/>
							<span class="help-block" id="durata"></span>
						</div>
						<div class="form-group">
							<br>
							<label for="motivazione">Motivazione:</label>
							<select class="form-control required" name="motivazione">
								<option value="Consolidamento passività">Consolidamento passività</option>
								<option value="Liquidazione">Liquidazione</option>
								<option value="Investimento">Investimento</option>
								<option value="Acquisto scorte">Acquisto scorte</option>
								<option value="Ristrutturazione">Ristrutturazione</option>
								<option value="Attrezzature e macchinari">Attrezzature e macchinari</option>
								<option value="Altro">Altro</option>
							</select>
							<span class="help-block" id="durata"></span>
						</div>
						<div class="form-group" id="AltraMotivazione">
							<br>
							<label for="motivazioneAltro">Altra motivazione:</label>
							<input class="form-control requiredIf" name="motivazioneAltro" type="text"/>
							<span class="help-block"id="motivazioneAltro"></span>
						</div>
					</div>
					<div class="form-group">
						<br>
						<label for="messaggio">Messaggio:</label>
						<textarea class="form-control stringwithnumber" rows="5" name="messaggio" placeholder="Aggiungere qualsiasi richiesta specifica o domanda."></textarea>
						<span class="help-block" id="messaggio"></span>
					</div>
					<div style="text-align: center;">
						<input class= "btn btn-outline-secondary" name="submit" value="Invia!" type="button" onclick="sendPRequest()">
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
	<%@ include file="/page/footer.jsp" %>
	
	<script src="/script/preventivo.js"></script>
</body>