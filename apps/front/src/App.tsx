import { useState } from "react";
import { Button } from "myui";

function App() {
  const [count, setCount] = useState(0);

  return <Button content={count} onClick={() => setCount(count + 1)} />;
}

export default App;
