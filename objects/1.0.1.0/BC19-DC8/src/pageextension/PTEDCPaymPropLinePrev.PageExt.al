pageextension 62010 "PTE DC Paym. Prop. Line Prev" extends "OPP Payment Proposal Lines"
{
    layout
    {
        addfirst(factboxes)
        {
            part(CDCCaptureUI; "PTE DC Paym. Prop. Line Addin")
            {
                Caption = 'Document';
                SubPageLink = "Journal Template Name" = field("Journal Template Name"),
                              "Journal Batch Name" = field("Journal Batch Name"),
                              "Journal Line No." = field("Journal Line No."),
                              "Line No." = field("Line No.");
                SubPageView = sorting("Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.");
                ApplicationArea = All, Basic, Suite;
                AccessByPermission = tabledata "CDC Document Capture Setup" = R;
            }
        }
    }
}