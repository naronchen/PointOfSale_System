import React from 'react'

function StoreInfo(props) {
  return (
    <div>
        <h1>Store Info</h1>
        { props.storeInfos.map((store) => {
            return (
                <div key={store.id}>
                    <h2>{store.name}</h2>
                    <p>{store.address}</p>
                    <p>{store.contactNumber}</p>
                    <p>{store.currencySymbol}</p>
                </div>
            )
        })}
    </div>
  )
}

export default StoreInfo;