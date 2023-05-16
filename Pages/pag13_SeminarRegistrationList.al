page 50113 "CSD Seminar Registration List"
{
    // Chapter 7 - Lab 4-8
    // Added Action Post

    Caption = 'Seminar Registration List';
    CardPageID = "CSD Seminar Registration";
    Editable = false;
    PageType = List;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = lists;
    ApplicationArea = all;

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
            systempart("Links"; Links)
            {
                ApplicationArea = ALL;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = ALL;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Reg Report")
            {
                ApplicationArea = all;
                Caption = 'Shfaq reportin';

                trigger OnAction()
                var
                    Raporti: Report "CSD SeminarRegParticipantList";
                begin
                    Rec.SetFilter("No.", Rec."No.");
                    //SetSelectionFilter(Rec);
                    Report.Run(Report::"CSD SeminarRegParticipantList", true, false, Rec);
                end;
            }
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    ApplicationArea = ALL;
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50106;
                    RunPageLink = "No." = Field("No.");
                    RunPageView = where("Table Name" = Const("Seminar Registration Header"));
                }
                action("&Charges")
                {
                    ApplicationArea = ALL;
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
                action("&Post")
                {
                    ApplicationArea = ALL;
                    Caption = '&Post';
                    Image = PostDocument;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    ShortcutKey = F9;
                    RunObject = codeunit "CSD Seminar-Post (Yes/No)";
                }
                action("&Print")
                {
                    ApplicationArea = ALL;
                    Caption = '&Print';
                    Image = Print;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    trigger OnAction();
                    var
                        SeminarReportSelection: Record "CSD Seminar Report Selections";
                    begin
                        SeminarReportSelection.PrintReportSelection
                        (SeminarReportSelection.Usage::Registration, Rec);
                    end;
                }
            }
        }
    }
}

