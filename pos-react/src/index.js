import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
// import App from './App';
import MainPage from './mainPage';
import reportWebVitals from './reportWebVitals';

import './assets/css/bootstrap.min.css';
import './assets/css/components.css';
import './assets/css/core.css';
import './assets/css/icons.css';
import './assets/css/responsive.css';
import './assets/plugins/chosen/chosen.min.css';
import './assets/plugins/daterangepicker/daterangepicker.css';
import './assets/plugins/dataTables/jquery.dataTables.min.css';
import './assets/plugins/dataTables/dataTables.bootstrap.min.css';
import './assets/css/pages.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <MainPage />
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
