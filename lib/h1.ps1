function Gen-hOne {
    param (
        [Parameter(Mandatory,
        HelpMessage="Enter the text which will be inside the <h1> tag")]
        [string[]]$Text,

        # Optional parameters for HTML Global Attributes
        [Parameter(HelpMessage="Specify a single character which will be used for the accesskey attribute. The accesskey attribute specifies a shortcut key to activate/focus an element.")]
        [string[]]$accesskey,
        [Parameter(HelpMessage="Specify one or more class names separates by commas. The class attribute is mostly used to point to a class in a style sheet. However, it can also be used by a JavaScript (via the HTML DOM) to make changes to HTML elements with a specified class.")]
        [string[]]$class,
        [Parameter(HelpMessage="Either true or false. Use this flag to set contenteditable=True. This attribute specifies whether the content of an element is editable or not")]
        [switch[]]$contenteditable,
        [string[]]$data,
        [Parameter(HelpMessage="The dir attribute specifies the text direction of the element's content. Usage: < ltr | rtl | auto >")]
        [string[]]$dir,
        [Parameter(HelpMessage="Either true or false. The draggable attribute specifies whether an element is draggable or not.")]
        [switch[]]$draggable,
        [Parameter(HelpMessage="Either true or false. This attribute specifies that an element is not yet, or is no longer, relevant.")]
        [switch[]]$hidden,
        [Parameter(HelpMessage="text")]
        [string[]]$id,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$lang,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$spellcheck,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$style,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$tabindex,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$title,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$translate,

        # Optional parameters for HTML Form Events
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonblur,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonchange,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoncontextmenu,
        [Parameter(HelpMessage="text")]
        [string[]]$JSonfocus,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoninput,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoninvalid,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonreset,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonsearch,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonselect,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonsubmit,

        # Optional parameters for HTML Keyboard Events
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonkeydown,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonkeypress,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonkeyup,

        # Optional parameters for HTML Mouse Events
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonclick,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondblclick,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonmousedown,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonmousemove,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonmouseout,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonmouseover,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonmouseup,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonmousewheel,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonwheel,

        # Optional parameters for HTML Drag Events
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondrag,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondragend,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondragenter,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondragleave,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondragover,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondragstart,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondrop,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonscroll,

        # Optional parameters for HTML Clipboard Events
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoncopy,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoncut,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonpaste,

        # Optional parameters for HTML Media Events
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonabort,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoncanplay,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoncanplaythrough,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSoncuechange,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSondurationchange,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonemptied,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonended,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonerror,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonloadeddata,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonloadedmetadata,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSononloadstart,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonpause,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonplay,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonplaying,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonprogress,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonratechange,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonseeked,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonseeking,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonstalled,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonsuspend,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSontimeupdate,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonvolumechange,
        [Parameter(HelpMessage="Specify a ")]
        [string[]]$JSonwaiting,

        # Optional parameters for HTML Misc Events
        [Parameter(HelpMessage="spec")]
        [string[]]$JSontoggle

    )

    <#
    
        Return a <h1> tag given a supplied string of text.
    
    #>

    return $hOne
    
}