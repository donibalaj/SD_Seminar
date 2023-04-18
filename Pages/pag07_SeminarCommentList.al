
page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    Caption = 'Seminar Comment List';
    SourceTable = "CSD Seminar Comment Line";
    Editable = false;


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
}