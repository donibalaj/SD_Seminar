page 50140 "CSD Seminar Manager Activities"

{
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Caption = 'Seminar Manager Activities';

    layout
    {

        area(Content)
        {
            cuegroup(Registrations)
            {
                Caption = 'Registrations';
                field(Planned; Rec.Planned)
                {
                    ApplicationArea = ALL;

                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = ALL;
                }
                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }
            }

            cuegroup("For Posting")
            {
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = ALL;

                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        if not rec.Get then begin
            rec.Init;
            rec.Insert;
        end;
    end;
}