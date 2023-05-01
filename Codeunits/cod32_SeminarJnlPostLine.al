codeunit 50132 "CSD Seminar Jnl.-Post Line"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-8
{
    TableNo = "CSD Seminar Journal Line";
    trigger OnRun()
    begin

    end;

    var
        SeminarJnlLine: Record "CSD Seminar Journal Line";
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
        SeminarRegister: Record "CSD Seminar Register";
        SeminarJnlCheckLine: Codeunit "CSD Seminar Jnl.-Check Line";
        NextEntryNo: Integer;

    procedure RunWithCheck(var SeminarJnLine2: Record "CSD Seminar Journal Line")
    var
        myInt: Integer;
    begin
        with SeminarJnLine2 do begin
            SeminarJnlLine := SeminarJnLine2;
            Code();
            SeminarJnLine2 := SeminarJnlLine;
        end;
    end;

    procedure Code()
    var
        myInt: Integer;
    begin
        with SeminarJnlLine do begin
            if EmptyLine then
                exit;

        end;

        if NextEntryNo = 0 then begin
            SeminarLedgerEntry.LockTable;
            if SeminarLedgerEntry.FindLast then
                NextEntryNo := SeminarLedgerEntry."Entry No.";
            NextEntryNo := NextEntryNo + 1;
        end;
        if SeminarRegister."No." = 0 then begin
            SeminarRegister.LockTable;
            if (not SeminarRegister.FindLast) or
            (SeminarRegister."To Entry No." <> 0) then begin
                SeminarRegister.INIT;
                SeminarRegister."No." := SeminarRegister."No." + 1;
                SeminarRegister."From Entry No." := NextEntryNo;
                SeminarRegister."To Entry No." := NextEntryNo;
                SeminarRegister."Creation Date" := TODAY;
                SeminarRegister."Source Code" := SeminarRegister."Source Code";
                SeminarRegister."Journal Batch Name" := SeminarRegister."Journal Batch Name";
                SeminarRegister."User ID" := USERID;
                SeminarRegister.Insert;
            end;
        end;
        SeminarRegister."To Entry No." := NextEntryNo;
        SeminarRegister.Modify;


        SeminarLedgerEntry.INIT;
        SeminarLedgerEntry."Seminar No." := SeminarLedgerEntry."Seminar No.";
        SeminarLedgerEntry."Posting Date" := SeminarLedgerEntry."Posting Date";
        SeminarLedgerEntry."Document Date" := SeminarLedgerEntry."Document Date";
        SeminarLedgerEntry."Entry Type" := SeminarLedgerEntry."Entry Type";
        SeminarLedgerEntry."Document No." := SeminarLedgerEntry."Document No.";
        SeminarLedgerEntry.Description := SeminarLedgerEntry.Description;
        SeminarLedgerEntry."Bill-to Customer No." := SeminarLedgerEntry."Bill-to Customer No.";
        SeminarLedgerEntry."Charge Type" := SeminarLedgerEntry."Charge Type";
        SeminarLedgerEntry.Type := SeminarLedgerEntry.Type;
        SeminarLedgerEntry.Quantity := SeminarLedgerEntry.Quantity;
        SeminarLedgerEntry."Unit Price" := SeminarLedgerEntry."Unit Price";
        SeminarLedgerEntry."Total Price" := SeminarLedgerEntry."Total Price";
        SeminarLedgerEntry."Participant Contact No." := SeminarLedgerEntry."Participant Contact No.";
        SeminarLedgerEntry."Participant Name" := SeminarLedgerEntry."Participant Name";
        SeminarLedgerEntry.Chargeable := SeminarLedgerEntry.Chargeable;
        SeminarLedgerEntry."Room Resource No." := SeminarLedgerEntry."Room Resource No.";
        SeminarLedgerEntry."Instructor Resource No." := SeminarLedgerEntry."Instructor Resource No.";
        SeminarLedgerEntry."Starting Date" := SeminarLedgerEntry."Starting Date";
        SeminarLedgerEntry."Seminar Registration No." := SeminarLedgerEntry."Seminar Registration No.";
        SeminarLedgerEntry."Res. Ledger Entry No." := SeminarLedgerEntry."Res. Ledger Entry No.";
        SeminarLedgerEntry."Source Type" := SeminarLedgerEntry."Source Type";
        SeminarLedgerEntry."Source No." := SeminarLedgerEntry."Source No.";
        SeminarLedgerEntry."Journal Batch Name" := SeminarLedgerEntry."Journal Batch Name";
        SeminarLedgerEntry."Source Code" := SeminarLedgerEntry."Source Code";
        SeminarLedgerEntry."Reason Code" := SeminarLedgerEntry."Reason Code";
        SeminarLedgerEntry."No. Series" := SeminarLedgerEntry."No. Series";
        SeminarLedgerEntry."Entry No." := NextEntryNo;
        NextEntryNo += 1;
        SeminarLedgerEntry.Insert;
    end;






}