const addBtn1 = document.querySelector(".addBtn1");
const addBtn2 = document.querySelector(".addBtn2");
const addBtn3 = document.querySelector(".addBtn3");
const addBtn4 = document.querySelector(".addBtn4");
const input1 = document.querySelector(".inputGroup1");
const input2 = document.querySelector(".inputGroup2");
const input3 = document.querySelector(".inputGroup3");
const input4 = document.querySelector(".inputGroup4");

function removeInput(){
    this.parentElement.remove();
}
function addInput1(){
    const organization = document.createElement("input");
    organization.type = "text";
    organization.placeholder = "Organización";
    organization.required = true;
    organization.name = "organization[]";

    const job = document.createElement("input");
    job.type = "text";
    job.placeholder="Puesto";
    job.required = true;
    job.name = "job[]";

    const btn = document.createElement("a");
    btn.className = "delete";
    btn.innerHTML = "&times";

    btn.addEventListener("click", removeInput);

    const flex = document.createElement("div");
    flex.className = "flex";

    input1.appendChild(flex);
    flex.appendChild(organization);
    flex.appendChild(job);
    flex.appendChild(btn);
}
function addInput2(){
    const institution = document.createElement("input");
    institution.type = "text";
    institution.placeholder = "Institución";
    institution.required = true;
    institution.name = "institution[]";

    const career = document.createElement("input");
    career.type = "text";
    career.placeholder="Carrera";
    career.required = true;
    career.name = "career[]";

    const btn = document.createElement("a");
    btn.className = "delete";
    btn.innerHTML = "&times";

    btn.addEventListener("click", removeInput);

    const flex = document.createElement("div");
    flex.className = "flex";

    input2.appendChild(flex);
    flex.appendChild(institution);
    flex.appendChild(career);
    flex.appendChild(btn);
}
function addInput3(){
    const language = document.createElement("input");
    language.type = "text";
    language.placeholder = "Idioma";
    language.required = true;
    language.name = "language[]";

    const level = document.createElement("input");
    level.type = "text";
    level.placeholder="Nivel";
    level.required = true;
    level.name = "level[]";

    const btn = document.createElement("a");
    btn.className = "delete";
    btn.innerHTML = "&times";

    btn.addEventListener("click", removeInput);

    const flex = document.createElement("div");
    flex.className = "flex";

    input3.appendChild(flex);
    flex.appendChild(language);
    flex.appendChild(level);
    flex.appendChild(btn);
}
function addInput4(){
    const skill = document.createElement("input");
    skill.type = "text";
    skill.placeholder = "Habilidad, aptitud";
    skill.required = true;
    skill.name = "skill[]";

    const btn = document.createElement("a");
    btn.className = "delete";
    btn.innerHTML = "&times";

    btn.addEventListener("click", removeInput);

    const flex = document.createElement("div");
    flex.className = "flex";

    input4.appendChild(flex);
    flex.appendChild(skill);
    flex.appendChild(btn);
}

addBtn1.addEventListener("click", addInput1);
addBtn2.addEventListener("click", addInput2);
addBtn3.addEventListener("click", addInput3);
addBtn4.addEventListener("click", addInput4);