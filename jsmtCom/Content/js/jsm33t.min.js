
class StringBuilder {
    constructor() {
        this.buffer = "";
    }

    append(string) {
        this.buffer += string;
    }

    toString() {
        return this.buffer;
    }
}
