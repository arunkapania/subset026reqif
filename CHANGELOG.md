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
