page 50121 "CSD Seminar Ledger Entries"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    // Chapter 7 - Lab 2-9

    Caption = 'Seminar Ledger';
    PageType = List;
    SourceTable = "CSD Seminar Ledger Entry";
    Editable = false;
    UsageCategory = lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    Visible = false;

                }
                field("Entry Type"; Rec."Entry Type")
                {
                    Caption = 'Entry Type';

                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    Caption = 'Seminar No.';

                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }
                field("Charge Type"; Rec."Charge Type")
                {
                    Caption = 'Charge Type';
                }
                field(Type; Rec.Type)
                {
                    Caption = 'Type';
                }
                field(Quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field("Total Price"; Rec."Total Price")
                {
                    Caption = 'Total Price';
                }
                field(Chargeable; Rec.Chargeable)
                {
                    Caption = 'Chargeable';
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    Caption = 'Participant Contact No.';
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    Caption = 'Participant Name';
                }
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                    Caption = 'Instructor Resource No.';
                }
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    Caption = 'Room Resource No.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    Caption = 'Starting Date';
                }
                field("Seminar Registration No."; Rec."Seminar Registration No.")
                {
                    Caption = 'Seminar Registration No.';
                }

                field("Entry No."; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                }

            }
        }
        area(Factboxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}