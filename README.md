subset026reqif
==============

This is a repository to host preconverted [ReqIF](http://www.omg.org/spec/ReqIF/) files of the ETCS [subset023](http://www.era.europa.eu/Document-Register/Pages/New-Annex-A-for-ETCS-Baseline-3-and-GSM-R-Baseline-0.aspx) (Baseline 3.0.0) and [subset026](http://www.era.europa.eu/Document-Register/Pages/New-Annex-A-for-ETCS-Baseline-3-and-GSM-R-Baseline-0.aspx) (Baseline 3.3.0). The tool used to create these files will soon be published as well.
See the image below (excerpt taken from chapter 3) to get an impression of what this is all about.

![Visualization of tool input and output](/conversion_visualized.png?raw=true "Original *.doc and generated *.reqif")


The main benefits of ReqIF over Word as the file format for storing / exchaning ETCS requirements may be summarized as follows: **ReqIF...**

* ... was particularly invented with requirement specifications in mind. Hence it has features like *traceability* and *custom metadata* for each requirement built in.
* ... is an open standard and (due to being XML-based and domain-targeted) easily parsable. This lends it to long-term storage.
* ... is supported natively by a wide range of industry-standard RM-tools (DOORS / DOORS NG, reqtify / SCADE, ProR, etc.)
* ... adds a lot of structure to a requirement document. So properties like *links between requirements*, their *legal obligation*, *types of textual artifacts* (Note, Example, etc.) all become automatically processable (e.g. they can be searched for) and differences between different revisions (Baselines) of a document can be much easier computed.


# General structure of this repo

There is a directory for each chapter of the subset026. In each of those directories you will find

1. the input document which was used for the conversion (in MS DOC format)
2. the output document (uncompressed ReqIF data)
3. a text document containing the output of the tool during the conversion process (mostly warnings)
4. a README with specific information about the chapter (if applicable)
5. a `media` subdirectory with linked media artifacts (if the respective chapter contains media)
6. a `statistics` subdirectory (only for subse026). See the dedicated [README](/subset026/README.md) for details.

# Prerequisites to use the ReqIF files

1. Download the ReqIF of choice
2. Get a current version of [formalmind Studio](http://formalmind.com/studio)
3. Start formalmind Studio and use a new workspace
4. Do `File->New->Project`
 1. Select `General->Project` and `Next`
 2. Specify a name, leave the default location and click `Finish`
5. Right click the newly created project in your Project Explorer and select `Import...`
 1. Select `General->File System`
 2. Click on `Browse` and select the directory where you stored the ReqIF from step 1
 3. Tick the ReqIF file from step 1 in the right panel
 4. Click `Finish`
6. If there is also a `media` subdirectory for your chapter, import this the same way. For Step 5.2: Make sure the Option `Create top-level folder` is active and select all files in this folder. In the Project Tree you should end up with a copy of the entire `media` directory as a subdirectory of the folder containing your ReqIF file.
7. Open the Project Tree in your Project Explorer and double click the newly imported ReqIF
 1. Either you already see the requirements grid or it needs another final double-click on that single button below the text: *Doubleclick below to open a specification.*


# Remarks

1. The reference renderer for the input files is Microsoft Word 2003 on Windows XP. Other versions of Word (from Version 97 onwards) should produce similar renderings. However, please *do not* attempt to compare the output ReqIF with the visual representation obtained from any third-party tool (e.g. one of the many Staroffice descendants) or even the PDFs.
2. The reference renderer for the output files is formalmind Studio in version 1.0.0.201503131109. Please *do not* attempt to open the files with stock ProR or the openETCS tool. You may, however, try with other tools known to support XHTML (DOORS and friends) and report the results back to me.
3. By default only the most important fields of each requirement are visible in the grid. Select a requirement and use the properties view (Main Menu: `ProR->Show Properties View`) to see all fields. Their meaning is as follows:
 1. *ListNumberText*: The original string that Word used for numbering this item in a list (only set for requirements which are in a list)
 2. *PlainText*: pure textual version of the requirement text. Does not include vanished text and numberTexts of fake list paragraphs. Line breaks are flattened to spaces. Special characters resolved. May be empty if the current object only serves as a visual helper (e.g. the object representing an entire table) or there is no meaningful textual representation available (e.g. an image).
 3. *RichText*: fancy representation of the requirement as it originally appeared in the Word input file.
 4. *WordTraceId*: a number which uniquely identifies the current object in the original Word input file (intended for backward tracing). This number is not relevant for the user as it does not convey any structural/hierarchical information (for this see *rID* below).
 5. *rID*: the tracestring as specified [here](https://github.com/openETCS/toolchain/issues/437).
 6. *Implement*: A boolean flag which is preset by the tool and may be amended by the user. `True` indicates the respective requirement needs implementation.
 7. *Kind*: An enumeration specifying the kind of the current requirement. `Ordinary` is the usual case for a textual requirement.
4. You will occasionally come across *RichText* which has a background applied. These backgrounds indicate added information which is not (directly) present in the input files. The colors stand for the following:
 1. *lightblue* stands for tracing data inside table cells. This is meant as a visual helper to quickly find the actual (traceable) cell below the RichText version of a table.
 2. *lightpurple* represents a flattened arrow (used in Transition Tables)
 3. *yellow* indicates field numbering (i.e. the number was not typed in by the document author but computed automatically by Word)
 4. *green* marks inline footnotes (big `N`-prepender) or endnotes (small `n`-prepender). The actual footnote text is a child of the requirement where the mark occurs.
 5. *darkgrey* with a descriptive text in *white* constitues a true placeholder (i.e. a requirement which is not present in the original file but needs to be here to maintain a proper hierarchy; do not trace it)
 6. *lightgray* with a descriptive text in *black* constitutes a visual placeholder (that is: the requirement does exist in the input, but it has been split up into smaller chunks; so you are encouraged to rather trace its children)
 7. *underlined blue text* (no background here) is a proper (= non-broken) cross-reference link in the Word document. However, the link target is not yet encoded in the ReqIF.
5. There is an issue tracker in this repo. Feel free to use it if you find anything spurious in the provided files.


# Known bugs

1. If a single word has several styles attached, the rich text representation of that word will contain spaces at the positions where the style changes. The plain text version is correct, though.
2. In very long tables the background shadings of certain cells are not always properly extracted.
3. (very minor) Word apprently does print out `0x0` (Unicode NUL) to the user. The tool does not and does not (yet) emit a warning.
4. The heading detection for the *Kind*-field (see above) is not very sophisticated does not detect all headings.
5. Extraction of fake links (i.e. textual references to another artifact which are not using Word's crossreferencing feature) come with some false positives
