function New-HOneTag {

    param (

        [Parameter(Mandatory,
        HelpMessage="Enter the text which will be inside the <h1> tag")]
        [string]$Text,

        # Optional parameters for HTML Global Attributes
        [Parameter(HelpMessage="Supply a single character which will be used for the accesskey attribute. \
        The accesskey attribute specifies a shortcut key to activate/focus the element.")]
        [string]$AccessKey,

        [Parameter(HelpMessage="Supply one or more class names separates by spaces. \
        The class attribute is mostly used to point to a class in a style sheet. \
        However, it can also be used by a JavaScript (via the HTML DOM) to make changes to HTML elements with a specified class.")]
        [string]$Class,

        [Parameter(HelpMessage="Either true or false. \
        This attribute specifies whether the content of the element is editable or not. \
        Default: False")]
        [ValidateSet("True","False","")]
        [string[]]$ContentEditable,

        [Parameter(HelpMessage="Specifiy a custom data label in the format <some-label='data'>. \
        The data-* attribute is used to store custom data private to the page or application.")]
        [string]$Data,

        [Parameter(HelpMessage="The dir attribute specifies the text direction of the element's content. \
        Usage: < ltr | rtl | auto >")]
        [ValidateSet("ltr","rtl","auto","")]
        [string[]]$Dir,

        [Parameter(HelpMessage="Either true or false. \
        The draggable attribute specifies whether the element is draggable or not. \
        Default: False")]
        [ValidateSet("True","False","")]
        [string[]]$Draggable,

        [Parameter(HelpMessage="Either true or false. \
        This attribute specifies that the element is not yet, or is no longer, relevant. \
        Default: False")]
        [ValidateSet("True","False","")]
        [string[]]$Hidden,

        [Parameter(HelpMessage="Supply a unique string to identify the element.")]
        [string]$Id,

        [Parameter(HelpMessage="Supply the language of the element's content.")]
        [string]$Lang,

        [Parameter(HelpMessage="Either true or false. \
        Specifies whether the element is to have its spelling and grammar checked or not. \
        Default: False")]
        [ValidateSet("True","False","")]
        [string[]]$Spellcheck,

        [Parameter(HelpMessage="Supply an inline CSS style string for this element.")]
        [string]$Style,

        [Parameter(HelpMessage="Supply the tabbing order for the element. \
        (when the 'tab' button is used for navigating)")]
        [string]$Tabindex,

        [Parameter(HelpMessage="Supply extra information about the element. \
        The information is most often shown as a tooltip text when the mouse moves over the element.")]
        [string]$Title,

        [Parameter(HelpMessage="Either Yes or No. \
        Specify whether the content of the element should be translated or not. \
        Default: Yes")]
        [ValidateSet("Yes","No","")]
        [string[]]$Translate

    )

    <#
    
        Return a <h1> tag given a supplied string of text.
    
    #>

    # Ensure parameters become html attributes

    if ( $AccessKey.Length -gt 1 ) {

        Write-Error -Category InvalidArgument -Message "AccessKey must be a single character."
        return

    } elseif ( $AccessKey -like $null ) {

        $AccessKey = ""

    } else {

        $AccessKey  = "accesskey=""$($AccessKey)"" "

    }

    if ( !($Class -like $null) ) {
        
        $Class = "class=""$($Class)"" "

    }

    if ( ($ContentEditable -like $null) -or ($ContentEditable -like "False") ) {

        $ContentEditable = ""

    } else {

        $ContentEditable = "contenteditable=""$($ContentEditable)"" "

    }

    if ( $Data -like $null ) {

        $Data = ""

    } else {

        $Data = "data-" + $($Data) + " "

    }
    if ( $Dir -like $null ) {

        $Dir = ""

    } else {

        $Dir = "dir=""$($Dir)"" "

    }

    if ( ($Draggable -like $null) -or ($Draggable -like "False") ) {

        $Draggable = ""

    } else {

        $Draggable = "draggable=""$($Draggable)"" "

    }

    if ( ($Hidden -like $null) -or ($Hidden -like "False") ) {

        $Hidden = ""

    } else {

        $Hidden = "hidden=""$($Hidden)"" "

    }

    if ( $Id -like $null ) {

        $Id = ""

    } else {

        $Id = "id=""$($Id)"" "

    }

    if ( $Lang -like $null ) {

        $Lang = ""

    } else {

        $Lang = "lang=""$($Lang)"" "

    }

    if ( ($Spellcheck -like $null) -or ($Spellcheck -like "False") ) {

        $Spellcheck = ""

    } else {

        $Spellcheck = "spellcheck=""$($Spellcheck)"" "

    }

    if ( $Style -like $null ) {

        $Style = ""

    } else {

        $Style = "style=""$($Style)"" "

    }

    if ( $Tabindex -like $null ) {

        $Tabindex = ""

    } else {

        $Tabindex = "tabindex=""$($Tabindex)"" "

    }

    if ( $Title -like $null ) {

        $Title = ""

    } else {

        $Title = "title=""$($Title)"" "

    }
    if ( ($Translate -like $null) -or ($Translate -like "Yes") ) {

        $Translate = ""

    } else {

        $Translate = "lang=""$($Translate)"" "

    }

    # Concatenate each attribute
    $params = $AccessKey + $Class + $ContentEditable + $Data + $Dir + $Draggable + $Hidden + $Id + $Lang + $Spellcheck + $Style + $Tabindex + $Title + $Translate

    if ( ($param -like $null) ) {

        $Open = "<h1" + $params + ">"

    } else {

        $Open = "<h1 " + $params + ">"

    }

    $Close = "</h1>"

    $HOneTag = $Open + $Text + $Close

    return $HOneTag
    
}