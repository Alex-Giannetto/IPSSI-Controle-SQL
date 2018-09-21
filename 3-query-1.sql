-- 1. Sélectionner tous les étudiants et leur année d’étude au 1er juillet 2017 (2017-07-01) inclus si ils en ont une, ordonnés par nom de famille croissants.

SELECT s.lastname, y.label 
FROM student s 
LEFT JOIN `enrolment` e on s.id = e.id_student
LEFT JOIN `year` y on e.id_year = y.id
WHERE e.`from` >= "2017-01-01 00:00:00"
ORDER BY s.lastname;