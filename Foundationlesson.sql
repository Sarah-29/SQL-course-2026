SELECT 
    PatientId
    ,AdmittedDate
    ,DischargeDate
    ,DATEADD (WEEK, -2, AdmittedDate) AS ReminderDate
    ,DATEDIFF (Day, AdmittedDate, DischargeDate) As LengthofStay
    ,Hospital
    ,Ward
FROM PatientStay
WHERE Hospital NOT IN ('Kingston', 'PRUH')
ORDER BY AdmittedDate ASC, DischargeDate DESC, PatientId DESC


--AND AdmittedDate BETWEEN '2024-02-26'AND '2024-02-28'
--AND Ward LIKE 'D%'
--AND Ward IN ('Day Surgery','General Surgery')
--AND Ward = 'Dermatology'


--SELECT DATEADD(WEEK, -2, '2024-02-28') As Result

--SELECT COUNT(*) as NumPatients FROM PatientStay

SELECT Top 5
    Hospital
    ,Ward
    ,COUNT (*) As NumPatients
    ,SUM(Tariff) As TotalTariff
    ,AVG(Tariff) As AvgTariff
FROM PatientStay
Group by Hospital, Ward
ORDER BY TotalTariff DESC


SELECT
    ps.AdmittedDate
    ,ps.PatientId
FROM PatientStay ps


SELECT 
    ps.PatientId
    , ps.AdmittedDate 
    , ps.hospital
    ,h.hospital
    , h.HospitalType

FROM PatientStay ps FULL OUTER JOIN DimHospitalBad h ON ps.Hospital = h.Hospital


SELECT
 ps.PatientID
 ,ps.Ethnicity
 ,COALESCE (ps.Ethnicity, 'missing') As EthIsNull
 FROM PatientStay ps


 --WHERE Ethnicity Is NULL

 SELECT
 COUNT (PatientID) as Num1
, count (ps.Ethnicity) As Num2
 FROM PatientStay ps
 

SELECT Distinct Ethnicity FROM PatientStay

