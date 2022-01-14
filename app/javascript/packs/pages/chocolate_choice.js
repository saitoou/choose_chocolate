//質問のid取得
//Q1
const q1_01 = document.getElementById("q1_01");
const q1_02 = document.getElementById("q1_02");
const q1_03 = document.getElementById("q1_03");
const q1_04 = document.getElementById("q1_04");
//Q2
const q2_01 = document.getElementById("q2_01");
const q2_02 = document.getElementById("q2_02");
const q2_03 = document.getElementById("q2_03");
const q2_04 = document.getElementById("q2_04");
//Q3
const q3_01 = document.getElementById("q3_01");
const q3_02 = document.getElementById("q3_02");
const q3_03 = document.getElementById("q3_03");
const q3_04 = document.getElementById("q3_04");
//Q4
const q4_01 = document.getElementById("q4_01");
const q4_02 = document.getElementById("q4_02");
const q4_03 = document.getElementById("q4_03");
const q4_04 = document.getElementById("q4_04");

const image = document.getElementById("checklist");

const result = document.getElementById("result");

const bar_choco = document.getElementById("bar_choco");
bar_choco.style.display = "none";

//質問項目の切り替え
const question01 = document.getElementById("question01");
const question02 = document.getElementById("question02");
const question03 = document.getElementById("question03");
const question04 = document.getElementById("question04");

//ストレス判断指数
const counter = [];


//クリック後、切り替え
q1_01.onclick = function() {
  question01.style.display = "none";
  question02.style.display = "";
  counter.push(q1_01.dataset.id);
}
q1_02.onclick = function() {
  question01.style.display = "none";
  question02.style.display = "";
  counter.push(q1_02.dataset.id);
}
q1_03.onclick = function() {
  question01.style.display = "none";
  question02.style.display = "";
  counter.push(q1_03.dataset.id);
}
q1_04.onclick = function() {
  question01.style.display = "none";
  question02.style.display = "";
  counter.push(q1_04.dataset.id);
}

q2_01.onclick = function() {
  question02.style.display = "none";
  question03.style.display = "";
  counter.push(q2_01.dataset.id);
}
q2_02.onclick = function() {
  question02.style.display = "none";
  question03.style.display = "";
  counter.push(q2_02.dataset.id);
}
q2_03.onclick = function() {
  question02.style.display = "none";
  question03.style.display = "";
  counter.push(q2_03.dataset.id);
}
q2_04.onclick = function() {
  question02.style.display = "none";
  question03.style.display = "";
  counter.push(q2_04.dataset.id);
}

q3_01.onclick = function() {
  question03.style.display = "none";
  question04.style.display = "";
  counter.push(q3_01.dataset.id);
}
q3_02.onclick = function() {
  question03.style.display = "none";
  question04.style.display = "";
  counter.push(q3_02.dataset.id);
}
q3_03.onclick = function() {
  question03.style.display = "none";
  question04.style.display = "";
  counter.push(q3_03.dataset.id);
}
q3_04.onclick = function() {
  question03.style.display = "none";
  question04.style.display = "";
  counter.push(q3_04.dataset.id);
}

q4_01.onclick = function() {
  question04.style.display = "none";
  image.style.display = "none";
  result.style.display = "";
  bar_choco.style.display = "";
  counter.push(q4_01.dataset.id);
}
q4_02.onclick = function() {
  question04.style.display = "none";
  image.style.display = "none";
  result.style.display = "";
  bar_choco.style.display = "";
  counter.push(q4_02.dataset.id);
}
q4_03.onclick = function() {
  question04.style.display = "none";
  image.style.display = "none";
  result.style.display = "";
  bar_choco.style.display = "";
  counter.push(q4_03.dataset.id);
}
q4_04.onclick = function() {
  question04.style.display = "none";
  image.style.display = "none";
  result.style.display = "";
  bar_choco.style.display = "";
  counter.push(q4_04.dataset.id);
}

//答えのid取得
const answer1 = document.getElementById("answer01");
const answer2 = document.getElementById("answer02");
const answer3 = document.getElementById("answer03");
const answer4 = document.getElementById("answer04");

result.onclick = function() {
  result.style.display = "none";
  bar_choco.style.display = "none";
  //足し算したいので文字→数値に変換
  let counterNumber = counter.map(function(v) {
    return parseInt(v);
  })
  //結果判定のため配列の中身を足し算する
  let total = counterNumber.reduce(function(x, y){
    return x + y;
  }, 0);
  //ストレス診断の判断ロジック
  if (total === 16) {
    answer1.style.display = "";
  } else if (total > 10 && total < 16 ) {
    answer2.style.display = "";
  } else if (total > 5 && total < 11 ) {
    answer3.style.display = "";
  } else {
    answer4.style.display = "";
  }
}
