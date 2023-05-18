page 50101 "CSD Seminar Card"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 2-4 & Lab 2-5
{
    PageType = Card;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar Card';

    UsageCategory = Administration;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = ALL;
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if Rec.AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = ALL;
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = ALL;
                }
                field("Seminar Duration";
                Rec."Seminar Duration")
                {
                    ApplicationArea = ALL;
                }
                field("Minimum Participants";
                Rec."Minimum Participants")
                {
                    ApplicationArea = ALL;
                }
                field("Maximum Participants";
                Rec."Maximum Participants")
                {
                    ApplicationArea = ALL;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = ALL;
                }
                field("Last Date Modified";
                Rec."Last Date Modified")
                {
                    ApplicationArea = ALL;
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group";
                Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = ALL;
                }
                field("VAT Prod. Posting Group";
                Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = ALL;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = ALL;
                }
            }
        }
        area(FactBoxes)
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
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar), "No." = field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                }
                action("&Registrations")
                {
                    Caption = '&Registrations';
                    RunObject = page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-2
            }
        }
        area(Processing)
        {
            action("Seminar Registration")
            {
                ApplicationArea = ALL;
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;
            }
        }
        // << Lab 8 1-2

    }
}