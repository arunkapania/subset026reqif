subset026reqif
==============

ETCS Subset026 as reqif


# General Structure of this repo

There is a directory for each chapter of the subset026. In each of those directories you will find

1. the input document which was used for the conversion (in MS DOC format)
2. the output document (uncompressed reqif data)
3. a text document containing the output of the tool during the conversion process (mostly warnings)
4. a README with specific information about the chapter (if applicable)
5. a `media` subdirectory with linked media artifacts (if the respective chapter contains media)
 1. within this folder is an automatically generated file `conversion.bat` which was used to convert the original media files into a reqif-compatible format and remains there for reference only


# Prerequisites to use the reqif files

1. Download the reqif of choice
2. Get a current version of [formalmind Studio](http://formalmind.com/studio)
3. Start formalmind Studio and use a new workspace
4. Do `File->New->Project`
 1. Select `General->Project` and `Next`
 2. Specify a name, leave the default location and click `Finish`
5. Right click the newly created project in your Project Explorer and select `Import...`
 1. Select `General->File System`
 2. Click on `Browse` and select the directory where you stored the reqif from step 1
 3. Tick the reqif file from step 1 in the right panel
 4. Click `Finish`
6. If there is also a `media` subdirectory for your chapter, import this the same way. For Step 5.2: Make sure the Option `Create top-level folder` is active and select all files in this folder. In the Project Tree you should end up with a copy of the entire `media` directory as a subdirectory of the folder containing your reqif file.
7. Open the Project Tree in your Project Explorer and double click the newly imported reqif
 1. Either you already see the requirements grid or it needs another final double click on that single button below the text: *Doubleclick below to open a specification.*


# Remarks

1. The reference renderer for the input files is Microsoft Word 2003 on Windows XP. Other versions of Word (from Version 97 onwards) should produce similar renderings. However, please *do not* attempt to compare the output reqif with the visual representation obtained from any third-party tool (e.g. one of the many Staroffice descendants) or even the PDFs.
2. The reference renderer for the output files is formalmind Studio in version 0.11.0.201411181506. Please *do not* attempt to open the files with stock Pror or the openETCS tool. You may, however, try with other tools known to support XHTML (DOORS and friends) and report the results back to me.
3. By default only the most important fields of each requirement are visible in the grid. Select a requirement and use the properties view (Main Menu: `ProR->Show Properties View`) to see all fields. Their meaning is as follows:
 1. *ListNumberText*: The original string that Word used for numbering this item in a list (only set for requirements which are in a list)
 2. *PlainText*: pure textual version of the requirement text. Does not include vanished text. Line breaks are flattened to spaces. Special characters resolved. May be empty if the current object only serves as a visual helper (e.g. the object representing an entire table) or there is no meaningful textual representation available (e.g. an image).
 3. *RichText*: fancy representation of the requirement as it originally appeared in the Word input file.
 4. *WordTraceId*: a number which uniquely identifies the current object in the original Word input file (intended for backward tracing). This number is not relevant for the user as it does not convey any structural/hierarchical information (for this see *rID* below).
 5. *rID*: the tracestring as specified [here](https://github.com/openETCS/toolchain/issues/437).
4. You will occasionally come across *RichText* which has a background applied. These backgrounds indicate added information which is not (directly) present in the input files. The colors indicate the following:
 1. *lightblue* stands for tracing data inside table cells. This is meant as a visual helper to quickly find the actual (traceable) cell below the RichText version of a table.
 2. *lightpurple* represents a flattened arrow (used in Transition Tables)
 3. *yellow* indicates numbering which was computed (i.e. the Word file only contains a marker but not the actual number itself)
 4. *underlined blue text* (no background here) is a proper (= non-broken) cross-reference link in the Word document. However, the link target is not yet encoded in the reqif.
5. There is an issue tracker in this repo. Feel free to use it if you find anything spurious in the provided files.
6. **DO NOT USE ANY OF THESE FILES FOR PRODUCTION.** These are only intermediate results and they *will* change.

