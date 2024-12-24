"
Counter is a simple concrete class which suppors incrementing and decrementing. 
Its API is:
- 'decrement and increment'
- 'count'
Its creating message is 'startAt:' 

"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [

  ^ self new count: anInteger 
]

{ #category : 'accessing' }
Counter >> count [

	^ count
]

{ #category : 'accessing' }
Counter >> count: anObject [

	count := anObject
]

{ #category : 'API' }
Counter >> decrement [

count := count - 1.
]

{ #category : 'accessing' }
Counter >> increment [ 

 count := count + 1.
]

{ #category : 'initialization' }
Counter >> initialize [ 
  count := 0.
]

{ #category : 'printing' }
Counter >> printOn: astream [
 super printOn: astream.
 astream nextPutAll: ' with value: ', count printString.
]