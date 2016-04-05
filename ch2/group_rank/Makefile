
# Read company data into database
# use the company_data.sql file

company_data: company_data.sql
	dropdb company_data
	createdb company_data
	psql -d company_data < company_data.sql
