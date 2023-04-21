use westside_dance;

CREATE TRIGGER total_sum BEFORE INSERT ON billing 
FOR EACH ROW SET NEW.total_owed = NEW.monthly_class_tuition + NEW.competition_fees;

delimiter |
CREATE TRIGGER total_outstanding AFTER INSERT ON payment_toward_invoice
FOR EACH ROW
BEGIN
 UPDATE billing SET total_owed = total_owed - NEW.payment_amount 
 WHERE billing.invoice_id = NEW.invoice_id;
 END;
