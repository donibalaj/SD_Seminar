codeunit 50102 "CSD SeminarRegPrinted"
// Chapter 9 - Lab 1-2
// - Added Codeunit
{
    TableNo = 50110;

    trigger OnRun(){
    begin
            Find;
            Rec."No. Printed" += 1;
            Modify;
            Commit;
        end;
}

}