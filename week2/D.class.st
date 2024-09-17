Class {
	#name : 'D',
	#superclass : 'A',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'accessing' }
D >> bar [ 
	"bar method for class D"
	
	^ super bar + self foo
]
