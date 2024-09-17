Class {
	#name : 'A',
	#superclass : 'Object',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'accessing' }
A >> bar [ 
	"method bar"
	
	^ self foo
]

{ #category : 'accessing' }
A >> foo [ 
	"method foo"
	
	^10
]
