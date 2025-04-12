const nowDate = new Date();

// 月の最終日を求める関数
const getLastDay = (year, month) => {
  return new Date(year, month, 0).getDate();
};

let year = nowDate.getFullYear();
let month = nowDate.getMonth() + 1;
let date = nowDate.getDate();

// 引数エラー判定
if (process.argv[2] === "-m") {
  month = process.argv[3];
  const monthPattern = new RegExp(/^([1-9]|10|11|12)$/);
  try {
    if(!monthPattern.test(process.argv[3])){
      throw '-mの引数は1〜12の半角数字を入力してください';
    }
    
  } catch(e){
    console.error(e);
    return false;
  }
}

// 最初の2行を出力
console.log (`     ${month}月 ${year}`);
console.log (`日 月 火 水 木 金 土`);

let d = 1;

// 初日の曜日に合わせた空白出力
const firstWeekday = new Date(year, month - 1, 1).getDay();
let brank = '   '.repeat(firstWeekday);
process.stdout.write(brank);

// 残りの日にちを出力
while (d <= getLastDay(year, month)) {
  let dayOutput = d < 10 ? ' ' + String(d) : String(d) ;
  if (process.argv[2] === undefined && d === date) {
    dayOutput = '\x1b[30m\x1b[47m' + dayOutput + '\x1b[0m\x1b[49m';
  }
  process.stdout.write(`${dayOutput} `);
  if (d % 7 === (7 - firstWeekday)) {
    console.log('');
  }
  d++;
}