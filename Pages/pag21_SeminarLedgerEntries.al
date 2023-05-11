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
                    ApplicationArea = ALL;
                    Caption = 'Posting Date';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Document No.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = ALL;
                    Visible = false;

                }
                field("Entry Type"; Rec."Entry Type")
                {
                    ApplicationArea = ALL;
                    Caption = 'Entry Type';

                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Seminar No.';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = ALL;
                    Caption = 'Description';
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Bill-to Customer No.';
                }
                field("Charge Type"; Rec."Charge Type")
                {
                    ApplicationArea = ALL;
                    Caption = 'Charge Type';
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = ALL;
                    Caption = 'Type';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = ALL;
                    Caption = 'Quantity';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = ALL;
                    Caption = 'Unit Price';
                }
                field("Total Price"; Rec."Total Price")
                {
                    ApplicationArea = ALL;
                    Caption = 'Total Price';
                }
                field(Chargeable; Rec.Chargeable)
                {
                    ApplicationArea = ALL;
                    Caption = 'Chargeable';
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Participant Contact No.';
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ApplicationArea = ALL;
                    Caption = 'Participant Name';
                }
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Instructor Resource No.';
                }
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Room Resource No.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = ALL;
                    Caption = 'Starting Date';
                }
                field("Seminar Registration No."; Rec."Seminar Registration No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Seminar Registration No.';
                }

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = ALL;
                    Caption = 'Entry No.';
                }

            }
        }
        area(Factboxes)
        {
            systempart("Links"; Links)
            {
                ApplicationArea = ALL;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = ALL;
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