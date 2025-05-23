SELECT
    A.Name,
    A.Species,
    MAX(A.Primary_Color) AS Primary_Color, -- Dummy aggregate functions because of grouping
    MAX(A.Breed) AS Breed, -- Dummy aggregate
    V.Vaccine,
    COUNT(V.Vaccine) as Number_Of_Vaccinations
FROM Animals AS a
LEFT OUTER JOIN Vaccinations AS v
ON A.Name = V.Name and A.Species = V.Species
WHERE A.Species <> 'Rabbit'
AND (V.Vaccine <> 'Rabies' OR V.Vaccine IS NULL)
GROUP BY A.Species, A.Name
HAVING MAX(V.Vaccination_Time) < '20191001' OR MAX(V.Vaccination_Time) IS NULL
ORDER BY A.Species, A.Name;

