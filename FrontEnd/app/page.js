import Link from 'next/link';

const HomePage = () => {
  return (
    <div className="container">
      <h1>Welcome to RescueBot</h1>
      <div className="buttons">
        <a href="/RescueBot" className="link-style">RescueBot</a>
        <a href="/FileUpload" className="link-style">File Upload</a>
        <a href="/vr" className="link-style">VR</a>
      </div>
    </div>
  );
};

export default HomePage;
