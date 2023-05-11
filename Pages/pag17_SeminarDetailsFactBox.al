page 50117 "CSD Seminar Details FactBox"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 2
    //     - Created new page

    Caption = 'Seminar Details';
    PageType = CardPart;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            field("No."; Rec."No.")
            {
                ApplicationArea = ALL;
            }
            field(Name; Rec.Name)
            {
                ApplicationArea = ALL;
            }
            field("Seminar Duration"; Rec."Seminar Duration")
            {
                ApplicationArea = ALL;
            }
            field("Minimum Participants"; Rec."Minimum Participants")
            {
                ApplicationArea = ALL;
            }
            field("Maximum Participants"; Rec."Maximum Participants")
            {
                ApplicationArea = ALL;
            }
            field("Seminar Price"; Rec."Seminar Price")
            {
                ApplicationArea = ALL;
            }
        }
    }
}

