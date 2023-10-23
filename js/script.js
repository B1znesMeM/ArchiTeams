$(document).ready(function(){
    $(window).width();
    if($(window).width() > 910){
    $('.owl-carousel').owlCarousel({
        items:2,
        merge:true,
        loop:true,
        margin:10,
        lazyLoad:true,
    })
}
else{
    $('.owl-carousel').owlCarousel({
        items:1,
        merge:true,
        loop:true,
        margin:10,
        lazyLoad:true,
    })
}


$('.burger').click(function (e) {
    e.preventDefault();
    $('.navbar').toggleClass('show');
    $('.translate').toggleClass('show-drop-t');
    $('.sun-moon').toggleClass('show-drop-s-m');

    $('.navbar__item').on("click", function(){
        $('.navbar').removeClass('show');
        $('.translate').removeClass('show-drop-t');
        $('.sun-moon').removeClass('show-drop-s-m');
    })
})

$("a[href^='#']").on("click", function () {
    let href = $(this).attr("href");

    $("html, body").animate({
        scrollTop: $(href).offset().top + -60
    });

    return false;
});

})

const form = document.forms["form"];
const formArr = Array.from(form);
const validFormArr = [];
const button = form.elements["button"];
const checkbox = document.getElementById('checkbox-rect1');

formArr.forEach((el) => {
  if (el.hasAttribute("data-reg")) {
    el.setAttribute("is-valid", "0");
    validFormArr.push(el);
  }
});

form.addEventListener("input", inputHandler);
form.addEventListener("submit", formCheck);

function inputHandler({ target }) {
  if (target.hasAttribute("data-reg")) {
    inputCheck(target);
  }
}

function inputCheck(el) {
  const inputValue = el.value;
  const inputReg = el.getAttribute("data-reg");
  const reg = new RegExp(inputReg);
  if (reg.test(inputValue)) {
    el.setAttribute("is-valid", "1");
    el.style.border = "2px solid rgb(0, 196, 0)";
  } else {
    el.setAttribute("is-valid", "0");
    el.style.border = "2px solid rgb(255, 0, 0)";
  }
}

function formCheck(e) {
  e.preventDefault();
  const allValid = [];
  validFormArr.forEach((el) => {
    allValid.push(el.getAttribute("is-valid"));
  });
  const isAllValid = allValid.reduce((acc, current) => {
    return acc && current;
  });
  if (!Boolean(Number(isAllValid))) {
    alert("Заполните поля правильно!");
    return;
  }

  if (checkbox.checked){
    form.addEventListener('checkbox', formCheck);
  }
  else{
    alert('Что бы отправить форму нужно нажать согласиться с условиями');
  }

  formSubmit();
}

async function formSubmit() {
  const data = serializeForm(form);
  const response = await sendData(data);
  if (response.ok) {
    let result = await response.json();
    alert(result.message);
    formReset();
  } else {
    alert("Код ошибки: " + response.status);
  }
}

function serializeForm(formNode) {
  return new FormData(form);
}

async function sendData(data) {
  return await fetch("send.php", {
    method: "POST",
    body: data,
  });
}

function formReset() {
  form.reset();
  validFormArr.forEach((el) => {
    el.setAttribute("is-valid", 0);
    el.style.border = "none";
  });
}

const darkMode = document.querySelector('.sun-moon');

darkMode.addEventListener('click', () => {
  document.body.classList.toggle('dark-mode-variables');
  darkMode.querySelector('span:nth-child(1)').classList.toggle('active');
  darkMode.querySelector('span:nth-child(2)').classList.toggle('active');
})

const arrow = document.getElementById('arrow');
const contact = document.getElementById('contact');

arrow.addEventListener('click', () => {
  if(contact.style.display == 'block'){
    contact.style.display = 'none'
  }
  else{
    contact.style.display = 'block';
  }

  arrow.classList.toggle('arrow-active');
})