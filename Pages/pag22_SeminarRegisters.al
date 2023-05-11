page 50122 "CSD Seminar Registers"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-11

{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Register";
    Caption = 'Seminar Registers';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = ALL;

                }
                field("Creation Date"; Rec."Creation Date")
                {
                    ApplicationArea = ALL;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = ALL;
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = ALL;
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ApplicationArea = ALL;
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
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                ApplicationArea = ALL;
                Image = WarrantyLedger;
                RunObject = codeunit "CSD Seminar Reg.-Show Ledger";
            }
        }
    }
}