
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


                }
                field(Code; Rec.Code)
                {
                    Visible = false;

                }
                field(Comment; Rec.Comment)
                {


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