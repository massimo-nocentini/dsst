Class {
	#name : #BaselineOfdsst,
	#superclass : #BaselineOf,
	#category : #BaselineOfdsst
}

{ #category : #baselines }
BaselineOfdsst >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Externals."
		spec
			baseline: 'Roassal3' with: [ 
				spec repository:
						'github://massimo-nocentini/Roassal3:recursiveShapeFromModel/src' ];
			baseline: 'Roassal3Exporters'
			with: [ 
				spec repository: 'github://ObjectProfile/Roassal3Exporters/src' ].

		"Packages"
		spec
			package: 'Kernel-Extensions';
			package: 'dsst-Traits';
			package: 'Slot-Examples-Extensions';
			package: 'Collections-Abstract-Extensions';
			package: 'Kernel-Visualizations';
			package: 'Collections-Native-Visualizations';
			package: 'Collections-Support-Extensions';
			package: 'Collections-Support-Visualizations';
			package: 'Collections-Strings-Extensions';
			package: 'Collections-Sequenceable-Extensions';
			package: 'Collections-Unordered-Maybe';
			package: 'Kernel-NumericalRepresentations';
			package: 'Kernel-NumericalRepresentations-Tests';
			package: 'Kernel-NumericalRepresentations-Visualizations';
			package: 'Collections-Sequenceable-Sorting'
			with: [ spec requires: #( 'Collections-Sequenceable-Extensions' ) ];
			"Graphs."package: 'Collections-Unordered-Graph';
			package: 'Collections-Unordered-Graph-Tests'
			with: [ spec requires: #( 'Collections-Unordered-Graph' ) ];
			package: 'Collections-Unordered-Graph-Visualizations'
			with: [ spec requires: #( 'Collections-Unordered-Graph' ) ];
			"UnionFind."package: 'Collections-Unordered-UnionFind';
			package: 'Collections-Unordered-UnionFind-Tests'
			with: [ spec requires: #( 'Collections-Unordered-UnionFind' ) ];
			package: 'Collections-Unordered-UnionFind-Visualizations'
			with: [ 
				spec requires:
						#( 'Collections-Unordered-UnionFind'
						   'Collections-Sequenceable-Extensions' ) ];
			package: 'Collections-Sequenceable-Cons';
			package: 'Collections-Sequenceable-Cons-Tests';
			package: 'Collections-Sequenceable-SBRAL';
			package: 'Collections-Sequenceable-SBRAL-Tests'
			with: [ spec requires: #( 'Collections-Sequenceable-SBRAL' ) ];
			package: 'Collections-Sequenceable-SBRAL-Visualizations'
			with: [ spec requires: #( 'Collections-Sequenceable-SBRAL' ) ];
			package: 'Collections-Sequenceable-BinomialHeap';
			package: 'Collections-Sequenceable-BinomialHeap-Tests'
			with: [ 
				spec requires: #( 'Collections-Sequenceable-BinomialHeap' ) ];
			package: 'Collections-Sequenceable-BinomialHeap-Visualizations'
			with: [ 
				spec requires: #( 'Collections-Sequenceable-BinomialHeap' ) ];
			package: 'Collections-Native-BitArray';
			package: 'Collections-Native-BitArray-Tests'
			with: [ spec requires: #( 'Collections-Native-BitArray' ) ];
			package: 'Collections-Native-BitArray-Visualizations'
			with: [ spec requires: #( 'Collections-Native-BitArray' ) ];
			package: 'Collections-Sequenceable-Queue';
			package: 'Collections-Sequenceable-Queue-Visualizations';
			package: 'Collections-Unordered-Extensions' ]
]
