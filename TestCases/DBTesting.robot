*** Settings ***
Library    DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
Suite Teardown  Disconnect From Database
*** Variables ***
${DB_HOST}    127.0.0.1
${DB_PORT}    3306
${DB_NAME}    mydb
${DB_USER}    root
${DB_PASSWORD}    root

*** Test Cases ***
Create person Table
    ${output}=  Execute SQL String  create table person(id integer, first_name varchar(20), last_name varchar(20))
    Log    ${output}
    Should Be Equal As Strings    ${output}    None

