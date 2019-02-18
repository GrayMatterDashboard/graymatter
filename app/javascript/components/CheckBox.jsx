import React from 'react';

const CheckBox = props => {
  return (
    <div className="form-group">
      <label htmlFor={props.name} className="form-label">
        {props.title}
      </label>
      <div className="">
        {props.options.map(option => {
          console.log('option', option);
          console.log('selectedOptions', props.selectedOptions);
          const ids = option.id;
          const stringId = ids.toString();
          console.log('option.id', stringId);
          console.log(
            'should be true',
            props.selectedOptions.map(e => e.id).indexOf(option.id) > -1
          );
          console.log(
            'OLD way should be true',
            props.selectedOptions.indexOf(stringId) > -1
          );
          return (
            <label key={option.id} id={option.id}>
              <input
                id={props.id}
                name={props.name}
                onChange={props.handleChange}
                value={option.id}
                checked={props.selectedOptions.indexOf(stringId) > -1}
                type="checkbox"
              />
              <span>
                {option.first_name} {option.last_name}
              </span>
              <br />
            </label>
          );
        })}
      </div>
    </div>
  );
};

export default CheckBox;
