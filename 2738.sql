SELECT candidate.name, 
    ROUND( ((score.math*2+score.specific*3+score.project_plan*5)/10), 2) AS Average
FROM candidate JOIN score ON candidate.id = score.candidate_id 
ORDER BY Average DESC;