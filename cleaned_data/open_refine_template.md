# Open Refine Template University of Tennessee Record


## Template

#### Prefix

```
<?xml version="1.0" encoding="UTF-8"?>
<modsCollection xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd">
```
####Body

```
<mods>
<identifier type="local">{{cells["identifier"].value}}</identifier>

{{if(isBlank(cells['title'].value), '', '<titleInfo><title>' + cells["title"].value + '</title></titleInfo>')}} 

{{if(isBlank(cells['photographer'].value), '', '<name><namePart>' + cells['photographer'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/pht">Photographer</roleTerm></role></name>')}}

{{if(isBlank(cells['date'].value), '', '<originInfo><dateCreated>' + cells['date'].value + '</dateCreated>') + if(isBlank(cells['date_edtf'].value), '', '<dateCreated encoding="edtf">' + cells['date_edtf'].value + '</dateCreated>') + if(isBlank(cells['date_start'].value), '', '<dateCreated encoding="edtf" point="start">' + cells['date_start'].value + '</dateCreated><dateCreated encoding="edtf" point="end">' + cells['date_end'].value + '</dateCreated></originInfo>')}}

<abstract>{{cells["Description"].value}}</abstract>

<physicalDescription><form authority="aat" valueURI="{{cells['form_URI'].value}}">{{cells['form'].value}}</form></physicalDescription>

{{if(isBlank(cells['note'].value), '', '<note>' + cells['note'].value + '</note>')}}


{{if(isBlank(cells['subject'].value), '', '<subject authority="lcsh" valueURI="' + cells['subject_URI'].value + '"><topic>' + cells['subject'].value + '</topic></subject>')}}

{{if(isBlank(cells['subject2'].value), '', '<subject authority="tgm" valueURI="' + cells['subject2_URI'].value + '"><topic>' + cells['subject2'].value + '</topic></subject>')}}

{{if(isBlank(cells['subject3'].value), '', '<subject authority="tgm" valueURI="' + cells['subject3_URI'].value + '"><topic>' + cells['subject3'].value + '</topic></subject>')}}


<typeOfResource>{{cells['typeOfResource'].value}}</typeOfResource>
{{if(isBlank(cells['typeOfResource2'].value), '', '<typeOfResource>' + cells['typeOfResource2'].value + '</typeOfResource>')}}

<relatedItem displayLabel="Project" type="host"><titleInfo><title>C. S. Boyd Photograph Collection</title></titleInfo></relatedItem>

<location><physicalLocation valueURI="http://id.loc.gov/authorities/names/no2014027633">University of Tennessee, Knoxville. Special Collections</physicalLocation></location>

<recordInfo><recordContentSource valueURI="http://id.loc.gov/authorities/names/n87808088">University of Tennessee, Knoxville. Libraries</recordContentSource></recordInfo>

<accessCondition type="use and reproduction" xlink:href="{{cells['rights_URI'].value}}">{{cells['rights'].value}}</accessCondition>
</mods>

```

#### Suffix

```
</modsCollection>
```