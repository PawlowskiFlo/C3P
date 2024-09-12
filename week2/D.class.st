Class {
	#name : 'D',
	#superclass : 'A',
	#category : 'week2',
	#package : 'week2'
}

{ #category : 'accessing' }
D >> bar [ 
	"bar method for class D"
	
	^ super bar + self foo
]
