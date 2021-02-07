import React from 'react';
import './App.css';
import Login from '../src/componentes/Login/Login'
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";
import Button from 'react-bootstrap/Button';
import Administrador from './componentes/Administrador/Administrador';


function App() {
  return (
    <Router>
      <div className="container">
       <div className="btn-group">
        <Link to="/" className="btn btn-dark">
          Login
        </Link>
       <Link to="/Administrador">
         Administrador
       </Link>
      </div>
       <Switch>
         <Route path="/" exact>
            <Login />
         </Route>
        <Route path="/Administrador" exact>
           <Administrador />
        </Route>
       </Switch>
      </div>
    </Router>
  );
}
export default App;
