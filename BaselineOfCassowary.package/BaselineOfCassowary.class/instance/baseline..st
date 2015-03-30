baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'ClKernel';
				package: 'ClTests' with: [ spec requires: 'ClKernel' ];
				package: 'ClDemos' with: [ spec requires: 'ClKernel' ];
				group: 'default' with: #('ClKernel' 'ClDemos');
				group: 'Tests' with: #('ClTests');
				group: 'Core' with: #('ClKernel') ]