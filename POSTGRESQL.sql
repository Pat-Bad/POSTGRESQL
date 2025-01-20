SELECT numerofattura,
iva
FROM fatture
where iva = 22

/*SELECT fatture.numerofattura, clienti.numerocliente
FROM fatture
INNER JOIN clienti ON fatture.idcliente = clienti.numerocliente
WHERE importo < 1000;*/
/*SELECT nome 
FROM clienti 
WHERE nome LIKE '%Mario%'*/

/*SELECT nome,
cognome
FROM clienti
WHERE Anno_di_Nascita = 1983 */
/*ho messo 1983 temporaneamente perché non avevo nessun 1982*/
/*SELECT fatture.numerofattura, fatture.importo, fatture.datafattura, fornitori.numerofornitore
FROM fatture
INNER JOIN fornitori ON fatture.numerofornitore = fornitori.numerofornitore*/

/*SELECT iva, numerofattura
FROM fatture
WHERE iva = 22 AND EXTRACT(YEAR FROM datafattura) = 2025*/

/*SELECT COUNT(numerofattura) AS numeroFatture, SUM(importo)
FROM fatture 
WHERE EXTRACT(YEAR FROM datafattura) = 2025

SELECT dataattivazione, incommercio, descrizione
FROM prodotti
WHERE EXTRACT(YEAR FROM dataattivazione) = 2025 /*non ho items del 2017*/
AND inproduzione = true
AND incommercio = true;*/

/*SELECT tipologia, COUNT (tipologia)
FROM fatture
WHERE tipologia LIKE '%Vendita%'
GROUP BY EXTRACT(YEAR FROM datafattura), tipologia
HAVING COUNT(tipologia) > 2*/

/*SELECT regioneresidenza, COUNT(*) AS numeroDiclienti
FROM clienti
GROUP BY regioneresidenza;*/

SELECT clienti.anno_di_nascita, fatture.numerofattura, COUNT(fatture.importo) > 50
FROM clienti
INNER JOIN fatture ON clienti.numerocliente = fatture.numerofattura
EXTRACT(YEAR FROM anno_di_nascita) = 1980
