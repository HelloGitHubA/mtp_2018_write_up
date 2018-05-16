
// ½ø½×°æ opcodes ½âÂë
int de_op_codes(int en) {
    int r = 0;
    switch (en)
    {
    case 0:
        return 0xfe;
    case 6u:
    case 7u:
    case 0x16u:
    case 0x1Bu:
        return 0;
    case 0x22u:
    case 0x28u:
    case 0x29u:
    case 0x3Cu:
        return 1;
    case 0x3Eu:
        return 2;
    case 0x3Bu:
        return 3;
    case 0x12u:
        return 4;
    case 8u:
    case 0x11u:
    case 0x17u:
    case 0x36u:
        return 5;
    case 2u:
        return 6;
    case 0xDu:
        return 7;
    case 0x1Au:
        return 8;
    case 1u:
        return 9;
    case 0x1Du:
        return 0xA;
    case 0x1Fu:
        return 0xB;
    case 0xEu:
        return 0xC;
    case 0x31u:
        return 0xD;
    case 0x2Fu:
        return 0xE;
    case 0x1Eu:
        return 0xF;
    case 0x15u:
        return 0x10;
    case 0x3Au:
        return 0x11;
    case 0x13u:
        return 0x12;
    case 0x24u:
        return 0x13;
    case 0x2Bu:
        return 0x14;
    case 0x1Cu:
        return 0x15;
    case 0x2Du:
        return 0x16;
    case 0x19u:
        return 0x17;
    case 0x3Fu:
        return 0x18;
    case 0x18u:
        return 0x19;
    case 0x33u:
        return 0x1A;
    case 0xFu:
        return  0x1B;
    case 0x34u:
        return 0x1C;
    case 0x20u:
        return 0x1D;
    case 5u:
    case 9u:
    case 0xAu:
    case 0x25u:
        return 0x1E;
    case 0x30u:
        return 0x1F;
    case 0x26u:
        return 0x20;
    case 0x35u:
        return 0x21;
    case 0x38:
        return 0x22;
    case 0x2Au:
        return 0x23;
    case 0x23u:
    case 0x37u:
    case 0x39u:
    case 0x3Du:
        return 0x24;
    case 0x27u:
        return 0x25;
    case 4u:
        return 0x26;
    case 0x2Cu:
        return 0x27;
    case 0x32u:
        return 0x28;
    case 0x21u:
        return 0x29;
    case 0x03:
        return 0x2A;
    case 0xCu:
        return 0x2B;
    case 0x2Eu:
        return 0x2C;
    case 0x14u:
        return 0x2D;
    case 0xB:
        return 0x2E;
    case 0x10:
        return 46;
    default:
        return 0;
    }
}
// ½ø½×°æ opmodes ½âÂë
int de_op_modes(int en) {
    int v10 = 0;
    switch (en)
    {
    case 1:
    case 4:
        v10 = 0x10;
        break;
    case 2:
        v10 = 0x5C;
        break;
    case 3:
    case 0x2C:
    case 0x32:
        v10 = 0x62;
        break;
    case 5:
    case 9:
    case 0xA:
    case 0x25:
        v10 = 0x22;
        break;
    case 6:
    case 7:
    case 0xF:
    case 0x10:
    case 0x16:
    case 0x18:
    case 0x1B:
    case 0x33:
    case 0x34:
        v10 = 0x60;
        break;
    case 8:
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x17:
    case 0x36:
        v10 = 0x50;
        break;
    case 0xB:
        v10 = 0x17;
        break;
    case 0xC:
        v10 = 0x14;
        break;
    case 0xD:
    case 0xE:
        v10 = 0x6C;
        break;
    case 0x13:
    case 0x15:
    case 0x19:
    case 0x1C:
    case 0x1E:
    case 0x24:
    case 0x2B:
    case 0x2D:
    case 0x2F:
    case 0x31:
    case 0x3A:
    case 0x3F:
        v10 = 0x7C;
        break;
    case 0x1A:
    case 0x1D:
        v10 = 0x3C;
        break;
    case 0x1F:
    case 0x23:
    case 0x27:
    case 0x37:
    case 0x39:
    case 0x3B:
    case 0x3D:
        v10 = 0x54;
        break;
    case 0x20:
        v10 = 0x68;
        break;
    case 0x21:
        v10 = 4;
        break;
    case 0x22:
    case 0x28:
    case 0x29:
    case 0x3C:
        v10 = 0x71;
        break;
    case 0x26:
    case 0x30:
    case 0x35:
        v10 = 0xBCu;
        break;
    case 0x2A:
        v10 = 0xE4u;
        break;
    case 0x2E:
        v10 = 0x51;
        break;
    case 0x38:
        v10 = 0x84u;
        break;
    case 0x3E:
        v10 = 0x41;
        break;
    default:
        v10 = 0;
        break;
    }
    return v10;
}

// ½ø½×°æ opcodes ±àÂë
int en_op_codes(int en) {
    switch (en)
    {
    case 0x0: return 0x34;
    case 0x1: return 0x3C;
    case 0x2:  return 0x3E;
    case 0x3: return 0x3D;
    case 0x4:  return 0x17;
    case 0x5: return 0x36;
    case 0x6:  return 0x2;
    case 0x7: return 0xE;
    case 0x8:  return 0x1D;
    case 0x9:  return 0x04;
    case 0xA:  return 0x1D;
    case 0xB: return 0x3D;
    case 0xC: return 0xe;
    case 0xD: return 0x3F;
    case 0x0E: return 0x3F;
    case 0x0F: return 0x3F;
    case 0x10: return 0x3F;
    case 0x11: return 0x3F;
    case 0x12: return 0x3F;
    case 0x13: return 0x3F;
    case 0x14: return 0x3F;
    case 0x15: return 0x3F;
    case 0x16: return 0x3F;
    case 0x17: return 0x3F;
    case 0x18: return 0x3F;
    case 0x19: return 0x34;
    case 0x1A: return 0x34;
    case 0x1B: return 0x34;
    case 0x1C: return 0x34;
    case 0x1D: return 0x20;
    case 0x1E: return 0x25;
    case 0x1F: return 0x35;
    case 0x20: return 0x35;
    case 0x21: return 0x35;
    case 0x22: return 0x38;
    case 0x23: return 0x2A;
    case 0x24: return 0x3D;
    case 0x25: return 0x3D;
    case 0x26: return 0x04;
    case 0x27: return 0x32;
    case 0x28: return 0x32;
    case 0x29: return 0x21;
    case 0x2A: return 0x32;
    case 0x2B: return 0x0C;
    case 0x2C: return 0x2E;
    case 0x2D: return 0x36;
    case 0x2E: return 0x0B;
    default:
        return 0;
    }
}