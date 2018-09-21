-- 6 - Sélectionner les moyennes des étudiants par année d’étude trié par moyenne descendante et par nom de famille ascendant, et remplacer les moyennes par
--  a. A si entre 15 inclus et 20 inclus 
--  b. B si entre 10 inclus et 15 exclus
--  c. C si entre 5 inclus et 10 exclus 
--  d. D si entre 0 inclus et 5 exclus


SELECT s.lastname, s.firstname , ROUND(AVG(ass.grade), 1) as moyenne, CASE
            WHEN ROUND(AVG(ass.grade)) >= 15 AND  ROUND(AVG(ass.grade)) <= 20 THEN 'A'
            WHEN ROUND(AVG(ass.grade)) >= 10 AND  ROUND(AVG(ass.grade)) < 15 THEN 'B'
            WHEN ROUND(AVG(ass.grade)) >= 5 AND  ROUND(AVG(ass.grade)) < 10 THEN 'C'
            WHEN ROUND(AVG(ass.grade)) >= 0 AND  ROUND(AVG(ass.grade)) < 5 THEN 'D'
          END as note
FROM student s LEFT JOIN assessment ass on ass.id_student = s.id
GROUP BY s.id
ORDER BY moyenne DESC, s.lastname ASC