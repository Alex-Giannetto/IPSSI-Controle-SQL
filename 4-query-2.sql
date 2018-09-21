-- 2 - La réussite de la requête précédente nécessite l’utilisation d’un right ou left join, écrire une requête produisant le même résultat en utilisant left au lieu de right ou inversement.

SELECT s.lastname, y.label 
FROM `year` y
RIGHT JOIN `enrolment` e on e.id_year = y.id
RIGHT JOIN `student` s on e.id_student = s.id
WHERE e.`from` >= "2017-01-01 00:00:00"
ORDER BY s.lastname
