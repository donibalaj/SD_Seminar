page 50102 "CSD Seminar List"

{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar List';
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {


                }
                field(Name; Rec.Name)
                {


                }
                field("Seminar Duration"; Rec."Seminar Duration")
                {


                }
                field("Seminar Price"; Rec."Seminar Price")
                {


                }
                field("Minimum Participants"; Rec."Minimum Participants")
                {


                }
                field("Maximum Participants"; rec."Maximum Participants")
                {


                }
            }
        }
        area(FactBoxes)
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
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //RunObject=page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name"= const(Seminar),
                    // "No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }

    var
        myInt: Integer;
}