page 50134 "CSD Posted Seminar Reg."
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3
    //     - Created new page

    // Chapter 8 - Lab 2 - 4
    // Added Action Navigate

    Caption = 'Seminar Registration';
    Editable = false;
    PageType = Document;
    SourceTable = 50118;
    ApplicationArea = all;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
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
            part(SeminarRegistrationLines; 50135)
            {
                ApplicationArea = ALL;
                SubPageLink = "Document No." = Field("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; Rec."Room Resource No.")
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
            part("Seminar Details"; "CSD Seminar Details FactBox")
            {
                ApplicationArea = ALL;
                SubPageLink = "No." = Field("Seminar No.");
            }
            part("Customer Details"; "Customer Details FactBox")
            {
                ApplicationArea = ALL;
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = Field("Bill-to Customer No.");
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
                    RunPageLink = "No." = Field("No.");
                    RunObject = Page "CSD Seminar Comment Sheet";
                    RunPageView = WHERE("Table name" = CONST("Posted Seminar Reg. HEader"));
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

        area(processing)
        {
            action("&Navigate")
            {
                ApplicationArea = ALL;
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction();

                begin
                    Navigate.SetDoc(Rec."Posting Date", Rec."No.");
                    Navigate.RUN;
                end;
            }
        }
    }
    var
        Navigate: page Navigate;
}





