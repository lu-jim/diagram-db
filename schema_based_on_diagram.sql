/* Database schema to keep the structure of entire database. */
CREATE TABLE "patients" (
  "id" int,
  "name" varchar,
  "date_of_birth" date,
  PRIMARY KEY ("id")
);
CREATE TABLE "medical_histories" (
  "id" int,
  "admitted_at" timestamp,
  "patient_id" int,
  "status" varchar,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_medical_histories.patient_id"
    FOREIGN KEY ("patient_id")
      REFERENCES "patients"("id")
);
