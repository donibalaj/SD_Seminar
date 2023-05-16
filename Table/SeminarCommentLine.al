table 50104 "CSD Seminar Comment Line"

// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 2-1
// Chapter 7 - Lab 3-2

{
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";
    Caption = 'Seminar Comment Line';


    fields
    {
        field(10; "Table Name"; Enum "Seminar CommentLine")
        {
            Caption = 'Table Name';


        }
        field(20; "Document Line No."; Integer)
        {

            Caption = 'Document Line No.';
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = if ("Table Name" = CONST(Seminar)) "CSD Seminar"
            else
            if ("Table Name" = const("Seminar Registration Header")) "CSD Seminar Reg. Header"
            else
            if ("Table Name" = const("Posted Seminar Reg. Header"))
            "CSD Posted Seminar Reg. Header";

        }
        field(40; "Line No."; Integer)
        {

            Caption = 'Line No.';

        }
        field(50; "Date"; Date)
        {
            Caption = 'Date';

        }
        field(60; "Code"; Code[10])
        {

            Caption = 'Code';
        }
        field(70; "Comment"; Text[80])
        {

            Caption = 'Comment';
        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.", "Line No.")

        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    procedure SetupNewLine()
    var
        SeminarCommentLine: Record "CSD Seminar Comment Line";
    begin
        SeminarCommentLine.SetRange("Table Name", "Table Name");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange("Date", WorkDate);
        if SeminarCommentLine.IsEmpty then
            Date := WorkDate;

    end;

}
