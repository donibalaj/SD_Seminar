page 50136 "CSD Posted Seminar Reg. List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3
    //     - Created new page

    Caption = 'Posterd Seminar Registration List';
    CardPageID = "CSD Posted Seminar Reg.";
    Editable = false;
    PageType = List;
    SourceTable = 50118;
    ApplicationArea = all;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = ALL;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = ALL;
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = ALL;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    ApplicationArea = ALL;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = ALL;
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = ALL;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = ALL;
                }
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = ALL;
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details"; 50117)
            {
                ApplicationArea = ALL;
                SubPageLink = "No." = Field("Seminar No.");
            }

        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    ApplicationArea = ALL;
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page "CSD Seminar Comment Sheet";
                    RunPageLink = "No." = Field("No.");
                    RunPageView = WHERE("Table name" = CONST("Posted Seminar Reg. Header"));
                }
                action("&Charges")
                {
                    ApplicationArea = ALL;
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50139;
                    RunPageLink = "Document No." = Field("No.");
                }
            }
        }
    }
}

