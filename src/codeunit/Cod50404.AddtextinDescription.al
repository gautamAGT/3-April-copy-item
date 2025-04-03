//when user clicks copy item in item page then in the show copies item the description field should have some added text at last.


codeunit 50404 "Add text in Description"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Copy Item", 'OnAfterCopyItem', '', false, false)]
    local procedure AppendTextToCopiedItem(var CopyItemBuffer: Record "Copy Item Buffer"; SourceItem: Record Item; var TargetItem: Record Item)

    begin

        if TargetItem.Description <> '' then begin

            TargetItem.Description := TargetItem.Description + ' :)GR';

            TargetItem.Modify();

        end;
    end;
}
