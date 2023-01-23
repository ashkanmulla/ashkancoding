---------	Query List -------

select * from [TGSCRMBuz].TgsCRM.dbo.[Tbl_All_Subscription_Data]

select * from [TGSSubBuz].[IntellectMotilalDB].dbo.[View_TGS_EMIData]

Select * FROM [POSTSALES].[dbo].[View_CBOS_LMT_GL_POSTING]

Select * from [POSTSALES].[dbo].[View_EmployeeHR_Live]

select * from [TGSCRMBuz].[TgsCRM].dbo.[VW_NewLedgerCBOS_TGS]

select * from [TGSSubBuz].[IntellectMotilalDB].[dbo].[EDUMO_SubscriptionView]

select * from [TGSSubBuz].[IntellectMotilalDB].dbo.[vw_Subscription_View_TGSOptions]

Select * from [POSTSALES].[dbo].[View_IAPNewClients_InvestmentData]

Select * from [POSTSALES].[dbo].[View_IAPAdditionalInvestmentClients]

Select * from [POSTSALES].[dbo].[View_IAPWithdrawalClients]

Select * from [MOSLACEBuz].[MOSLACEAdvisioryDB].[dbo].[View_IAPSubsPortfolioForTGS]

Select * from [MOSLACEBuz].[MOSLACEAdvisioryDB].[dbo].[tbl_AllowedConsentClient]


---ADVISORY_DUMP_DATA-----------------------------------------------------------------------
WITH DADVDATA AS
(
Select *, ROW_NUMBER() OVER (ORDER BY ClientCode) AS RowNumber
from [TGSCRMNBuz].[TgsCRM].dbo.[vw_AdvisoryDumpData_CRM]
)
Select * from DADVDATA where RowNumber <=800000
--------------------------------------------------------------------------------------------
WITH DADVDATA AS
(
Select *, ROW_NUMBER() OVER (ORDER BY ClientCode) AS RowNumber
from [TGSCRMNBuz].[TgsCRM].dbo.[vw_AdvisoryDumpData_CRM]
)
Select * from DADVDATA where RowNumber >800000

--------------------------------------------------------------------------------------------

---LEDGER FILE
WITH LEDGRDPDATA AS
(
Select *, ROW_NUMBER() OVER (ORDER BY ClientCode) AS RowNumber
from [TGSSubBuz].[IntellectMotilalDB].[dbo].[VW_LedgerWithDematWithPOA]
)
Select * from LEDGRDPDATA where RowNumber <=1000000

-----------------------------------------------------------------------------------------------

WITH LEDGRDPDATA AS
(
Select *, ROW_NUMBER() OVER (ORDER BY ClientCode) AS RowNumber
from [TGSSubBuz].[IntellectMotilalDB].[dbo].[VW_LedgerWithDematWithPOA]
)
Select * from LEDGRDPDATA where RowNumber >1000000 and RowNumber <= 2000000

-----------------------------------------------------------------------------------------------

WITH LEDGRDPDATA AS
(
Select *, ROW_NUMBER() OVER (ORDER BY ClientCode) AS RowNumber
from [TGSSubBuz].[IntellectMotilalDB].[dbo].[VW_LedgerWithDematWithPOA]
)
Select * from LEDGRDPDATA where RowNumber >2000000

-----------------------------------------------------------------------------------------------

--AAYUSHMAN DATTA CBOS QUERY
With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select * from ClientMasterData where ActiveFrom > '2021-12-31' and Status in ('active') and [ExceptionStatus] is NULL 

-----------------------------------------------------------------------------------------------

---SMS CBOS MASTER DATA
With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select * from ClientMasterData where Status in ('active') and [ExceptionStatus] is NULL and TGS_Status is NULL and EduMoPro_Status is NULL and TGSOption_Status is NULL and RowNumber  <=1000000

------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select * from ClientMasterData where Status in ('active') and [ExceptionStatus] is NULL and TGS_Status is NULL and EduMoPro_Status is NULL and TGSOption_Status is NULL and RowNumber  >1000000 and RowNumber <= 2000000

------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select * from ClientMasterData where Status in ('active') and [ExceptionStatus] is NULL and TGS_Status is NULL and EduMoPro_Status is NULL and TGSOption_Status is NULL and RowNumber  >2000000 and RowNumber <= 3000000

------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select * from ClientMasterData where Status in ('active') and [ExceptionStatus] is NULL and TGS_Status is NULL and EduMoPro_Status is NULL and TGSOption_Status is NULL and RowNumber  >3000000

------------------------------------------------------------------------------------------------

---CBOS MASTER DATA (CLIENTCODE MOB EMAIL ACTIVE FROM)
With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[MobileNumber],[Email],[ActiveFrom] from ClientMasterData where RowNumber < 1000000 

------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[MobileNumber],[Email],[ActiveFrom] from ClientMasterData where RowNumber > 1000000 and RowNumber <= 2000000

------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[MobileNumber],[Email],[ActiveFrom] from ClientMasterData where RowNumber > 2000000 and RowNumber <= 3000000

------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[MobileNumber],[Email],[ActiveFrom] from ClientMasterData where RowNumber > 3000000 

-------------------------------------------------------------------------------------------------

---PrashantSir Team Required CBOS data
With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[BranchCode],[SubbrokerCode],[1200Code] from ClientMasterData where RowNumber  <=1000000 

-------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[BranchCode],[SubbrokerCode],[1200Code] from ClientMasterData where RowNumber > 1000000 and RowNumber <= 2000000

-------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[BranchCode],[SubbrokerCode],[1200Code] from ClientMasterData where RowNumber > 2000000 and RowNumber <= 3000000

-------------------------------------------------------------------------------------------------

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select [ClientCode],[BranchCode],[SubbrokerCode],[1200Code] from ClientMasterData where RowNumber  >3000000 

-------------------------------------------------------------------------------------------------


---NEW FinalCode Se mapping22042022
Select * from [POSTSALESRF].[dbo].[iapsat06062022$]
Join [POSTSALES].[dbo].[tbl_MasterClientData]
on [iapsat06062022$].[FINALCODE] = [tbl_MasterClientData].ClientCode


-------------------------------------------------------------------------------------------------

---CBOS QUERY NEW FADVISORY & FREGION DATA DISTRIBUTION QUERY

With ClientMasterData As
(
Select *,ROW_NUMBER() OVER (ORDER BY [ActiveFrom]) AS RowNumber from [POSTSALES].[dbo].[tbl_MasterClientData]
)
Select * from ClientMasterData where Status in ('active') and FAdvisoryType in ('FRANCHISEE ADVISORY') and FRegionType in ('KARNATAKA')

-------------------------------------------------------------------------------------------------

---IMPORTANT
--SINGLE CBOS (final code #NA finding )
 
SELECT *  FROM [POSTSALES].[dbo].[tbl_MasterClientData] where ClientCode in ('GRDVD1200')

SELECT *  FROM [POSTSALES].[dbo].[tbl_MasterClientData] where Email in ('Mohitchopra321093@gmail.com')

SELECT *  FROM [POSTSALES].[dbo].[tbl_MasterClientData] where [1200Code] in ('KTKD1200')

-------------------------------------------------------------------------------------------------

--Part2--- DAILY NEW ACCOUNT OPENNING DATA

Select * from [TGSCRMBuz].[TgsCRM].[dbo].[vw_ClientDataForTGS] where ActiveFrom >= '2022-05-27' order by ActiveFrom

-------------------------------------------------------------------------------------------------















































































