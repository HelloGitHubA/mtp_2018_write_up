const vm_codes = [13, 64, 0, 0, 0, 86, 67, 104, 102, 43, 66, 111, 78, 56, 113, 119, 52, 51, 74, 122, 105, 110, 76, 82, 81, 109, 57, 53, 70, 47, 117, 55, 68, 54, 77, 48, 98, 89, 73, 101, 83, 84, 121, 112, 65, 107, 116, 115, 106, 79, 103, 87, 69, 50, 100, 85, 72, 114, 108, 71, 97, 80, 75, 49, 99, 90, 88, 118, 120, 1, 3, 0, 0, 0, 98, 54, 52, 10, 0, 0, 0, 0, 3, 9, 0, 0, 0, 103, 101, 116, 70, 105, 110, 105, 115, 104, 1, 8, 0, 0, 0, 105, 115, 70, 105, 110, 105, 115, 104, 0, 8, 0, 0, 0, 105, 115, 70, 105, 110, 105, 115, 104, 10, 0, 0, 0, 0, 11, 17, 130, 7, 0, 0, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 3, 0, 0, 0, 99, 117, 114, 0, 3, 0, 0, 0, 99, 117, 114, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 5, 0, 0, 0, 98, 121, 116, 101, 50, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 50, 10, 0, 1, 0, 0, 8, 6, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 8, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 4, 0, 0, 0, 114, 101, 115, 49, 8, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 4, 0, 0, 0, 114, 101, 115, 49, 10, 8, 0, 0, 0, 8, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 4, 0, 0, 0, 114, 101, 115, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 8, 10, 13, 0, 0, 0, 8, 6, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 4, 0, 0, 0, 114, 101, 115, 49, 0, 5, 0, 0, 0, 98, 121, 116, 101, 49, 10, 26, 0, 0, 0, 8, 6, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 4, 0, 0, 0, 114, 101, 115, 49, 10, 87, 0, 0, 0, 6, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 4, 0, 0, 0, 114, 101, 115, 49, 13, 10, 0, 0, 0, 45, 45, 45, 45, 111, 110, 101, 32, 37, 115, 10, 2, 0, 0, 0, 3, 5, 0, 0, 0, 76, 79, 71, 80, 72, 10, 0, 0, 0, 0, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 105, 10, 8, 0, 0, 0, 16, 17, 191, 0, 0, 0, 10, 6, 0, 0, 0, 0, 1, 0, 0, 0, 105, 8, 0, 4, 0, 0, 0, 114, 101, 115, 49, 10, 2, 0, 0, 0, 3, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 1, 4, 0, 0, 0, 116, 101, 109, 112, 10, 63, 0, 0, 0, 0, 4, 0, 0, 0, 116, 101, 109, 112, 10, 2, 0, 0, 0, 3, 4, 0, 0, 0, 98, 97, 110, 100, 10, 1, 0, 0, 0, 6, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 3, 0, 0, 0, 98, 54, 52, 10, 3, 0, 0, 0, 3, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 115, 10, 1, 0, 0, 0, 3, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 0, 1, 0, 0, 0, 105, 10, 1, 0, 0, 0, 6, 1, 1, 0, 0, 0, 105, 10, 0, 0, 0, 0, 17, 48, 255, 255, 255, 10, 6, 0, 0, 0, 10, 8, 0, 0, 0, 8, 0, 4, 0, 0, 0, 114, 101, 115, 49, 10, 2, 0, 0, 0, 3, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 10, 0, 1, 0, 0, 7, 1, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 2, 0, 0, 0, 120, 49, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 2, 0, 0, 0, 120, 50, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 2, 0, 0, 0, 120, 51, 0, 2, 0, 0, 0, 120, 49, 0, 2, 0, 0, 0, 120, 50, 10, 0, 1, 0, 0, 8, 6, 0, 2, 0, 0, 0, 120, 51, 10, 0, 1, 0, 0, 8, 10, 0, 1, 0, 0, 8, 6, 1, 1, 0, 0, 0, 120, 10, 0, 1, 0, 0, 10, 0, 1, 0, 0, 8, 10, 0, 1, 0, 0, 8, 1, 4, 0, 0, 0, 98, 97, 115, 101, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 2, 0, 0, 0, 120, 52, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 2, 0, 0, 0, 120, 53, 10, 0, 0, 0, 0, 3, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 1, 2, 0, 0, 0, 120, 54, 0, 1, 0, 0, 0, 120, 0, 2, 0, 0, 0, 120, 52, 0, 2, 0, 0, 0, 120, 53, 10, 0, 1, 0, 0, 8, 6, 0, 2, 0, 0, 0, 120, 54, 10, 0, 1, 0, 0, 8, 10, 0, 1, 0, 0, 8, 6, 0, 4, 0, 0, 0, 98, 97, 115, 101, 8, 6, 1, 1, 0, 0, 0, 120, 0, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 4, 0, 0, 0, 114, 101, 115, 50, 0, 1, 0, 0, 0, 120, 10, 14, 240, 0, 0, 7, 10, 0, 1, 0, 0, 8, 6, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 4, 0, 0, 0, 114, 101, 115, 50, 13, 2, 0, 0, 0, 37, 115, 10, 2, 0, 0, 0, 3, 5, 0, 0, 0, 76, 79, 71, 80, 72, 10, 0, 0, 0, 0, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 105, 10, 4, 0, 0, 0, 16, 17, 191, 0, 0, 0, 10, 6, 0, 0, 0, 0, 1, 0, 0, 0, 105, 8, 0, 4, 0, 0, 0, 114, 101, 115, 50, 10, 2, 0, 0, 0, 3, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 1, 4, 0, 0, 0, 116, 101, 109, 112, 10, 63, 0, 0, 0, 0, 4, 0, 0, 0, 116, 101, 109, 112, 10, 2, 0, 0, 0, 3, 4, 0, 0, 0, 98, 97, 110, 100, 10, 1, 0, 0, 0, 6, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 3, 0, 0, 0, 98, 54, 52, 10, 3, 0, 0, 0, 3, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 115, 10, 1, 0, 0, 0, 3, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 0, 1, 0, 0, 0, 105, 10, 1, 0, 0, 0, 6, 1, 1, 0, 0, 0, 105, 10, 0, 0, 0, 0, 17, 48, 255, 255, 255, 0, 1, 0, 0, 0, 120, 10, 204, 213, 0, 0, 7, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 1, 0, 0, 0, 120, 10, 16, 20, 0, 0, 7, 1, 4, 0, 0, 0, 114, 101, 115, 51, 0, 4, 0, 0, 0, 114, 101, 115, 50, 0, 4, 0, 0, 0, 114, 101, 115, 51, 10, 0, 1, 0, 0, 7, 10, 0, 1, 0, 0, 8, 10, 0, 1, 0, 0, 8, 6, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 4, 0, 0, 0, 114, 101, 115, 50, 13, 2, 0, 0, 0, 37, 115, 10, 2, 0, 0, 0, 3, 5, 0, 0, 0, 76, 79, 71, 80, 72, 10, 0, 0, 0, 0, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 105, 10, 4, 0, 0, 0, 16, 17, 191, 0, 0, 0, 10, 6, 0, 0, 0, 0, 1, 0, 0, 0, 105, 8, 0, 4, 0, 0, 0, 114, 101, 115, 50, 10, 2, 0, 0, 0, 3, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 1, 4, 0, 0, 0, 116, 101, 109, 112, 10, 63, 0, 0, 0, 0, 4, 0, 0, 0, 116, 101, 109, 112, 10, 2, 0, 0, 0, 3, 4, 0, 0, 0, 98, 97, 110, 100, 10, 1, 0, 0, 0, 6, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 3, 0, 0, 0, 98, 54, 52, 10, 3, 0, 0, 0, 3, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 115, 10, 1, 0, 0, 0, 3, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 0, 1, 0, 0, 0, 105, 10, 1, 0, 0, 0, 6, 1, 1, 0, 0, 0, 105, 10, 0, 0, 0, 0, 17, 48, 255, 255, 255, 0, 1, 0, 0, 0, 120, 10, 204, 99, 0, 0, 7, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 4, 0, 0, 0, 114, 101, 115, 50, 10, 0, 1, 0, 0, 8, 1, 4, 0, 0, 0, 114, 101, 115, 50, 10, 8, 0, 0, 0, 0, 4, 0, 0, 0, 114, 101, 115, 51, 10, 2, 0, 0, 0, 3, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 0, 4, 0, 0, 0, 114, 101, 115, 50, 6, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 4, 0, 0, 0, 114, 101, 115, 50, 13, 2, 0, 0, 0, 37, 115, 10, 2, 0, 0, 0, 3, 5, 0, 0, 0, 76, 79, 71, 80, 72, 10, 0, 0, 0, 0, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 105, 10, 4, 0, 0, 0, 16, 17, 191, 0, 0, 0, 10, 6, 0, 0, 0, 0, 1, 0, 0, 0, 105, 8, 0, 4, 0, 0, 0, 114, 101, 115, 50, 10, 2, 0, 0, 0, 3, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 1, 4, 0, 0, 0, 116, 101, 109, 112, 10, 63, 0, 0, 0, 0, 4, 0, 0, 0, 116, 101, 109, 112, 10, 2, 0, 0, 0, 3, 4, 0, 0, 0, 98, 97, 110, 100, 10, 1, 0, 0, 0, 6, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 4, 0, 0, 0, 116, 101, 109, 112, 0, 3, 0, 0, 0, 98, 54, 52, 10, 3, 0, 0, 0, 3, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 115, 10, 1, 0, 0, 0, 3, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 0, 1, 0, 0, 0, 105, 10, 1, 0, 0, 0, 6, 1, 1, 0, 0, 0, 105, 10, 0, 0, 0, 0, 17, 48, 255, 255, 255, 10, 0, 0, 0, 0, 3, 9, 0, 0, 0, 103, 101, 116, 70, 105, 110, 105, 115, 104, 1, 8, 0, 0, 0, 105, 115, 70, 105, 110, 105, 115, 104, 10, 0, 0, 0, 0, 17, 102, 248, 255, 255];
const Bn = require('bignumber.js');
const math = require("number-crunch");
const _ = e => math.parse(Bn(e).toString());
Bn.config({ EXPONENTIAL_AT: 1e+9 });

async function sleep (time) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, time)
  })
}

class Stack {
  constructor () {
    this.stack = []
  }

  push (a) {
    if (a === null) return;
    this.stack.push(a)
  }

  pop () {
    return this.stack.pop()
  }
}

class Bs {
  constructor (data = []) {
    this.length = data.length;
    this.data = data;
    this.data.unshift(undefined);
    this.i = 1;
  }

  bPos () {
    return this.i - 1;
  }

  move (step) {
    if (this.length + 1 < this.i + step) {
      return false;
    }
    else {
      if (this.i + step < 1) {
        return false;
      }
      else {
        this.i = this.i + step;
        return true;
      }
    }
  }

  pop_raw (size) {
    const arr = []; // index from 1
    for (let z = 0; z < size; z++) {
      arr[z + 1] = this.data[this.i + z]
    }
    return [arr, this.move(size)]
  }

  pop (size) {
    const [arr, is_success] = this.pop_raw(size);
    const ret = arr.slice(1).map(e => e.charCodeAt(0));
    return [ret, is_success];
  }

  readByte () {
    const [buf, is_success] = this.pop_raw(1);
    let ret = buf[1];
    if (typeof ret === 'string') {
      ret = ret.charCodeAt(0)
    }
    return [ret, is_success]
  }

  readInt () {
    const [arr, is_success] = this.pop_raw(4);
    let ret = 0;
    for (let i = 4; i > 0; i--) { // index from 1 -> 4
      ret = (ret * 256) + arr[i];
    }
    if (ret > 2147483648) {
      ret = ret + 2147483648;
      ret = (ret) % 4294967296;
      ret = ret - 2147483648;
    }
    return [ret, is_success];
  }

  readStr () {
    const [len] = this.readInt();
    const [arr, is_success] = this.pop_raw(len);

    const ret = arr.slice(1) // 第一个元素是空
      .map(e => String.fromCharCode(e)).join('');
    return [ret, is_success]
  }


}

function getByte () {
  const [byte, is_success] = plainBs.readByte();
  if (!is_success) {
    return 0;
  }
  return byte;
}

function getFinish () {
  const move_success = plainBs.move(1);
  if (move_success) {
    plainBs.move(-1);
    return 1
  } else {
    return 0
  }
}


function rshift (val, shift) {
  // print(rshift(newn("64"),newn("5")))
  // math.stringify(rshift("16972776960966","0"))
  let m = 1;
  for (let i =0;i<parseInt(shift);i++){
    m*=2;
  }
  return math.stringify(math.div(_(val), _(m)));
}

const logArr = [];

function LOGPH () {
  logArr.push(arguments)
  return null;
}

function stringsub (str, i, j) {
  return str.substr(i - 1, j - i + 1)
}


function band (a, b) {
  // 其实 是 mod(b+1)
  // print(band(newn("32"),newn("3")))
  let divideBy = _(1);
  divideBy = math.add(_(b), divideBy);
  const ret = math.mod(_(a), divideBy);
  return math.stringify(ret);
}

function putByte (val) {
  encryptBs.data[encryptBs.length + 1] = val;
  encryptBs.length++;
  return null
}


class Lvm {
  constructor (codes) {
    this.bs = new Bs(codes);
    this.stack = new Stack();
    this.env = [];
    this.funcTable = {
      3: async () => {
        const [action] = this.bs.readStr();
        const type = eval("typeof " + action);
        if (type === "function") {
          const argn = this.stack.pop();
          const args = [];
          for (let i = 0; i < argn; i++) {
            args[i] = this.stack.pop();
          }
          const func = eval(action);
          const res = func(...args);
          console.log('Call Sub Function: ' + action + '(' + args.join(',') + ') return: ' + res);
          this.stack.push(res);
        } else {
          console.error('Error not a function: ' + action);
        }
      },
      17: async () => {
        let a = this.stack.pop();
        const [step] = this.bs.readInt();
        if (!a || a === 0 || a === "0") {
          const from = this.bs.i;
          this.bs.move(step);
          console.log('When false, Step add: ' + step + ' : ' + from + ' -> ' + this.bs.i);
        } else {
          console.log('When false, Step add: ' + step + ' ,don\'t move, still: ' + this.bs.i);
        }

      },
      2: async () => {
        let val = this.stack.pop();
        val = math.stringify(_(val));
        console.log('makeBigNumber: ' + val);
        this.stack.push(val);
      },
      10: async () => {
        let [val] = this.bs.readInt();
        val = math.stringify(_(val));
        console.log('readInt to BigNumber: ' + val);
        this.stack.push(val);
      },
      0: async () => {
        const [val] = this.bs.readStr();
        console.log('readEnv: [' + val + '] Env: ' + this.env[val]);
        this.stack.push(this.env[val])
      },
      13: async () => {
        const [val] = this.bs.readStr();
        console.log('readStr: ' + val);
        this.stack.push(val);
      },
      1: async () => {
        const [val] = this.bs.readStr();
        const env = this.stack.pop();
        console.log('setEnv: [' + val + '] Env: ' + env);
        this.env[val] = env;
      },
      6: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('add: ' + b + ' + ' + a);
        const val = math.stringify(math.add(_(b), _(a)));
        this.stack.push(val);
      },
      15: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('sub: ' + b + ' - ' + a);
        const val = math.stringify(math.sub(_(b), _(a)));
        this.stack.push(val);
      },
      8: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('mul: ' + b + ' * ' + a);
        const val = math.stringify(math.mul(_(b), _(a)));
        this.stack.push(val);
      },
      9: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('div: ' + b + ' / ' + a);
        const val = math.stringify(math.div(_(b), _(a)));
        this.stack.push(val);
      },
      7: async () => {
        // f03bb707[e17da653] =  be87fed3(bb719acbe17da653, "e17da653") // 重载一次
        // print(bb719acbe17da653(newn("17377"),newn("256")))
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('mod: ' + b + ' % ' + a);
        const val = math.stringify(math.mod(_(b), _(a)));
        this.stack.push(val);
      },
      4: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        const ret = math.compare(_(b), _(a));
        console.log('if: ' + b + ' === ' + a);
        this.stack.push(ret === 0);
      },
      11: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        const ret = math.compare(_(b), _(a));
        console.log('if: ' + b + ' !== ' + a);
        this.stack.push(ret !== 0);
      },
      14: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        const ret = math.compare(_(b), _(a));
        console.log('if: ' + b + ' <= ' + a);
        this.stack.push(ret === -1 || ret === 0);
      },
      12: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        const ret = math.compare(_(b), _(a));
        console.log('if: ' + b + ' >= ' + a);
        this.stack.push(ret === 1 || ret === 0);
      },
      16: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        const ret = math.compare(_(b), _(a));
        console.log('if: ' + b + ' < ' + a);
        this.stack.push(ret === -1);
      },
      5: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        const ret = math.compare(_(b), _(a));
        console.log('if: ' + b + ' > ' + a);
        this.stack.push(ret === 1);
      }
    };
  }

  async exec () {
    let i = 0;
    while (1) {
      i++;
      let [code, is_success] = this.bs.readByte();
      if (is_success) {
        const func = this.funcTable[code];
        console.log('[' + (i + ']').padEnd(4, ' ') + '   OpCode: ' + code);
        await func.call(this);
        console.log(this.stack.stack.map(e => e === null ? 'null' : e).join(','));
        console.log();
        if (i > 20000) {
          console.log("Max calls");
          break;
        }
      } else {

        break;
      }
    }
    console.log('encryptBs: ' + encryptBs.data.join(''));
  }
}
console.log(math.stringify(math.div(_("16972776960966"),_(1))));

function sssss (shift) {
  let m = 1;
  return math.stringify(math.div(_("16972776960966"), _(m)));
}


const encryptBs = new Bs();
const plainBs = new Bs("123456abcdefgh".split(''));
const vm = new Lvm(vm_codes);

async function work () {
  await vm.exec();
  logArr.forEach(e => console.error(...e));
}

work();
// oia98xGfVZW1QJa+L6gF
