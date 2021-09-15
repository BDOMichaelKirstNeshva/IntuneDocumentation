Function Invoke-PrintAssignmentDetail(){
    <#
        .SYNOPSIS
        This function is used to print the assignment information to the word file.
        .DESCRIPTION
        This function is used to print the assignment information to the word file. It also gets group names.
        .EXAMPLE
        Invoke-PrintAssignmentDetail -Assignments $assignment
        Prints the information from the Assignents Array
        .NOTES
        NAME: Invoke-PrintAssignmentDetail
        #>
        param(
            $Assignments
        )
        
        if($Assignments){
            $ExtendedInfo = @()
            write-Log "Document assignments..."
            Add-Header -level 3 -format $format -Text "Assignments"
            if($Assignments.count -gt 1){
                foreach($Assignment in $Assignments){
                    $ExtendedInfo += Invoke-PrintAssignmentDetail_Assignment -Assignment $Assignment
                }
            } else {
                $ExtendedInfo += Invoke-PrintAssignmentDetail_Assignment -Assignment $Assignments
            }
            if($null -ne $ExtendedInfo){
                Add-Table -InputObject $ExtendedInfo -format $format
            } else {
                Add-Text -format $format -Text "No assignments"
            }
        }
        
}