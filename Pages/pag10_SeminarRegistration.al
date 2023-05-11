page 50110 "CSD Seminar Registration"
{
    // Chapter 7 - Lab 4-8
    // Added Action Post

    Caption = 'Seminar Registration';
    PageType = Card;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = ALL;

                    trigger OnAssistEdit();
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.UPDATE;
                    end;
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
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                    ApplicationArea = ALL;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = ALL;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = ALL;
                }
                field("Document Date"; Rec."Document Date")
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
                field("Minimum Participants"; Rec."Minimum Participants")
                {
                    ApplicationArea = ALL;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = ALL;
                }
            }
            part(SeminarRegistrationLines; "CSD Seminar Reg. Subpage")
            {
                ApplicationArea = ALL;
                Caption = 'Lines';
                SubPageLink = "Document No." = field("No.");
            }
            group("Seminar Room")
            {
                field(" Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = ALL;
                }
                field("Room Name"; Rec."Room Name")
                {
                    ApplicationArea = ALL;
                }
                field("Room Address"; Rec."Room Address")
                {
                    ApplicationArea = ALL;
                }
                field("Room Address 2"; Rec."Room Address 2")
                {
                    ApplicationArea = ALL;
                }
                field("Room Post Code"; Rec."Room Post Code")
                {
                    ApplicationArea = ALL;
                }
                field("Room City"; Rec."Room City")
                {
                    ApplicationArea = ALL;
                }
                field("Room Country/Reg. Code"; Rec."Room Country/Reg. Code")
                {
                    ApplicationArea = ALL;
                }
                field("Room County"; Rec."Room County")
                {
                    ApplicationArea = ALL;
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = ALL;
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = ALL;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = ALL;
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                ApplicationArea = ALL;
                SubPageLink = "No." = field("Seminar No.");
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                ApplicationArea = ALL;
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = field("Bill-to Customer No.");
            }
            systempart("Links"; Links)
            {
                ApplicationArea = ALL;
            }
            systempart("Notes"; Notes)
            {
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
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50106;
                    RunPageLink = "No." = Field("No.");
                    RunPageView = where("Table Name" = Const("Seminar Registration Header"));
                    ApplicationArea = all;
                }
                action("&Post")
                {
                    Caption = '&Post';
                    Image = PostDocument;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    ShortcutKey = F9;
                    RunObject = codeunit "CSD Seminar-Post (Yes/No)";
                    ApplicationArea = all;
                }

                action("&Charges")
                {
                    ApplicationArea = all;
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
                action("&Print")
                {
                    ApplicationArea = all;
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

