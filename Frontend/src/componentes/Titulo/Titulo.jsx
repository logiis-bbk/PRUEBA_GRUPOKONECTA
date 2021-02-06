import React from 'react';
import '../Titulo/Titulo.css';

const Titulo = (props) => {
    const { text } = props;
    return (
        <div className='title-container'>
            <label>
            {text}
            </label>
            
        </div>
    )
};

export default Titulo;