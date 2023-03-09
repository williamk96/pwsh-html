function New-HOneTag {

    param (

        [Parameter(Mandatory,
        HelpMessage="Enter the text which will be inside the <h1> tag")]
        [string[]]$Text,

        # Optional parameters for HTML Global Attributes
        [Parameter(HelpMessage="Supply a single character which will be used for the accesskey attribute. \
        The accesskey attribute specifies a shortcut key to activate/focus the element.")]
        [string[]]$AccessKey,

        [Parameter(HelpMessage="Supply one or more class names separates by commas. \
        The class attribute is mostly used to point to a class in a style sheet. \
        However, it can also be used by a JavaScript (via the HTML DOM) to make changes to HTML elements with a specified class.")]
        [string[]]$Class,

        [Parameter(HelpMessage="Either true or false. \
        This attribute specifies whether the content of the element is editable or not. \
        Default: False")]
        [ValidateSet("True","False")]
        [switch[]]$ContentEditable,

        [Parameter(HelpMessage="Specifiy a custom data label in the format <data-some-label>. \
        The data-* attribute is used to store custom data private to the page or application.")]
        [string[]]$data,

        [Parameter(HelpMessage="The dir attribute specifies the text direction of the element's content. \
        Usage: < ltr | rtl | auto >")]
        [string[]]$dir,

        [Parameter(HelpMessage="Either true or false. \
        The draggable attribute specifies whether the element is draggable or not. \
        Default: False")]
        [switch[]]$draggable,

        [Parameter(HelpMessage="Either true or false. \
        This attribute specifies that the element is not yet, or is no longer, relevant. \
        Default: False")]
        [switch[]]$hidden,

        [Parameter(HelpMessage="Supply a unique string to identify the element.")]
        [string[]]$id,

        [Parameter(HelpMessage="Supply the language of the element's content.")]
        [string[]]$lang,

        [Parameter(HelpMessage="Either true or false. \
        Specifies whether the element is to have its spelling and grammar checked or not. \
        Default: False")]
        [string[]]$spellcheck,

        [Parameter(HelpMessage="Supply an inline CSS style for this element.")]
        [string[]]$style,

        [Parameter(HelpMessage="Supply the tabbing order for the element. \
        (when the 'tab' button is used for navigating)")]
        [string[]]$tabindex,

        [Parameter(HelpMessage="Supply extra information about the element. \
        The information is most often shown as a tooltip text when the mouse moves over the element.")]
        [string[]]$title,

        [Parameter(HelpMessage="Either Yes or No. \
        Specify whether the content of the element should be translated or not. \
        Default: Yes")]
        [string[]]$translate

    )

    <#
    
        Return a <h1> tag given a supplied string of text.
    
    #>

    # Ensure parameters follow html convention

    if ( ($AccessKey -like $null) -or ($AccessKey.Length -gt 1) ) {

        Write-Error -Category InvalidArgument -Message "AccessKey must be a single character."
        return

    }

    # If the user has specified an accesskey that is a single character, format it in html
    if ($AccessKey) {
        
        $AccessKey  = "accesskey=""$($AccessKey)"""

    }

    if ($Class) {
        
        $Class = "class=""$($Class)"""

    }

    if ( !($contenteditable -like $null) -and (($contenteditable -like "Yes") -or ($contenteditable -like "No"))) {

        

    }
    if ( !($data -like $null) ) {}
    if ( !($dir -like $null) ) {}
    if ( !($draggable -like $null) ) {}
    if ( !($hidden -like $null) ) {}
    if ( !($id -like $null) ) {}
    if ( !($lang -like $null) ) {}
    if ( !($spellcheck -like $null) ) {}
    if ( !($style -like $null) ) {}
    if ( !($tabindex -like $null) ) {}
    if ( !($title -like $null) ) {}
    if ( !($translate -like $null) ) {}

    # Concatenate each attribute
    $params = $AccessKey + $class + $contenteditable + $data + $dir + $draggable + $hidden + $id + $lang + $spellcheck + $style + $tabindex + $title + $translate

    $Open = "<h1" + $params + ">"
    $Close = "</h1>"

    $Tag = $Open + $Text + $Close

    return $Tag
    
}