
const nowDate = new Date();

let year = nowDate.getFullYear();
let month = nowDate.getMonth() + 1;
let day = nowDate.getDay();

if (process.argv[2] === "-m") {
  month = process.argv[3];
  const monthPattern = new RegExp(/^([1-9]|10|11|12)$/);
  try{
    if(!monthPattern.test(process.argv[3])){
      throw '-mの引数は1〜12の半角数字を入力してください';
    }
    
  }catch(e){
    console.error(e);
    return false;
  }
}

console.log (`     ${month}月 ${year}`);
console.log (`日 月 火 水 木 金 土`);