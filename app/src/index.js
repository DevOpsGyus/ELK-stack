const express = require('express');

const port = process.env.PORT || 3000;

const app = express();

app.get('/', (_, res) => {
    res.status(200).json({
        Name: 'dummy_app',
        descpiton:"This is application is a dummy app used in setup of elastalert",
        Ownner:'thedevopsguys' 
    })
})

app.listen(port, () => {
    console.log('dummy_app is started and listing at port--> -3000')
})