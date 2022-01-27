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
  CONSTRAINT "FK_medical_histories.patient_id" FOREIGN KEY ("patient_id") REFERENCES "patients"("id")
);
CREATE TABLE "treatments" (
  "id" int,
  "type" varchar,
  "name" varchar,
  PRIMARY KEY ("id")
);
CREATE TABLE "invoices" (
  "id" int,
  "total_amount" decimal,
  "generated_at" timestamp,
  "payed_at" timestamp,
  "medical_history_id" int,
  PRIMARY KEY ("id")
);
CREATE TABLE "invoice_items" (
  "id" int,
  "unit_price" decimal,
  "quantity" int,
  "total_price" decimal,
  "invoice_id" int,
  "treatment_id" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_invoice_items.invoice_id"
    FOREIGN KEY ("invoice_id")
      REFERENCES "invoices"("id")
);