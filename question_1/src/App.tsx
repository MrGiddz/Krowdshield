
import './App.css'
import Card from './components/incident-card'

function App() {


  return (
    <>
     <Card title='Test Title' description='This is a test card description' image='https://placehold.co/600x400' location='Lagos' timestamp={new Date("2024-02-17T10:58:00")}/>
    </>
  )
}

export default App
