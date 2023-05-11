page 50141 "CSD My Seminars"
{
    PageType = ListPart;
    SourceTable = "CSD My Seminars";
    Caption = 'My Seminars';
    ApplicationArea = all;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Seminar No."; Rec."Seminar No.")
                {

                    ApplicationArea = ALL;
                }
                field(Name; Seminar.Name)
                {
                    ApplicationArea = ALL;
                }
                field(Duration; Seminar."Seminar Duration")
                {
                    ApplicationArea = ALL;
                }
                field(Price; Seminar."Seminar Price")
                {
                    ApplicationArea = ALL;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Open)
            {
                ApplicationArea = ALL;
                trigger OnAction();
                begin
                    OpenSeminarCard;
                end;
            }
        }
    }

    var
        Seminar: Record "CSD Seminar";



    trigger OnOpenPage();
    begin
        Rec.SetRange("User Id", UserId);
    end;

    trigger OnAfterGetRecord();
    begin
        if Seminar.get(Rec."Seminar No.") then;
    end;

    trigger OnNewRecord(BelowxRec: Boolean);
    begin
        Clear(Seminar);
    end;

    local procedure OpenSeminarCard();
    begin
        if Seminar."No." <> '' then
            Page.Run(Page::"CSD Seminar Card", Seminar);
    end;
}

