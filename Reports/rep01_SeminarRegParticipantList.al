report 50101 "CSD SeminarRegParticipantList"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/SeminarRegParticipantList.rdl';

    dataset
    {
        dataitem("CSD Seminar Reg. Header"; "CSD Seminar Reg. Header")
        {
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_No; "Seminar No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_Name; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column(Starting_Date; "Starting Date")
            {
                IncludeCaption = true;
            }
            column(Duration; Duration)
            {
                IncludeCaption = true;
            }
            column(Instructor_Name; "Instructor Name")
            {
                IncludeCaption = true;
            }
            column(Room_Name; "Room Name")
            {
                IncludeCaption = true;
            }
        }

        dataitem("Company Information"; "Company Information")
        {
            column(Company_Name; Name)
            {
            }
        }

        dataitem("Seminar Registration Line"; "CSD Seminar Registration Line")
        {
            column(Bill_to_Customer_No; "Bill-to Customer No.")
            {
                IncludeCaption = true;
            }
            column(Participant_Contact_No; "Participant Contact No.")
            {
                IncludeCaption = true;
            }
            column(Participant_Name; "Participant Name")
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

}