var isEditing = false;

$(document).ready(function()
{
    $("#edit-blog-entry-button").click(function() {
        edit($(this));
    });
});
    
function edit(blogEntry)
{
    var modalContent = $("#blog-entry-modal-content-" + blogEntry.val())
        
    if (isEditing)
    {
        blogEntry.html("edit");
        
        var text = $(".blog-entry-text-area").text();
        
        modalContent.find(".blog-entry-text-area").remove();
        $("<p class='blog-entry-content-paragraph'>" + text + "</p>").appendTo(modalContent)
    }
    else
    {
        blogEntry.html("save");
        
        var text = $(".blog-entry-content-paragraph").text();
    
        modalContent.find(".blog-entry-content-paragraph").remove();
        $("<textarea class='blog-entry-text-area'>" + text + "</textarea>").appendTo(modalContent)
    }
    
    isEditing = !isEditing
}