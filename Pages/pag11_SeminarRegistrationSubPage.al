page 50111 "CSD Seminar Reg. Subpage"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "CSD Seminar Registration Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = ALL;
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ApplicationArea = ALL;
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ApplicationArea = ALL;
                }
                field(Participated; Rec.Participated)
                {
                    ApplicationArea = ALL;
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = ALL;
                }
                field("Confirmation Date"; Rec."Confirmation Date")
                {
                    ApplicationArea = ALL;
                }
                field("To Invoice"; Rec."To Invoice")
                {
                    ApplicationArea = ALL;
                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = ALL;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = ALL;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = ALL;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = ALL;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }

    actions
    {
    }
}

