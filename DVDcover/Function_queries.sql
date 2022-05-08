-- Function 1
select Distinct
DVDTitle.DVDNumber,
DVDTitle.DVDTitle,
DVDTitle.DateReleased
from DVDTitle
inner join CASTMEMBER ON DVDTitle.DVDNumber = CastMember.DVDNumber
inner join Actor ON CastMember.ActorNumber= Actor.ActorNumber
where Actor.ActorSurname Like '%a%'

except

-- Function 2(fn1 + fn2)
SELECT DISTINCT DVDTitle.DVDNumber, DVDTitle.DVDTitle, DVDTitle.DateReleased, DVDCopy.CopyNumber 
FROM DVDTitle 
inner join DVDCopy on DVDTitle.DVDNumber = DVDCopy.DVDNumber 
inner join CastMember ON DVDTitle.DVDNumber = CastMember.DVDNumber 
inner JOIN ACTOR ON CastMember.ActorNumber = ACTOR.ActorNumber 
inner join Loan on DVDCopy.CopyNumber=Loan.CopyNumber 
WHERE Loan.DateReturned is null;

-- Function 3
SELECT Member.MemberNumber, (Member.MemberFirstName + '' + Member.MemberLastName) as MemberName, DVDTitle.DVDTitle, DVDCopy.CopyNumber, Loan.DateOut 
FROM Loan 
inner join Member on Loan.MemberNumber = Member.MemberNumber 
inner join DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber 
inner join DVDTitle on DVDCopy.DVDNumber = DVDTitle.DVDNumber 
WHERE Member.MemberNumber = 1 and Loan.DateOut >= GETDATE()-31;

-- Function 4
SELECT DVDTitle.DVDTitle, DVDTitle.DateReleased, Producer.ProducerName, Studio.StudioName, string_agg(Actor.ActorSurname, ',') within GROUP(order by Actor.ActorSurname) as Cast 
FROM DVDTitle 
inner join Producer on DVDTitle.ProducerNumber = Producer.ProducerNumber 
inner join Studio on DVDTitle.StudioNumber = Studio.StudioNumber 
inner join CastMember on DVDTitle.DVDNumber = CASTMEMBER.DVDNumber 
inner join Actor on CastMember.ActorNumber = Actor.ActorNumber
Group by DVDTitle.DVDTitle, DVDTitle.DateReleased, Producer.ProducerName, Studio.StudioName order by DVDTitle.DateReleased

-- Function 5
SELECT top 1 Loan.LoanNumber, Loan.CopyNumber, Loan.DateOut, Loan.DateDue, Loan.DateReturned, Member.MemberFirstName, Member.MemberLastName
FROM Loan 
inner join Member on Member.MemberNumber = Loan.MemberNumber 
inner join DVDCopy on DVDCopy.CopyNumber = Loan.CopyNumber
inner join DVDTitle on DVDTitle.DVDNumber = DVDCopy.DVDNumber
where Loan.CopyNumber = 3
order by Loan.DateOut Desc

-- Function 6
SELECT *
FROM Member
WHERE Member.MemberNumber = 1 and GETDATE() >= DateAdd(year, 18, Member.MemberDateOfBirth)

SELECT * 
FROM DVDTitle 
inner join DvdCategory on DvdCategory.CategoryNumber = DVDTitle.CategoryNumber where DVDTitle.DVDNumber = 4 and DvdCategory.AgeRestricted = 1;
-- AgeRestricted is in boolean data type.
SELECT MembershipCategory.MembershipTotalLoans from MembershipCategory 
inner join Member on Member.MembershipCategoryNumber = MembershipCategory.MembershipCategoryNumber where Member.MemberNumber = 1; 

SELECT Countr(*) as TotalLoan
from Loan 
where Loan.MemberNumber = 1 and Loan.DateReturned is null;

-- Function 7


-- Function 8


-- Function 9


-- Function 10


-- Function 11


-- Function 12


-- Function 13


-- Function 14



            