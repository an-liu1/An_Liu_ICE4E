(() => {
//variable stack first
const courseInfo = document.querySelector('.profPanelText').querySelectorAll('p'),
      courseTitle = document.querySelector('.courseInfo').querySelector('h2'),
      yellowbox = document.querySelector('.yellowBoxNav'),
      courseDes = document.querySelector('.courseInfo').querySelector('p');

//write functions in the middle
function setCourseInfo(data) {
    courseInfo[0].textContent = data.coursename;
    courseInfo[0].innerHTML += ` - <span class="text-primary">${data.coursecode}</span>`;

    courseInfo[1].textContent = `Professor: ${data.profname}`;
    document.querySelectorAll('.profileImg')[1].src = `images/${data.profimg}`;
    //add the times
    data.classtime.forEach(time => {
        let newTime = `<li><span class="fa fa-clock-o">${time}</span><li>`;
        courseInfo[1].parentElement.querySelector('ul').innerHTML += newTime;
    });
    courseTitle.textContent = data.coursename + ' - ' +data.coursecode;
    courseDes.textContent = data.coursedesc;
    data.coursecontent.forEach(content => {
    document.querySelector('.weeklySched').querySelector('ul').innerHTML += `<li>${content}</li>`;
    });
    // var drop = document.querySelector('.weeklySched').querySelector('ul').querySelectorAll('li')[3];
    // var div = document.createElement('div');
    // div.className = "dropdown";
    // drop.appendChild(div);
    // var dropdiv = document.querySelector('.weeklySched').querySelector('ul').querySelectorAll('li')[3].querySelector('div');
    // var p = document.createElement('p');
    // p.id = 'dropdownMenu1';
    // p.className = 'dropdown-toggle';
    // p.innerHTML = "Discussion Groups";
    // dropdiv.appendChild(p);

    //console.log(dropdiv);
}
yellowbox.style.float = 'right';
function getData(){
    fetch('./admin/connect.php')
    .then(res => res.json())
    .then(data => {
        console.log(data);
        setCourseInfo(data[0]);
    })
    .catch(function(error){
        console.log(error);
    });
}
getData(classData);
//call the setCourseInfo functin
setCourseInfo(classData);
})();