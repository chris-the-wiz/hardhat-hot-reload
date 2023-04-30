require('file-loader?name=[name].[ext]!./index.html');
import React from 'react';
import ReactDOM from 'react-dom';

//import "bootstrap/dist/css/bootstrap.css";

//import  { App } from './App';
//import './App.scss';
import { Dapp } from "./components/Dapp";

const  appElement = document.getElementById('app');
ReactDOM.render(
  <React.StrictMode>
    <Dapp/>
  </React.StrictMode>, 
appElement);






