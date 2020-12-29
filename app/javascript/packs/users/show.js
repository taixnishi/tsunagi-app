const tab = document.querySelectorAll(".tab li a");
const contents = document.querySelectorAll(".contents li");
for (let i = 0; i < tab.length; i++){
    tab[i].addEventListener("click", function(e) {
        // aタグの機能を制限
        e.preventDefault();
        // 全てのタグのアクティブを一度消去
        for (let j = 0; j < tab.length; j++){
            tab[j].classList.remove("active");
        }
        for (let j = 0; j < contents.length; j++){
            contents[j].classList.remove("active");
        }
        this.classList.add("active");
        contents[i].classList.add("active");
    });
}