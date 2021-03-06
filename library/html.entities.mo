��    
      l               �   /   �   =   �   [   +  D   �    �  @   L  	   �  F   �  }   �  �  \  /   �  =     [   L  D   �    �  @   m  	   �  F   �  }   �   **Source code:** :source:`Lib/html/entities.py` :mod:`html.entities` --- Definitions of HTML general entities A dictionary mapping XHTML 1.0 entity definitions to their replacement text in ISO Latin-1. A dictionary that maps HTML entity names to the Unicode code points. A dictionary that maps HTML5 named character references [#]_ to the equivalent Unicode character(s), e.g. ``html5['gt;'] == '>'``. Note that the trailing semicolon is included in the name (e.g. ``'gt;'``), however some of the names are accepted by the standard even without the semicolon: in this case the name is present with and without the ``';'``. See also :func:`html.unescape`. A dictionary that maps Unicode code points to HTML entity names. Footnotes See https://www.w3.org/TR/html5/syntax.html#named-character-references This module defines four dictionaries, :data:`html5`, :data:`name2codepoint`, :data:`codepoint2name`, and :data:`entitydefs`. Project-Id-Version: Python 3.7
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-06 23:28+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: hi_IN
Language-Team: hi_IN <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Source code:** :source:`Lib/html/entities.py` :mod:`html.entities` --- Definitions of HTML general entities A dictionary mapping XHTML 1.0 entity definitions to their replacement text in ISO Latin-1. A dictionary that maps HTML entity names to the Unicode code points. A dictionary that maps HTML5 named character references [#]_ to the equivalent Unicode character(s), e.g. ``html5['gt;'] == '>'``. Note that the trailing semicolon is included in the name (e.g. ``'gt;'``), however some of the names are accepted by the standard even without the semicolon: in this case the name is present with and without the ``';'``. See also :func:`html.unescape`. A dictionary that maps Unicode code points to HTML entity names. Footnotes See https://www.w3.org/TR/html5/syntax.html#named-character-references This module defines four dictionaries, :data:`html5`, :data:`name2codepoint`, :data:`codepoint2name`, and :data:`entitydefs`. 