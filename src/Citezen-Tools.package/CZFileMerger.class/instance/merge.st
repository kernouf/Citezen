action
merge: fileName
	| duplicateIdentifier fileSaver |
	inputFiles do: [:each | self load: each].
	duplicateIdentifier := CZDuplicateIdentifier new.
	fileSaver := CZFileSaver new. 
	bibset := duplicateIdentifier withoutInternalTitleDuplicates: bibset.
	fileSaver bibset: bibset ; saveTo: fileName
	

" 
Code de base qui ne supprime pas les doublons et qui ne save pas le bib généré
	inputFiles do: [:each | self load: each].
	^ bibset 
"
