app.get('api/pokemon', async (req, res, next) => {
    try {
        const SQL = `
            SELECT * FROM pokemon
        `;
        const response = await clientInformation.query(SQL);
        console.log(response.rows);
        res.send(response.rows);
    } catch (error) {
        next(error)
    }
})

const init = async () => {
    await client.connect();
    console.log("connected to db");

    const SQL = `
    DROP TABLE IF EXISTS table_name
    INSERT INTO table_name(
        id SERIAL PRIMARY KEY,
        name VARCHAR(50),
        type VARCHAR(50)
        );
    `;
}