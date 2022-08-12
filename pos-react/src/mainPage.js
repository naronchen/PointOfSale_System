import rawHTML from "./rawhtml";    
import React from "react";
import DOMPurify from "dompurify";
import parse from "html-react-parser";


const cleanHTML = DOMPurify.sanitize(rawHTML, {
    USE_PROFILES: { html: true },
  });

const MainPage = () => <div>{parse(cleanHTML)}</div>;

export default MainPage;