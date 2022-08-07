import './App.css';
import axios from "axios";
import StoreInfo from './components/storeInfo';
import { useEffect, useState } from 'react';

const API_URL = "http://localhost:3000/api/v1/store_infos";

function getAPIData(){
  return axios.get(API_URL).then((response) => response.data)
}

function App() {
  const [storeInfos, setStoreInfos] = useState([]);

  useEffect(() =>{
    let mounted = true;
    getAPIData().then((info) => {
      if (mounted){
        setStoreInfos(info);
      }
    });
    return () => { (mounted=false) };
  },[]);

  return (
    <div className="App">
      <h1>Store Info from rails api</h1>
      <StoreInfo storeInfos={storeInfos} />
    </div>
  );
}

export default App;
