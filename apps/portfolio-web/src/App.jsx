import { useEffect, useState } from "react";
import axios from "axios";

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
axios.get(import.meta.env.VITE_API_URL + "/hello")
      .then((response) => setData(response.data))
      .catch((error) => console.error(error));
  }, []);

  return (
    <div style={{ padding: "40px", fontFamily: "Arial" }}>
      <h1>🚀 Home Server</h1>

      <h2>Laravel API Response</h2>

      <pre>{JSON.stringify(data, null, 2)}</pre>
    </div>
  );
}

export default App;
