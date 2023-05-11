pageextension 50103 "CSD ResourceLedgerEntryExt" extends "Resource Ledger Entries"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 4-3
{
    layout
    {
        addlast(content)
        {
            field("Seminar No."; Rec."CSD Seminar No.")
            {
            }
            field("Seminar Registration No."; Rec."CSD Seminar Registration No.")
            {
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }


}