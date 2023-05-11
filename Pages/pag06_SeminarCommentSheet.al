
page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    Caption = 'Seminar Comment Sheet';
    SourceTable = "CSD Seminar Comment Line";
    AutoSplitKey = true;


    layout
    {
        area(Content)
        {

            repeater(GroupName)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = ALL;

                }
                field(Code; Rec.Code)
                {
                    Visible = false;
                    ApplicationArea = ALL;
                }
                field(Comment; Rec.Comment)
                {

                    ApplicationArea = ALL;
                }
            }
        }
        area(Factboxes)
        {

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

    trigger OnNewRecord(BelowxRec: Boolean)

    begin
        Rec.SetupNewLine;

    end;
}