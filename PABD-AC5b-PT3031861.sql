/*
Questão 01. Criação do schema avaliacaocontinua
*/

CREATE SCHEMA avaliacaocontinua;


/*
Questão 02. Criação da tabela company
*/

CREATE TABLE avaliacaocontinua.company (
    company_name VARCHAR(100) NOT NULL PRIMARY KEY,
    city VARCHAR(100)
);


/*
Questão 03. Criação da tabela employee
*/

CREATE TABLE avaliacaocontinua.employee (
    person_name VARCHAR(100) NOT NULL PRIMARY KEY,
    street VARCHAR(100),
    city VARCHAR(100)
);


/*
Questão 04. Criação da tabela manages
*/

CREATE TABLE avaliacaocontinua.manages (
    person_name VARCHAR(100) NOT NULL PRIMARY KEY,
    manager_name VARCHAR(100)
);


/*
Questão 05. Criação da tabela works
*/

CREATE TABLE avaliacaocontinua.works (
    person_name VARCHAR(100) NOT NULL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2)
);


/*
Questão 06. Integridade referencial: works.person_name → employee.person_name
*/

ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_works_employee
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;


/*
Questão 07. Integridade referencial: works.company_name → company.company_name
*/

ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_works_company
FOREIGN KEY (company_name)
REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;


/*
Questão 08. Integridade referencial: manages.person_name → employee.person_name
*/

ALTER TABLE avaliacaocontinua.manages
ADD CONSTRAINT fk_manages_employee
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
