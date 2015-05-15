## 0.6 (2015-05-15)

Features:

- detect and link recurring phrases with special link type (e.g. detect "Linking information is used" in 3.4.4.2.1.1 and link it whenever it is referenced again)

Bugfixes:

- removed root object in SPEC-HIERARCHY (not xsd conformant)
- fixed small bug concerning path separators for media files on non-Unix OSes (this only affects the tool itself, not the ReqIF-output)
- improved detection of adjacent groups of merged cells in tables (affects display of `3.13.10.4.10[4].[t]9`)

## 0.5 (2015-04-20)

Features:

- export of statistical CSVs (nodes and edges of the generated requirement tree)
- add several new properties to the indvidual SpecObjects: *LegalObligation*, *implementerEnhanced*, *atomic*
- add colorful tagging of words in requirements (new field *implementerEnhanced*); detection is based on NLP (a little) and Regexes (a lot)
- add new Kind values for boolean lists (alpha quality)
- improved algorithms to determine the correct Kind property
- add linking of non qualified requirement references (i.e. "Regarding b): bla bla")

Bugfixes:

- additional artifacs (media / statistics data) are now saved in the same directory as the resulting ReqIF
- small fix to fake number text detection which caused some raw paragraph texts in chapter 4 to be truncated (rich texts were ok)

## 0.4 (2015-03-13)

Features:

- add internal and external links (SpecRelations)
- shapes can now be automatically extracted

Bugfixes:

- minor amendmends to tracestrings to facilitate linking (mainly 4.5.2.1[2].[t]1)
- fixed detection of tables 3.13.10.5.4[2].[t]13 and 3.13.10.5.4[3].[t]14


## 0.3 (2015-02-24)

Features:

- add infinite nesting (allows contents of table cells and foot-/endnotes to be split up into individual requirements)
- add all remaining chapters (i.e. full coverage for subset023 and subset026)
- add all missing OfficeDrawings
- reduced size of richText output
- add class attributes in richText (thus enabling XPath-searches)

Bugfixes:

- reworked all chapters
- minor fixes for bulleted sublist hierarchies
- removed heading tags in richText as they are deprecated in ReqIF
- fixed collapse of multiple successive whitespaces in richText
- embedded pictures should look better now (conversion from metafile to png has been improved)


## 0.2 (2014-12-29)

Features:

- add skipped levels (placeholders)
- add requirement kinds
- add implement field
- add subset23, chapter1, chapter7

Bugfixes:

- reworked all chapters
- improved tracing for various table definitions
- amended figure/table tracestrings (the second pair of square brackets has been removed: `[t][*]` -> `[t]*`, `[f][1]` -> `[f]1`)
