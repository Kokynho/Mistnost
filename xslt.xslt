<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="zemedelskatechnika">
    <table border="1">
	  <tr>
		<th bgcolor="Red">ID Objednavky</th>
		<th bgcolor="Red">Datum</th>
		
		<th bgcolor="GreenYellow">Jmeno</th>
		<th bgcolor="GreenYellow">Prijmeni</th>
		<th bgcolor="GreenYellow">Datum narozeni</th>
		<th bgcolor="GreenYellow">Mesto</th>
		<th bgcolor="GreenYellow">Ulice</th>
		<th bgcolor="GreenYellow">Cislo</th>
		
		<th bgcolor="Khaki">Nazev firmy</th>
		<th bgcolor="Khaki">ICO</th>
		
		<th bgcolor="DeepSkyBlue">Skupina</th>
		<th bgcolor="DeepSkyBlue">Vyrobeno</th>
		<th bgcolor="DeepSkyBlue">Stav</th>
		<th bgcolor="DeepSkyBlue">Mnozstvi</th>
		<th bgcolor="DeepSkyBlue">Nazev</th>
		<th bgcolor="DeepSkyBlue">Rada</th>
		<th bgcolor="DeepSkyBlue">Cena</th>
		
		<th bgcolor="Gold">Typ kabiny</th>
		<th bgcolor="Gold">Klimatizace</th>
		<th bgcolor="Gold">Vnejsi osvetleni</th>
		<th bgcolor="Gold">Pocet svetel</th>
		
		<th bgcolor="MediumAquaMarine">Kontrola stability</th>
		<th bgcolor="MediumAquaMarine">Variabilni prevod</th>
		
		<th bgcolor="Orange">Pocet rychlosti</th>
		<th bgcolor="Orange">Prepravni rychlost</th>
	  </tr>
	  <tr>
      <xsl:for-each select="objednavka">
	  <xsl:sort select="objednavatel/prijmeni"/>
		<tr>
			<td><xsl:value-of select="@objednavkaid"/></td>
			<td><xsl:value-of select="datum"/></td>
			
			<td><xsl:value-of select="objednavatel/jmeno"/></td>
			<td><xsl:value-of select="objednavatel/prijmeni"/></td>
			<td><xsl:value-of select="objednavatel/@datumnarozeni"/></td>
			
			<td><xsl:value-of select="objednavatel/adresa/mesto"/></td>
			<td><xsl:value-of select="objednavatel/adresa/ulice"/></td>
			<td><xsl:value-of select="objednavatel/adresa/cislo"/></td>
			
			<td><xsl:value-of select="dodavatel/nazevfirmy"/></td>
			<td><xsl:value-of select="dodavatel/ico"/></td>
			
			<td><xsl:value-of select="traktor/@oznaceni"/></td>
			<td><xsl:value-of select="traktor/@vyrobeno"/></td>
			<td><xsl:value-of select="traktor/@stav"/></td>
			<td><xsl:value-of select="traktor/@mnozstvi"/></td>
			<td><xsl:value-of select="traktor/nazev"/></td>
			<td><xsl:value-of select="traktor/rada"/></td>
			<td><xsl:value-of select="traktor/cena"/></td>
			
			<td><xsl:value-of select="traktor/klicovevlastnosti/kabina/@typ"/></td>
			<td><xsl:value-of select="traktor/klicovevlastnosti/kabina/klimatizace"/></td>
			<td><xsl:value-of select="traktor/klicovevlastnosti/kabina/vnejsiosvelteni"/></td>
			<td><xsl:value-of select="traktor/klicovevlastnosti/kabina/pocetsvetel"/></td>
			
			<td><xsl:value-of select="traktor/klicovevlastnosti/rizeni/kontrolastability"/></td>
			<td><xsl:value-of select="traktor/klicovevlastnosti/rizeni/variabilniprevod"/></td>
			
			<td><xsl:value-of select="traktor/klicovevlastnosti/prevodovka/@rychlosti"/></td>
			<td><xsl:value-of select="traktor/klicovevlastnosti/prevodovka/prepravnirychlost"/></td>
		</tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>