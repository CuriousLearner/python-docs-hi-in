# हिंदी शब्दावली (Hindi glossary)

Shared Hindi terms for the Python docs, so every file uses the same words.
See the devguide
[translation style guide](https://devguide.python.org/documentation/translations/translating/#translation-style-guide).

Propose new or changed terms in an issue or PR before using them widely.

## Conventions

- **Never translate** code, Python keywords, built-in and module names,
  file names, command-line options, anything in ``` ``double backticks`` ```,
  or reST markup (roles such as `:ref:`, `:func:`, link targets in `<...>`).
- **Technical terms** are transliterated into Devanagari (for example
  *function* → फ़ंक्शन), because that is how Hindi-speaking programmers say
  and search for them. Use a native Hindi word only when it is already common
  in everyday writing (for example *example* → उदाहरण, *value* → मान).
- **Nukta:** write the English *f* and *z* sounds with a nukta (फ़ाइल,
  फ़ंक्शन, डिफ़ॉल्ट), and use ऑ for the English *o* in *object*, *module*
  (ऑब्जेक्ट, मॉड्यूल).
- **Register:** polite आप form with -एँ / -इए imperatives (देखें, कीजिए),
  never तुम or तू.
- **Punctuation:** end sentences with the पूर्ण विराम (।). Other punctuation
  (commas, brackets, quotes, colons) and digits stay as in English (0–9).
- **Proper names** of products and projects (GitHub, Sphinx, Discourse)
  stay in Latin script. The language name in running text is पायथन.
- **Labels in other tools' interfaces** that the reader sees in English
  (GitHub buttons such as "New issue") stay in English inside quotes.
- **Plurals and cases** of transliterated words take Hindi endings
  (फ़ंक्शनों में, ऑब्जेक्टों की), never the English -s (फ़ंक्शन्स).
- **Code samples and terminal output** (entries that are only code, a shell
  session or program output) are copied into `msgstr` unchanged, so readers
  see exactly what Python prints.
- **Markup links:** keep every `:term:`, `:ref:`, `:func:` and other role from
  the English text, or Sphinx warns and the build fails. When the link text
  is translated, keep the target: ``:term:`इंटरैक्टिव <interactive>` ``.
- **Suffixes next to markup:** reST ignores a role or literal whose closing
  mark is directly followed by a letter, so put a space before a postposition
  (``` ``print()`` का ```), or, if a suffix must be attached, add an escaped
  space: ``` ``list``\ ों ``` (written `\\ ` inside the raw `.po` string).

## Terms

| English | हिंदी |
| --- | --- |
| abstract base class | ऐब्स्ट्रैक्ट बेस क्लास |
| abstract data type | ऐब्स्ट्रैक्ट डेटा टाइप |
| argument | आर्ग्युमेंट |
| attribute | एट्रिब्यूट |
| backslash | बैकस्लैश |
| bound (method) | बाउंड |
| bug | बग |
| built-in | बिल्ट-इन |
| call stack | कॉल स्टैक |
| class | क्लास |
| command line | कमांड लाइन |
| comment | कमेंट |
| debugging | डीबगिंग |
| decorator | डेकोरेटर |
| deep copy | डीप कॉपी |
| default | डिफ़ॉल्ट |
| dictionary | डिक्शनरी |
| documentation | डॉक्यूमेंटेशन |
| double quote | डबल कोट |
| e.g. | जैसे |
| error | त्रुटि |
| example | उदाहरण |
| exception | एक्सेप्शन |
| expression | एक्सप्रेशन |
| file | फ़ाइल |
| function | फ़ंक्शन |
| garbage collector | गार्बेज कलेक्टर |
| identifier | आइडेंटिफ़ायर |
| immutable | इम्यूटेबल |
| import | इम्पोर्ट |
| indented | इंडेंट किया गया |
| installer | इंस्टॉलर |
| instance | इंस्टेंस |
| integer | पूर्णांक |
| interactive | इंटरैक्टिव |
| interpreter | इंटरप्रेटर |
| issue (in a tracker) | इश्यू |
| iterator | इटरेटर |
| keyword | कीवर्ड |
| library | लाइब्रेरी |
| -like (file-like object) | -जैसा (फ़ाइल-जैसा ऑब्जेक्ट) |
| list | लिस्ट |
| list comprehension | लिस्ट कॉम्प्रिहेंशन |
| little-endian, big-endian | लिटिल-एंडियन, बिग-एंडियन |
| loop | लूप |
| method | मेथड |
| module | मॉड्यूल |
| mutable | म्यूटेबल |
| namespace | नेमस्पेस |
| object | ऑब्जेक्ट |
| operator | ऑपरेटर |
| package | पैकेज |
| parameter | पैरामीटर |
| patch | पैच |
| prompt | प्रॉम्प्ट |
| raise (an exception) | रेज़ करना |
| regular expression | रेगुलर एक्सप्रेशन |
| return (a value) | रिटर्न करना |
| single quote | सिंगल कोट |
| socket | सॉकेट |
| standard library | स्टैंडर्ड लाइब्रेरी |
| statement | स्टेटमेंट |
| string | स्ट्रिंग |
| subprocess | सबप्रोसेस |
| syntax | सिंटैक्स |
| thread | थ्रेड |
| tuple | टपल |
| tutorial | ट्यूटोरियल |
| type | टाइप |
| underscore | अंडरस्कोर |
| value | मान |
| variable | वेरिएबल |
