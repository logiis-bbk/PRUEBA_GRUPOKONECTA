import React from 'react';

const Etiqueta = (props) => {
    const { text } = props;
    return (
        <label>
            {text}
        </label>

    )
};

export default Etiqueta;
