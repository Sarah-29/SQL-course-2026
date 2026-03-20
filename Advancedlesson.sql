--simple statment
--refresh statements
SELECT
	*
FROM
	PatientStay;

--adding more columns to the statement

   SELECT
	PatientId
    ,AdmittedDate
    ,DischargeDate
	,Tariff
	,Ward
	,Hospital
FROM
	PatientStay; 

    --create table alias for easier reference
      SELECT
	p.PatientId
    ,p.AdmittedDate
    ,p.DischargeDate
	,p.Tariff
	,Ward
	,Hospital
FROM
	PatientStay p;