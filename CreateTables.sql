DROP DATABASE employeemanagement;
CREATE DATABASE employeemanagement;
\c employeemanagement;

CREATE TABLE Building (
  "id" Int,
  "name" varchar(100),
  "capacity" Int,
  PRIMARY KEY ("id")
);

CREATE TABLE Employee (
  "SSN" Int,
  "b_date" Date,
  "Status" varchar(100),
  "sex" varchar(10),
  "s-name" varchar(100),
  "l-name" varchar(100),
  "Address" varchar(500),
  "super_ssn" Int,
  PRIMARY KEY ("SSN"),
  CONSTRAINT "FK_Employee.super_ssn"
    FOREIGN KEY ("super_ssn")
      REFERENCES Employee("SSN")
);

CREATE TABLE Department (
  "name" varchar(100),
  "Mssn" Int,
  PRIMARY KEY ("name"),
  CONSTRAINT "FK_Department.Mssn"
    FOREIGN KEY ("Mssn")
      REFERENCES Employee("SSN")
);

CREATE TABLE houses (
  "id" Int,
  "dname" varchar(100),
  "bid" Int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_houses.dname"
    FOREIGN KEY("dname")
      REFERENCES Department("name"),

  CONSTRAINT "FK_houses.bid"
    FOREIGN KEY ("bid")
      REFERENCES Building("id")
);

CREATE TABLE Project (
  "name" varchar(100),
  "budget" Int,
  PRIMARY KEY ("name")
);

CREATE TABLE assigned_to(
  "id" Int,
  "pname" varchar(100),
  "dname" varchar(100),
  PRIMARY KEY("id"),
  CONSTRAINT "FK_assigned_to.pname"
    FOREIGN KEY ("pname")
      REFERENCES Project("name"),
  
  CONSTRAINT "FK_assigned_to.dname"
    FOREIGN KEY ("dname")
      REFERENCES Department("name")
);

CREATE TABLE works_in(
  "id" Int,
  "essn" Int,
  "dname" varchar(100),
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_works_in.essn"
    FOREIGN KEY ("essn")
      REFERENCES Employee("SSN"),
  CONSTRAINT "FK_works_in.dname"
    FOREIGN KEY ("dname")
      REFERENCES Department("name")
);

CREATE TABLE Dependents (
  "Name" varchar(100),
  "Essn" Int,
  "Sex" varchar(10),
  "b_date" Date,
  "relationship" varchar(100),
  PRIMARY KEY ("Name"),
  CONSTRAINT "FK_Dependents.Essn"
    FOREIGN KEY ("Essn")
      REFERENCES Employee("SSN")
);

CREATE TABLE Salary_Range (
  "id" Int,
  "grade" Int,
  "start_sal" Int,
  "end_sal" Int,
  PRIMARY KEY ("id")
);

CREATE TABLE Earns(
  "id" Int,
  "sid" Int,
  "essn" Int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Earns.essn"
    FOREIGN KEY ("essn")
      REFERENCES Employee("SSN"),
  CONSTRAINT "FK_Earns.sid"
    FOREIGN KEY ("sid")
      REFERENCES Salary_Range("id")
);

CREATE TABLE Leave_type (
  "id" Int,
  "Type" varchar(50),
  "NoOfDays" Int,
  "Essn" Int,
  PRIMARY KEY ("id")
);

CREATE TABLE Avails_leave(
  "id" Int,
  "essn" Int,
  "lid" Int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Avails_leave.essn"
    FOREIGN KEY ("essn")
      REFERENCES Employee("SSN"),
  CONSTRAINT "FK_Avails_leave.lid"
    FOREIGN KEY ("lid")
      REFERENCES Leave_type("id")
);

CREATE TABLE Skill (
  "id" Int,
  "name" varchar(100),
  "tech" varchar(100),
  PRIMARY KEY ("id")
);

CREATE TABLE Has (
  "id" Int,
  "essn" Int,
  "sid" Int,
  PRIMARY KEY("id"),
  CONSTRAINT "FK_Skill.essn"
    FOREIGN KEY ("essn")
      REFERENCES Employee("SSN"),
  CONSTRAINT "FK_Skill.sid"
    FOREIGN KEY ("sid")
      REFERENCES Skill("id")
);

CREATE TABLE Works_On (
  "Start_date" Date,
  "Hours" Int,
  "Essn" Int,
  "pname"  varchar(100),
  PRIMARY KEY ("Essn",  "pname"),
  CONSTRAINT "FK_Works On.Essn"
    FOREIGN KEY ("Essn")
      REFERENCES Employee("SSN"),
  CONSTRAINT "FK_Works On.pname"
    FOREIGN KEY ("pname")
      REFERENCES Project("name")
);