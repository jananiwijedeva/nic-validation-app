document.getElementById("btnback").addEventListener("click", function() {
        
    window.location.href = "dashbord.html";
});
function displayFileDetails() {
    const fileInput = document.getElementById('csvFiles');
    const fileList = document.getElementById('fileList');
    const fileDetailsBox = document.getElementById('fileDetails');

    fileList.innerHTML = '';

    if (fileInput.files.length > 0) {
        fileDetailsBox.style.display = 'block';

        for (let i = 0; i < fileInput.files.length; i++) {
            const file = fileInput.files[i];
            const listItem = document.createElement('li');
            listItem.textContent = `${file.name} (${formatFileSize(file.size)})`;
            fileList.appendChild(listItem);
        }
    } else {
        fileDetailsBox.style.display = 'none';
    }
}

function formatFileSize(size) {
    const units = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
    let i = 0;

    while (size >= 1024) {
        size /= 1024;
        i++;
    }

    return size.toFixed(2) + ' ' + units[i];
}