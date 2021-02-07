import React, { useState }  from 'react';
import Titulo from '../Titulo/Titulo';
import Etiqueta from '../Etiqueta/Etiqueta';
import Input from '../Input/Input';
import '../Login/Login.css';


const Login = () => {
    const [ user, setUser ] = useState('');
    const [ password, setPassword] = useState('');
    const [ passwordError, setPasswordError] = useState(false);

    function handleChange(name, value) {
        if (name === 'usuario')
        {
            setUser(value)
        }
        else {
            if(value.length <6){
                setPasswordError(true);
            } else {

                setPasswordError(false);
                setPassword(value)
            }            
        }
    }
   
    function handleSubmit() {
        let account = { user, password}
        if(account) {
            console.log('account:', account)
        }
    }

    return (
        <div className='login-container'>
            <Titulo text='BLOG'/>
            <Titulo text='BIENVENIDOS!'/>
            <hr />
            <Etiqueta text='USUARIO' />
            
            <Input
            attribute={{
                    id: 'usuario',
                    name: 'usuario',
                    type: 'text',
                    placeholder: 'Ingrese su usuario'
                }}

            handleChange={handleChange}
            />

            <Etiqueta text='CONTRASEÑA' />
            <Input
            attribute={{
                    id: 'contraseña',
                    name: 'contraseña',
                    type: 'password',
                    placeholder: 'Ingrese su contraseña'
                }}

            handleChange={handleChange}
            param={passwordError}
            />
            
            { passwordError &&
                <Etiqueta className='label-error' text=' Contraseña Invalida o Incompleta'/>
            }
            <div className='submit-button-container'>
            <button onClick={handleSubmit} className='submit-button'>
                Ingresar
            </button>

            </div>
            
        </div>
    )
};

export default Login;

