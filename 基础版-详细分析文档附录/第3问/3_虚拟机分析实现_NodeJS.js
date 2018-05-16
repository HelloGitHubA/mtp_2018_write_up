const vm_codes = [0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 3, 0, 0, 0, 99, 117, 114, 17, 64, 0, 0, 0, 108, 100, 52, 76, 105, 79, 122, 51, 70, 48, 98, 112, 121, 67, 78, 103, 87, 81, 66, 107, 114, 54, 72, 97, 104, 71, 77, 49, 102, 56, 53, 111, 99, 74, 57, 47, 86, 85, 101, 84, 69, 109, 119, 113, 68, 80, 73, 115, 117, 118, 110, 90, 89, 82, 75, 106, 88, 55, 43, 65, 83, 116, 50, 120, 2, 3, 0, 0, 0, 98, 54, 52, 1, 3, 0, 0, 0, 99, 117, 114, 0, 0, 0, 0, 0, 14, 9, 59, 6, 0, 0, 1, 3, 0, 0, 0, 99, 117, 114, 2, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 14, 0, 0, 0, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 5, 0, 5, 0, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 15, 0, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 125, 0, 0, 0, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 0, 6, 0, 0, 0, 0, 4, 0, 0, 0, 5, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 0, 0, 1, 0, 0, 7, 2, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 49, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 50, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 51, 1, 2, 0, 0, 0, 120, 49, 1, 2, 0, 0, 0, 120, 50, 0, 0, 1, 0, 0, 5, 3, 1, 2, 0, 0, 0, 120, 51, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 1, 0, 0, 0, 120, 1, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 149, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 213, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 1, 1, 0, 0, 0, 120, 0, 142, 0, 0, 0, 7, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 66, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 121, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 1, 1, 0, 0, 0, 120, 0, 143, 0, 0, 0, 7, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 78, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 242, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 3, 0, 0, 0, 99, 117, 114, 0, 0, 0, 0, 0, 9, 178, 249, 255, 255];

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
    if(a === null) return;
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

function rshift (val, shift) {
  return val >> shift
}

function lshift (val, shift) {
  return val >> shift
}

function stringsub (str, i, j) {
  return str.substr(i - 1, j - i + 1)
}

function band (a, b) {
  return a & b
}

function bor (a, b) {
  return a | b
}

function putByte (val) {
  encryptBs.data[encryptBs.length + 1] = val;
  encryptBs.length++;
  return null
}

function putWord (val) {
  const arr = [0, 0, 0, 0];
  for (let i = 0; i < arr.length; i++) {
    let byte = val & 0xff;
    arr [i] = byte;
    val = (val - byte) / 256;
  }
  for (let i = 0; i < 4; i++) {
    putByte(arr[i]);
  }
}


class Lvm {
  constructor (codes) {
    this.bs = new Bs(codes);
    this.stack = new Stack();
    this.env = [];
    this.funcTable = {
      16: async () => {
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
      9: async () => {
        const a = this.stack.pop();
        const [step] = this.bs.readInt();
        if (!a || a === 0) {
          const from = this.bs.i;
          this.bs.move(step);
          console.log('When false, Step add: ' + step + ' : ' + from + ' -> ' + this.bs.i);
        } else {
          console.log('When false, Step add: ' + step + ' ,don\'t move, still: ' + this.bs.i);
        }

      },
      0: async () => {
        const [val] = this.bs.readInt();
        console.log('readInt: ' + val);
        this.stack.push(val);
      },
      1: async () => {
        const [val] = this.bs.readStr();
        console.log('readEnv: [' + val + '] Env: ' + this.env[val]);
        this.stack.push(this.env[val])
      },
      17: async () => {
        const [val] = this.bs.readStr();
        console.log('readStr: ' + val);
        this.stack.push(val);
      },
      2: async () => {
        const [val] = this.bs.readStr();
        const env = this.stack.pop();
        console.log('setEnv: [' + val + '] Env: ' + env);
        this.env[val] = env;
      },
      3: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('add: ' + b + ' + ' + a);
        this.stack.push(b + a);
      },
      4: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('sub: ' + b + ' - ' + a);
        this.stack.push(b - a);
      },
      5: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('mul: ' + b + ' * ' + a);
        this.stack.push(b * a);
      },
      6: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('div: ' + b + ' / ' + a);
        this.stack.push(b / a);
      },
      8: async () => {
        const a = this.stack.pop();
        console.log('neg: ' + ' - ' + a);
        this.stack.push(-a);
      },
      7: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('mod: ' + b + ' % ' + a);
        this.stack.push(b % a);
      },
      15: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('if: ' + b + ' === ' + a);
        this.stack.push(b === a);
      },
      14: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('if: ' + b + ' !== ' + a);
        this.stack.push(b !== a);
      },
      13: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('if: ' + b + ' <= ' + a);
        this.stack.push(b <= a);
      },
      12: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('if: ' + b + ' >= ' + a);
        this.stack.push(b >= a);
      },
      11: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('if: ' + b + ' < ' + a);
        this.stack.push(b < a);
      },
      10: async () => {
        const a = this.stack.pop();
        const b = this.stack.pop();
        console.log('if: ' + b + ' > ' + a);
        this.stack.push(b > a);
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
        console.log('[' + (i + ']').padEnd(4, ' ') +'   OpCode: ' + code);
        await func.call(this);
        console.log(this.stack.stack.map(e=>e===null?'null':e).join(','));
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

const encryptBs = new Bs();
const plainBs = new Bs("$llo punk hash....0F8F3FD185E10B4BAC8F4A8221E135B2".split(''));
const vm = new Lvm(vm_codes);
vm.exec();
