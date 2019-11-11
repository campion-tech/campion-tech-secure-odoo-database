SELECT id, password, login FROM public.res_users order by id;

-- Update table users
UPDATE public.res_users SET
	password = 'admin'
	where login = 'admin';

UPDATE public.res_users SET
	login = CONCAT('user', id),
	password = CONCAT('user', id)
	where login != 'admin';

SELECT id, password, login FROM public.res_users order by id;

--------------------------------------------------------------------------------------------------------------------

SELECT id, name, email, website, phone, mobile, commercial_company_name, company_name, street , street2, zip, city
FROM public.res_partner
where customer =True
order by id;

-- Update partners who are customers
UPDATE public.res_partner SET
	name = CONCAT('Client ',id) ,
	email = CONCAT('Client',id,'@test-environment.com') ,
	website = CONCAT('http://www.client-',id,'.com'),
	phone = '(111)-111-1111',
	mobile = '(111)-111-1111',
	commercial_company_name = CONCAT('commercial company client ',id),
	company_name = CONCAT('company client ' ,id),
	street =null,
	street2 = null,
	zip = null,
	city = null
where customer =True;

SELECT id, name, email, website, phone, mobile, commercial_company_name, company_name, street , street2, zip, city
FROM public.res_partner
where customer =True
order by id;

-----------------------------------------------------------------------------------------------------------------------


SELECT id, name, email, website, phone, mobile, commercial_company_name, company_name, street , street2, zip, city
FROM public.res_partner
where supplier =True
order by id;

-- Update partners who are suppliers
UPDATE public.res_partner SET
	name = CONCAT('Supplier ',id) ,
	email = CONCAT('supplier',id,'@test-environment.com') ,
	website = CONCAT('http://www.supplier-',id,'.com'),
	phone = '(111)-111-1111',
	mobile = '(111)-111-1111',
	commercial_company_name = CONCAT('commercial company supplier ',id),
	company_name = CONCAT('company supplier ' ,id),
	street =null,
	street2 = null,
	zip = null,
	city = null
where supplier =True;

SELECT id, name, email, website, phone, mobile, commercial_company_name, company_name, street , street2, zip, city
FROM public.res_partner
where supplier =True
order by id;

---------------------------------------------------------------------------------------------------------------------

SELECT id, name, email, website, phone, mobile, commercial_company_name, company_name, street , street2, zip, city
FROM public.res_partner
where customer= False and supplier = False 
order by id;

-- Update partners who are not suppliers and not clients
UPDATE public.res_partner SET
	name = CONCAT('Partner ',id) ,
	email = CONCAT('partner',id,'@test-environment.com') ,
	website = CONCAT('http://www.partner-',id,'.com'),
	phone = '(111)-111-1111',
	mobile = '(111)-111-1111',
	commercial_company_name = CONCAT('commercial company partner ',id),
	company_name = CONCAT('company partner ' ,id),
	street =null,
	street2 = null,
	zip = null,
	city = null
where customer= False and supplier = False ;

SELECT id, name, email, website, phone, mobile, commercial_company_name, company_name, street , street2, zip, city
FROM public.res_partner
where customer= False and supplier = False 
order by id;

---------------------------------------------------------------------------------------------------------------------------

SELECT id, name, email, phone, logo_web , report_header, report_footer, account_no, company_registry
FROM public.res_company;

-- Update table Company
UPDATE public.res_company SET
	name = CONCAT('Company ', id),
	email = CONCAT('company',id,'@example.com'),
	phone = '(111)-111-1111',
	logo_web = null,
           report_header = null,
	report_footer = null,
	account_no = null,
	company_registry = null;

SELECT id, name, email, phone, logo_web , report_header, report_footer, account_no, company_registry
FROM public.res_company;

--------------------------------------------------------------------------------------------------------------------


SELECT name,  email, phone, street, street2, zip, city, country FROM public.res_bank;

-- Update table Bank
UPDATE public.res_bank SET
	name = CONCAT('bank ', id),
	email = CONCAT('bank',id,'@example.com'),
	phone = '(111)-111-1111',
	street =null,
	street2 = null,
	zip = null,
	city = null,
	country= null;

SELECT name,  email, phone, street, street2, zip, city, country FROM public.res_bank;

-----------------------------------------------------------------------------------------------------------------------

SELECT acc_number, sanitized_acc_number FROM public.res_partner_bank;

-- Update table partner bank
UPDATE public.res_partner_bank SET
	acc_number = '12-34-56 7891111' ,
	sanitized_acc_number = CONCAT('123456789111', id);

SELECT acc_number, sanitized_acc_number FROM public.res_partner_bank;

---------------------------------------------------------------------------------------------------------------


SELECT * FROM public.ir_mail_server;

-- Delete all row from  table ir_mail_server  (outgoing mail servers)

DELETE FROM public.ir_mail_server;

SELECT * FROM public.ir_mail_server;

-----------------------------------------------------------------------------------------------------------------------

SELECT * FROM public.fetchmail_server;

-- Delete all row from  table fetchmail_server (incoming Mail Servers)

DELETE FROM public.fetchmail_server;

SELECT * FROM public.fetchmail_server;

------------------------------------------------------------------------------------------------------------------

SELECT id,name, provider, paypal_email_account,paypal_seller_account, paypal_pdt_token, paypal_api_username, paypal_api_password, paypal_api_access_token, paypal_api_access_token_validity FROM public.payment_acquirer;

-- Update table payment acquirer
UPDATE public.payment_acquirer SET
	paypal_email_account = CONCAT('mail', id,'@example.com'),
	paypal_seller_account = CONCAT('seller', id,'@example.com'),
	paypal_pdt_token=null,
	paypal_api_username= null,
	paypal_api_password=null,
	paypal_api_access_token=null,
	paypal_api_access_token_validity= null
where provider = 'paypal';

SELECT id, name, provider, paypal_email_account,paypal_seller_account, paypal_pdt_token, paypal_api_username, paypal_api_password, paypal_api_access_token, paypal_api_access_token_validity FROM public.payment_acquirer;