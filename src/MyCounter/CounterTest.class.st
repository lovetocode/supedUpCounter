Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testAlternateCreationMethod [

self assert: ((Counter startingAt: 19) increment; count) equals:20
]

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
 | c |
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : 'tests' }
CounterTest >> testCounterPrintOn [

self assert: Counter new printString equals: 'a Counter with value: 0'
]

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [ 

self assert: (Counter startingAt:5) count equals:5 
]

{ #category : 'as yet unclassified' }
CounterTest >> testIncrement [

 | c |
c := Counter new.
c count:0; increment; increment.
self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialize [

self assert: Counter new count equals: 0
]

{ #category : 'as yet unclassified' }
CounterTest >> testdecrement [
 
  | c | 
c := Counter new.
c count: 2; decrement; decrement.
self assert: c count equals:0
]
