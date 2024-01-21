const FileUpload = () => {
    const handleFileUpload = (event: any) => {
      // Handle file upload
    };
  
    return (
      <div>
        <h1>File Upload</h1>
        <input type="file" onChange={handleFileUpload} />
      </div>
    );
  };
  
  export default FileUpload;
  