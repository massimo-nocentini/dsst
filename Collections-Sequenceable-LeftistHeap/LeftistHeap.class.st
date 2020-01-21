Class {
	#name : #LeftistHeap,
	#superclass : #DoubleLink,
	#instVars : [
		'rank'
	],
	#category : #'Collections-Sequenceable-LeftistHeap'
}

{ #category : #requirements }
LeftistHeap class >> empty [
	^ LeftistHeapEmpty new
		rank: 0;
		yourself
]

{ #category : #'instance creation' }
LeftistHeap class >> fromSequenceableCollection: aCollection [
	^ aCollection size = 1
		ifTrue: [ self leaf: aCollection first ]
		ifFalse: [ | halves |
			halves := aCollection halves.
			(self fromSequenceableCollection: halves first)
				merge: (self fromSequenceableCollection: halves second) ]
]

{ #category : #'as yet unclassified' }
LeftistHeap class >> insert: aValue left: leftHeap right: rightHeap rankComparer: aBlock [
	| v w |
	v := leftHeap rank.
	w := rightHeap rank.
	^ (aBlock value: v value: w)
		ifTrue: [ LeftistHeapNode new
				rank: v + 1;
				value: aValue;
				previousLink: rightHeap;
				nextLink: leftHeap;
				yourself ]
		ifFalse: [ LeftistHeapNode new
				rank: w + 1;
				value: aValue;
				previousLink: leftHeap;
				nextLink: rightHeap;
				yourself ]
]

{ #category : #'as yet unclassified' }
LeftistHeap class >> leaf: anObject [
	^ LeftistHeapNode new
		rank: 1;
		value: anObject;
		previousLink: self empty;
		nextLink: self empty;
		yourself
]

{ #category : #'as yet unclassified' }
LeftistHeap >> add: anObject [
	^ self mergeHeapNode: (LeftistHeap leaf: anObject)
]

{ #category : #'as yet unclassified' }
LeftistHeap >> isEmpty [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
LeftistHeap >> merge: aLeftistHeap [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
LeftistHeap >> mergeHeapNode: aNode [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
LeftistHeap >> min [
	self subclassResponsibility
]

{ #category : #removing }
LeftistHeap >> pop [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
LeftistHeap >> printStringWithSubscriptRank [
	self subclassResponsibility
]

{ #category : #accessing }
LeftistHeap >> rank [
	^ rank
]

{ #category : #accessing }
LeftistHeap >> rank: anObject [
	rank := anObject
]