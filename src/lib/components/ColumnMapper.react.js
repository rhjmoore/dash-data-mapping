import React, {Component} from 'react';
import PropTypes from 'prop-types';
import DataMapping from 'react-data-mapping';
import * as SingleNoHeaderData from './mock_data/single-no-header';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class ColumnMapper extends Component {
    render() {
// 	    const {columns1, mappingData1, sourceData1, targetData1} = SingleNoHeaderData;
// 		console.log(mappingData1);
		
        const {id, label, value,
        		columns, sourceData, targetData, mappingData,
         		setProps} = this.props;
//  sourceData, targetData, mappingData,
         		
//          console.log('and from dash:')
//          console.log(columns)

        return (
            <div id={id}>
            	<DataMapping
            		columns={columns}
            		sourceData={sourceData}
            		targetData={targetData}
            		config={{
              			checkable: {
                			source: false,
                			target: false
              			},
              			linkNumLimit: {
              				target: 1
              			}
            		}}
            		type={'single'}
            		onChange={(data) => {
            		    setProps({
                		sourceData: _.cloneDeep(data.sourceData),
		                targetData: _.cloneDeep(data.targetData),
		                mappingData: _.cloneDeep(data.mappingData),
        		      });
            		}}
            		mappingData={mappingData}
            		width={600}
            		height={600}
            	/>
            </div>


        );
    }
}

ColumnMapper.defaultProps = {};

ColumnMapper.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * A label that will be printed when this component is rendered.
     */
    label: PropTypes.string.isRequired,

    /**
     * The value displayed in the input.
     */
    value: PropTypes.string,
    
    /**
     * A list / array of the attributes of the fields in the source and target tables
     */
    columns: PropTypes.array.isRequired,
     
     /**
      * A list / array of the columns in the source table
      */
    sourceData: PropTypes.object.isRequired,
    
    /**
     * A list / array of the columns in the target table
     */
    targetData: PropTypes.object.isRequired,
    
    /**
     * An optional list of mappings to start with between source and target
     */
    mappingData: PropTypes.array,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};
