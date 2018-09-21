-- 3 - Sélectionner les moyennes des étudiants de 4ème année, ainsi que leur nom/prénom, ordonnée par année d’étude, moyenne et nom/prénom. Les étudiants n’ayant pas de module de 4ème année et les modules n’ayant pas d’étudiants ayant tenté l’examen ne seront pas récupérés.

SELECT ROUND(AVG(grade), 1) as moyenne , lastname as nom, firstname as prenom
FROM student s
INNER JOIN assessment a on a.id_student = s.id
INNER JOIN module m on m.id = a.id_module
INNER JOIN `year` y on m.year = y.id
WHERE y.id = 2
GROUP BY s.id
ORDER BY y.`label`, moyenne, s.lastname, s.firstname