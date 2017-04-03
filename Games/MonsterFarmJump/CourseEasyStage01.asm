// Direction Pad Changes BG Mode7 X/Z Position
// X/B Buttons Changes BG Mode7 FOV (Mode7 Distance)
// Y/A Buttons Changes BG Mode7 Perspective Center Position

LoadPAL(CourseEasyStage01Pal, $00, CourseEasyStage01Pal.size, 0) // Load Background Palette (BG Palette Uses 256 Colors)
LoadM7VRAM(CourseEasyStage01Map, CourseEasyStage01Tiles, $0000, CourseEasyStage01Map.size, CourseEasyStage01Tiles.size, 0) // Load Background Map & Tiles To VRAM

LoadPAL(HiScoreLifeHeartPal, $80, HiScoreLifeHeartPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
LoadVRAM(HiScoreTiles, $8000, HiScoreTiles.size, 0) // Load Sprite Tiles To VRAM

LoadPAL(DistanceGoalLifeScoreTimePal, $90, DistanceGoalLifeScoreTimePal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
LoadVRAM(DistanceGoalLifeScoreTimeTiles, $8200, DistanceGoalLifeScoreTimeTiles.size, 0) // Load Sprite Tiles To VRAM

LoadPAL(ScoreNumberPal, $A0, ScoreNumberPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
LoadPAL(TimeNumberPal, $B0, TimeNumberPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
LoadVRAM(ScoreTimeNumberTiles, $8A00, ScoreTimeNumberTiles.size, 0) // Load Sprite Tiles To VRAM

LoadVRAM(LifeHeartTiles, $8B40, 64, 0) // Load Sprite Tiles To VRAM
LoadVRAM(LifeHeartTiles + 64, $8D40, 64, 0) // Load Sprite Tiles To VRAM

LoadPAL(ShadowPal, $E0, ShadowPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
LoadVRAM(ShadowTiles, $BD00, 128, 0) // Load Sprite Tiles To VRAM
LoadVRAM(ShadowTiles + 128, $BF00, 128, 0) // Load Sprite Tiles To VRAM
LoadVRAM(ShadowTiles + 256, $BD80, 128, 0) // Load Sprite Tiles To VRAM
LoadVRAM(ShadowTiles + 384, $BF80, 128, 0) // Load Sprite Tiles To VRAM

LoadPAL(CloudDayPal, $F0, CloudDayPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
LoadVRAM(CloudDayTiles, $9400, CloudDayTiles.size, 0) // Load Sprite Tiles To VRAM

// Set Character Selection Sprite
CharacterSelectionRoochoSprite:
  lda.b CourseCharacterSelect
  bit.b #%00010000 // Test Roocho Bit
  bne CharacterSelectionRoochooSpriteCopy
  jmp CharacterSelectionBeochiSprite
  CharacterSelectionRoochooSpriteCopy:
    LoadPAL(DistanceMarkerRoochoPal, $C0, DistanceMarkerRoochoPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(DistanceMarkerRoochoTiles, $8B80, 128, 0) // Load Sprite Tiles To VRAM
    LoadVRAM(DistanceMarkerRoochoTiles + 128, $8D80, 128, 0) // Load Sprite Tiles To VRAM
    LoadPAL(RoochoJumpUpPal, $D0, RoochoJumpUpPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(RoochoJumpUpTiles, $AC00, RoochoJumpUpTiles.size, 0) // Load Sprite Tiles To VRAM
    jmp CharacterSelectionSpriteEnd
CharacterSelectionBeochiSprite:
  bit.b #%00100000 // Test Beochi Bit
  bne CharacterSelectionBeochiSpriteCopy
  jmp CharacterSelectionChitoSprite
  CharacterSelectionBeochiSpriteCopy:
    LoadPAL(DistanceMarkerBeochiPal, $C0, DistanceMarkerBeochiPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(DistanceMarkerBeochiTiles, $8B80, 128, 0) // Load Sprite Tiles To VRAM
    LoadVRAM(DistanceMarkerBeochiTiles + 128, $8D80, 128, 0) // Load Sprite Tiles To VRAM
    LoadPAL(BeochiJumpUpPal, $D0, BeochiJumpUpPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(BeochiJumpUpTiles, $AC00, BeochiJumpUpTiles.size, 0) // Load Sprite Tiles To VRAM
    jmp CharacterSelectionSpriteEnd
CharacterSelectionChitoSprite:
  bit.b #%01000000 // Test Chito Bit
  bne CharacterSelectionChitoSpriteCopy
  jmp CharacterSelectionGolemSprite
  CharacterSelectionChitoSpriteCopy:
    LoadPAL(DistanceMarkerChitoPal, $C0, DistanceMarkerChitoPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(DistanceMarkerChitoTiles, $8B80, 128, 0) // Load Sprite Tiles To VRAM
    LoadVRAM(DistanceMarkerChitoTiles + 128, $8D80, 128, 0) // Load Sprite Tiles To VRAM
    LoadPAL(ChitoJumpUpPal, $D0, ChitoJumpUpPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(ChitoJumpUpTiles, $AC00, ChitoJumpUpTiles.size, 0) // Load Sprite Tiles To VRAM
    jmp CharacterSelectionSpriteEnd
CharacterSelectionGolemSprite:
  bit.b #%10000000 // Test Golem Bit
  bne CharacterSelectionGolemSpriteCopy
  jmp CharacterSelectionSpriteEnd
  CharacterSelectionGolemSpriteCopy:
    LoadPAL(DistanceMarkerGolemPal, $C0, DistanceMarkerGolemPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(DistanceMarkerGolemTiles, $8B80, 128, 0) // Load Sprite Tiles To VRAM
    LoadVRAM(DistanceMarkerGolemTiles + 128, $8D80, 128, 0) // Load Sprite Tiles To VRAM
    LoadPAL(RoochoJumpUpPal, $D0, RoochoJumpUpPal.size, 0) // Load Sprite Palette (Sprite Palette Uses 16 Colors)
    LoadVRAM(RoochoJumpUpTiles, $AC00, RoochoJumpUpTiles.size, 0) // Load Sprite Tiles To VRAM
CharacterSelectionSpriteEnd:

// Clear OAM
ldx.w #$0000 // X = $0000
stx.w REG_OAMADDL // $2102: OAM Address & Priority Rotation
ldx.w #$0080
lda.b #$E0
-
  sta.w REG_OAMDATA // OAM Data Write 1st Write = $E0 (Lower 8-Bit) ($2104)
  sta.w REG_OAMDATA // OAM Data Write 2nd Write = $E0 (Upper 8-Bit) ($2104)
  stz.w REG_OAMDATA // OAM Data Write 1st Write = 0 (Lower 8-Bit) ($2104)
  stz.w REG_OAMDATA // OAM Data Write 2nd Write = 0 (Upper 8-Bit) ($2104)
  dex
  bne -

ldx.w #$0020
-
  stz.w REG_OAMDATA // OAM Data Write 1st/2nd Write = 0 (Lower/Upper 8-Bit) ($2104)
  dex
  bne -

// Setup Sprites
lda.b #%00000010 // Object Size = 8x8/16x16, Name = 0, Base = $8000
sta.w REG_OBSEL // $2101: Object Size & Object Base

// Course Stage OAM Info
ldx.w #$0000 // X = $0000
stx.w REG_OAMADDL // $2102: OAM Address & Priority Rotation
LoopCourseStageOAM:
  lda.w CourseStageOAM,x
  sta.w REG_OAMDATA // Store Byte Of Sprite Attribute
  inx // X++
  cpx.w #$0200
  bne LoopCourseStageOAM

// Course Stage OAM Extra Info
ldy.w #$0100 // Y = $0100
sty.w REG_OAMADDL // $2102: OAM Address & Priority Rotation
LoopCourseStageOAMSize:
  lda.w CourseStageOAM,x
  sta.w REG_OAMDATA // Store Byte Of Sprite Attribute
  inx // X++
  cpx.w #$0220
  bne LoopCourseStageOAMSize

// Setup Video
lda.b #%00000111 // DCBAPMMM: M = Mode, P = Priority, ABCD = BG1,2,3,4 Tile Size
sta.w REG_BGMODE // $2105: BG Mode 7, Priority 0, BG1 8x8 Tiles

lda.b #%00010001 // Enable BG1 & Sprites
sta.w REG_TM     // $212C: BG1 & Sprites To Main Screen Designation

lda.b #%00010000 // Enable Sprites
sta.w REG_TS     // $212D: Sprites To Sub Screen Designation

lda.b #$80 // No Repeat on Mode7 Screen
sta.w REG_M7SEL // $211A: Mode7 Settings

stz.w REG_M7B // $211C: MODE7 SINE A
stz.w REG_M7B // $211C: MODE7 SINE A
stz.w REG_M7C // $211D: MODE7 SINE B
stz.w REG_M7C // $211D: MODE7 SINE B

ldx.w #384 // BG1HOFS = 384
stx.b BG1ScrPosX

ldx.w #806 // BG1VOFS = 806
stx.b BG1ScrPosY

ldx.w #512 // M7X = 512
stx.b Mode7PosX

ldx.w #1070 // M7Y = 1070
stx.b Mode7PosY

lda.b BG1ScrPosX
sta.w REG_BG1HOFS // $210D: BG1 Position X Lo Byte
lda.b BG1ScrPosX + 1
sta.w REG_BG1HOFS // $210D: BG1 Position X Hi Byte

lda.b BG1ScrPosY
sta.w REG_BG1VOFS // $210E: BG1 Position Y Lo Byte
lda.b BG1ScrPosY + 1
sta.w REG_BG1VOFS // $210E: BG1 Position Y Hi Byte

lda.b Mode7PosX
sta.w REG_M7X // $211F: Mode7 Center Position X Lo Byte
lda.b Mode7PosX + 1
sta.w REG_M7X // $211F: Mode7 Center Position X Hi Byte

lda.b Mode7PosY
sta.w REG_M7Y // $2120: Mode7 Center Position Y Lo Byte
lda.b Mode7PosY + 1
sta.w REG_M7Y // $2120: Mode7 Center Position Y Hi Byte

// HDMA Mode7 +COS (A) Scanline     
lda.b #%00000010  // HMDA: Write 2 Bytes Each Scanline, Repeat A/B-bus Address Twice
sta.w REG_DMAP0   // $4300: DMA0 DMA/HDMA Parameters
lda.b #REG_M7A    // $1B: Start At MODE7 COSINE A ($211B)
sta.w REG_BBAD0   // $4301: DMA0 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)
ldx.w #M7COSHDMATable // HMDA Table Address
stx.w REG_A1T0L   // $4302: DMA0 DMA/HDMA Table Start Address
lda.b #M7COSHDMATable >> 16 // HDMA Table Bank
sta.w REG_A1B0    // $4304: DMA0 DMA/HDMA Table Start Address (Bank)

// HDMA Mode7 +COS (D) Scanline     
lda.b #%00000010  // HMDA: Write 2 Bytes Each Scanline, Repeat A/B-bus Address Twice
sta.w REG_DMAP1   // $4310: DMA1 DMA/HDMA Parameters
lda.b #REG_M7D    // $1E: Start At MODE7 COSINE B ($211E)
sta.w REG_BBAD1   // $4311: DMA1 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)
ldx.w #M7COSHDMATable // HMDA Table Address
stx.w REG_A1T1L   // $4312: DMA1 DMA/HDMA Table Start Address
lda.b #M7COSHDMATable >> 16 // HDMA Table Bank
sta.w REG_A1B1    // $4314: DMA1 DMA/HDMA Table Start Address (Bank)

// HDMA Mode7 Intensity
lda.b #%00000000 // HMDA: Write 1 Bytes Each Scanline
sta.w REG_DMAP2  // $4320: DMA2 DMA/HDMA Parameters
lda.b #REG_COLDATA // $32: Start At Color Math Sub Screen Backdrop Color ($2132)
sta.w REG_BBAD2  // $4321: DMA2 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)
ldx.w #M7IntensityHDMATable // HMDA Table Address
stx.w REG_A1T2L  // $4322: DMA2 DMA/HDMA Table Start Address
lda.b #M7IntensityHDMATable >> 16 // HDMA Table Bank
sta.w REG_A1B2   // $4324: DMA2 DMA/HDMA Table Start Address (Bank)

// HDMA Backdrop/Object Blend
lda.b #%00000000 // HMDA: Write 1 Bytes Each Scanline
sta.w REG_DMAP3  // $4330: DMA3 DMA/HDMA Parameters
lda.b #REG_CGWSEL // $32: Start At Color Math Control Register A ($2130)
sta.w REG_BBAD3  // $4331: DMA3 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)
ldx.w #BDOBJBlendHDMATable // HMDA Table Address
stx.w REG_A1T3L  // $4332: DMA3 DMA/HDMA Table Start Address
lda.b #BDOBJBlendHDMATable >> 16 // HDMA Table Bank
sta.w REG_A1B3   // $4334: DMA3 DMA/HDMA Table Start Address (Bank)

// HDMA Backdrop/Object Blend DIV
lda.b #%00000000 // HMDA: Write 1 Bytes Each Scanline
sta.w REG_DMAP4  // $4340: DMA4 DMA/HDMA Parameters
lda.b #REG_CGADSUB // $41: Start At Color Math Control Register B ($2131)
sta.w REG_BBAD4  // $4341: DMA4 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)
ldx.w #BDOBJBlendDIVHDMATable // HMDA Table Address
stx.w REG_A1T4L  // $4342: DMA4 DMA/HDMA Table Start Address
lda.b #BDOBJBlendDIVHDMATable >> 16 // HDMA Table Bank
sta.w REG_A1B4   // $4344: DMA4 DMA/HDMA Table Start Address (Bank)

lda.b #%00011111 // HDMA Channel Select (Channel 0..4)
sta.w REG_HDMAEN // $420C: Select H-Blank DMA (H-DMA) Channels

FadeIN() // Screen Fade In

InputLoop: 
  WaitNMI() // Wait For Vertical Blank

  lda.b BG1ScrPosX
  sta.w REG_BG1HOFS // $210D: BG1 Position X Lo Byte
  lda.b BG1ScrPosX + 1
  sta.w REG_BG1HOFS // $210D: BG1 Position X Hi Byte

  lda.b BG1ScrPosY
  sta.w REG_BG1VOFS // $210E: BG1 Position Y Lo Byte
  lda.b BG1ScrPosY + 1
  sta.w REG_BG1VOFS // $210E: BG1 Position Y Hi Byte

  lda.b Mode7PosX
  sta.w REG_M7X // $211F: Mode7 Center Position X Lo Byte
  lda.b Mode7PosX + 1
  sta.w REG_M7X // $211F: Mode7 Center Position X Hi Byte

  lda.b Mode7PosY
  sta.w REG_M7Y // $2120: Mode7 Center Position Y Lo Byte
  lda.b Mode7PosY + 1
  sta.w REG_M7Y // $2120: Mode7 Center Position Y Hi Byte

  JoyUp:
    ReadJOY({JOY_UP}) // Test Joypad UP Button
    beq JoyDown // IF (UP ! Pressed) Branch Down
    ldx.b BG1ScrPosY // Decrement BG1 Y Pos
    dex
    stx.b BG1ScrPosY

    ldx.b Mode7PosY // Decrement Mode7 Y Pos
    dex
    stx.b Mode7PosY

  JoyDown:
    ReadJOY({JOY_DOWN}) // Test DOWN Button
    beq JoyLeft // IF (DOWN ! Pressed) Branch Down
    ldx.b BG1ScrPosY // Increment BG1 Y Pos
    inx
    stx.b BG1ScrPosY

    ldx.b Mode7PosY // Increment Mode7 Y Pos
    inx
    stx.b Mode7PosY

  JoyLeft:
    ReadJOY({JOY_LEFT}) // Test LEFT Button
    beq JoyRight // IF (LEFT ! Pressed) Branch Down
    ldx.b BG1ScrPosX // Decrement BG1 X Pos
    dex
    stx.b BG1ScrPosX

    ldx.b Mode7PosX // Decrement Mode7 X Pos
    dex
    stx.b Mode7PosX

  JoyRight:
    ReadJOY({JOY_RIGHT}) // Test RIGHT Button
    beq JoyY // IF (RIGHT ! Pressed) Branch Down
    ldx.b BG1ScrPosX // Increment BG1 X Pos
    inx
    stx.b BG1ScrPosX

    ldx.b Mode7PosX // Increment Mode7 X Pos
    inx
    stx.b Mode7PosX

  JoyY:
    ReadJOY({JOY_Y}) // Test Y Button
    beq JoyA // IF (Y ! Pressed) Branch Down
    ldx.b Mode7PosX // Decrement Mode7 X Pos
    dex
    stx.b Mode7PosX

  JoyA:
    ReadJOY({JOY_A}) // Test A Button
    beq JoyX // IF (A ! Pressed) Branch Down
    ldx.b Mode7PosX // Increment Mode7 X Pos
    inx
    stx.b Mode7PosX

  JoyX:
    ReadJOY({JOY_X}) // Test X Button
    beq JoyB // IF (X ! Pressed) Branch Down
    ldx.b Mode7PosY // Decrement Mode7 Y Pos
    dex
    stx.b Mode7PosY

  JoyB:
    ReadJOY({JOY_B}) // Test B Button
    beq Finish // IF (B ! Pressed) Branch Down
    ldx.b Mode7PosY // Increment Mode7 Y Pos
    inx
    stx.b Mode7PosY

Finish:
  jmp InputLoop

CourseStageOAM:
  // 8x8 / 16x16 Sprites
  // OAM Info (Course Hi Score 32x8)
  db   8,   8,  10, %00110000
  db  16,   8,  11, %00110000
  db  24,   8,  12, %00110000
  db  32,   8,  13, %00110000

  // OAM Info (Course Hi Score Number 8x8)
  db  44,   8,   0, %00110000
  db  50,   8,   0, %00110000
  db  56,   8,   0, %00110000
  db  62,   8,   4, %00110000
  db  68,   8,   2, %00110000
  db  74,   8,   0, %00110000
  db  80,   8,   0, %00110000
  db  86,   8,   0, %00110000
  db  92,   8,   0, %00110000

  // OAM Info (Score 32x16)
  db  12,  16,  16, %00110010
  db  28,  16,  18, %00110010

  // OAM Info (Course Score Number 8x8)
  db  44,  16,  80, %00110100
  db  44,  24,  96, %00110100

  db  50,  16,  80, %00110100
  db  50,  24,  96, %00110100

  db  56,  16,  80, %00110100
  db  56,  24,  96, %00110100

  db  62,  16,  80, %00110100
  db  62,  24,  96, %00110100

  db  68,  16,  80, %00110100
  db  68,  24,  96, %00110100

  db  74,  16,  80, %00110100
  db  74,  24,  96, %00110100

  db  80,  16,  80, %00110100
  db  80,  24,  96, %00110100

  db  86,  16,  80, %00110100
  db  86,  24,  96, %00110100

  db  92,  16,  80, %00110100
  db  92,  24,  96, %00110100

  // OAM Info (Distance Marker 16x16)
  db   9, 161,  92, %00111000

  // OAM Info (Goal 32x16)
  db   6,  38,  24, %00110010
  db  22,  38,  26, %00110010

  // OAM Info (Distance Fill 16x112)
  db  15,  58,  94, %00111000
  db  15,  74,  94, %00111000
  db  15,  90,  94, %00111000
  db  15, 106,  94, %00111000
  db  15, 122,  94, %00111000
  db  15, 138,  94, %00111000
  db  15, 154,  94, %00111000

  // OAM Info (Distance Block 8x120)
  db  15,  51,  28, %00110010
  db  15,  59,  30, %00110010
  db  15,  75,  30, %00110010
  db  15,  91,  30, %00110010
  db  15, 107,  30, %00110010
  db  15, 123,  30, %00110010
  db  15, 139,  30, %00110010
  db  15, 155,  30, %00110010
  db  15, 163,  29, %00110010

  // OAM Info (Time Number Large 8x24)
  db  18, 189, 120, %00110110
  db  18, 197, 136, %00110110
  db  18, 205, 152, %00110110

  db  26, 189, 121, %00110110
  db  26, 197, 137, %00110110
  db  26, 205, 153, %00110110

  // OAM Info (Time Number Small 8x16)
  db  35, 202, 122, %00110110

  db  41, 193,  89, %00110110
  db  41, 201, 105, %00110110

  // OAM Info (Time 48x40)
  db  13, 174,  48, %00110010
  db  29, 174,  50, %00110010
  db  45, 174,  52, %00110010

  db  13, 190,  54, %00110010
  db  29, 190,  56, %00110010
  db  45, 190,  58, %00110010

  db  13, 206,  60, %00110010
  db  21, 206,  61, %00110010
  db  29, 206,  62, %00110010
  db  37, 206,  63, %00110010
  db  45, 206,  76, %00110010

  // OAM Info (Life 32x16)
  db 202, 174,  20, %00110010
  db 218, 174,  22, %00110010

  // OAM Info (Life Heart X5 16x16)
  db 171, 194,  90, %00110000
  db 186, 194,  90, %00110000
  db 201, 194,  90, %00110000
  db 216, 194,  90, %00110000
  db 231, 194,  90, %00110000

  // OAM Info (Character 48x80)
  db 104,  68,  96, %00111011
  db 120,  68,  98, %00111011
  db 136,  68, 100, %00111011

  db 104,  84, 102, %00111011
  db 120,  84, 104, %00111011
  db 136,  84, 106, %00111011

  db 104, 100, 108, %00111011
  db 120, 100, 110, %00111011
  db 136, 100, 128, %00111011

  db 104, 116, 130, %00111011
  db 120, 116, 132, %00111011
  db 136, 116, 134, %00111011

  db 104, 132, 136, %00111011
  db 120, 132, 138, %00111011
  db 136, 132, 140, %00111011

  // OAM Info (Shadow 32x32)
  db 112, 132, 232, %00001101
  db 128, 132, 234, %00001101

  db 112, 148, 236, %00001101
  db 128, 148, 238, %00001101

  // OAM Info (Cloud A 80x48)
  db  44,   2, 160, %00001110
  db  60,   2, 162, %00001110
  db  76,   2, 164, %00001110
  db  92,   2, 166, %00001110
  db 108,   2, 168, %00001110

  db  44,  18, 192, %00001110
  db  60,  18, 194, %00001110
  db  76,  18, 196, %00001110
  db  92,  18, 198, %00001110
  db 108,  18, 200, %00001110

  db  44,  34, 224, %00001110
  db  60,  34, 226, %00001110
  db  76,  34, 228, %00001110
  db  92,  34, 230, %00001110
  db 108,  34, 232, %00001110

  // OAM Info (Cloud B 96x48)

  // OAM Info (Cloud C 96x48)
  db  84, 174,   6, %00001111
  db 100, 174,   8, %00001111
  db 116, 174,  10, %00001111
  db 132, 174,  12, %00001111
  db 148, 174,  14, %00001111

  db  84, 190,  38, %00001111
  db 100, 190,  40, %00001111
  db 116, 190,  42, %00001111
  db 132, 190,  44, %00001111
  db 148, 190,  46, %00001111

  db  84, 206,  70, %00001111
  db 100, 206,  72, %00001111
  db 116, 206,  74, %00001111
  db 132, 206,  76, %00001111
  db 148, 206,  78, %00001111

  // OAM Extra Info
  db %00000000
  db %00000000
  db %00000000
  db %00101000
  db %00000000
  db %00000000
  db %00000000
  db %00000000
  db %10101000
  db %10101010
  db %00101010
  db %10101010
  db %00001010
  db %00000000
  db %00000000
  db %10101000
  db %00101010
  db %00000000
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010
  db %10101010

M7IntensityHDMATable:
  db 1, %11111111 // Repeat 1 Scanlines, RGB Intensity 31
  db 1, %11111110 // Repeat 1 Scanlines, RGB Intensity 30
  db 1, %11111101 // Repeat 1 Scanlines, RGB Intensity 29
  db 1, %11111100 // Repeat 1 Scanlines, RGB Intensity 28
  db 1, %11111011 // Repeat 1 Scanlines, RGB Intensity 27
  db 1, %11111010 // Repeat 1 Scanlines, RGB Intensity 26
  db 1, %11111001 // Repeat 1 Scanlines, RGB Intensity 25
  db 1, %11111000 // Repeat 1 Scanlines, RGB Intensity 24
  db 1, %11110111 // Repeat 1 Scanlines, RGB Intensity 23
  db 1, %11110110 // Repeat 1 Scanlines, RGB Intensity 22
  db 1, %11110101 // Repeat 1 Scanlines, RGB Intensity 21
  db 1, %11110100 // Repeat 1 Scanlines, RGB Intensity 20
  db 1, %11110011 // Repeat 1 Scanlines, RGB Intensity 19
  db 1, %11110010 // Repeat 1 Scanlines, RGB Intensity 18
  db 1, %11110001 // Repeat 1 Scanlines, RGB Intensity 17
  db 2, %11110000 // Repeat 2 Scanlines, RGB Intensity 16
  db 2, %11101111 // Repeat 2 Scanlines, RGB Intensity 15
  db 2, %11101110 // Repeat 2 Scanlines, RGB Intensity 14
  db 2, %11101101 // Repeat 2 Scanlines, RGB Intensity 13
  db 2, %11101100 // Repeat 2 Scanlines, RGB Intensity 12
  db 2, %11101011 // Repeat 2 Scanlines, RGB Intensity 11
  db 2, %11101010 // Repeat 2 Scanlines, RGB Intensity 10
  db 2, %11101001 // Repeat 2 Scanlines, RGB Intensity 9
  db 2, %11101000 // Repeat 2 Scanlines, RGB Intensity 8
  db 2, %11100111 // Repeat 2 Scanlines, RGB Intensity 7
  db 2, %11100110 // Repeat 2 Scanlines, RGB Intensity 6
  db 2, %11100101 // Repeat 2 Scanlines, RGB Intensity 5
  db 2, %11100100 // Repeat 2 Scanlines, RGB Intensity 4
  db 2, %11100011 // Repeat 2 Scanlines, RGB Intensity 3
  db 2, %11100010 // Repeat 2 Scanlines, RGB Intensity 2
  db 2, %11100001 // Repeat 2 Scanlines, RGB Intensity 1
  db 1, %00000000 // Repeat 1 Scanlines, RGB Intensity 0
  db 0 // End Of HDMA

BDOBJBlendHDMATable:
  db 128, %00000000 // Repeat 128 Scanlines, Enable Sub Screen Backdrop Color ADD/SUB
  db   4, %00000000 // Repeat   4 Scanlines, Enable Sub Screen Backdrop Color ADD/SUB
  db  32, %00000010 // Repeat  32 Scanlines, Enable Sub Screen BG/OBJ/Backdrop Color ADD/SUB
  db   1, %00000000 // Repeat   1 Scanlines, Enable Sub Screen Backdrop Color ADD/SUB
  db 0 // End Of HDMA

BDOBJBlendDIVHDMATable:
  db 128, %00000001 // Repeat 128 Scanlines, Enable Colour Addition On BG1
  db   4, %00000001 // Repeat   4 Scanlines, Enable Colour Addition On BG1
  db  32, %01000001 // Repeat  32 Scanlines, Enable Colour Addition On BG1, Half Result
  db   1, %00000000 // Repeat   1 Scanlines, Enable Colour Addition On BG1
  db 0 // End Of HDMA

M7COSHDMATable: // Mode7 +COS (A & D) Table 224 * Rotation / Scaling Ratios (Last 8-Bits Fractional)
db $01; dw 20480 // Repeat 1 Scanline, Mode7 +COS Scanline 1
db $01; dw 10240 // Repeat 1 Scanline, Mode7 +COS Scanline 2
db $01; dw 6827 // Repeat 1 Scanline, Mode7 +COS Scanline 3
db $01; dw 5120 // Repeat 1 Scanline, Mode7 +COS Scanline 4
db $01; dw 4096 // Repeat 1 Scanline, Mode7 +COS Scanline 5
db $01; dw 3413 // Repeat 1 Scanline, Mode7 +COS Scanline 6
db $01; dw 2926 // Repeat 1 Scanline, Mode7 +COS Scanline 7
db $01; dw 2560 // Repeat 1 Scanline, Mode7 +COS Scanline 8
db $01; dw 2276 // Repeat 1 Scanline, Mode7 +COS Scanline 9
db $01; dw 2048 // Repeat 1 Scanline, Mode7 +COS Scanline 10
db $01; dw 1862 // Repeat 1 Scanline, Mode7 +COS Scanline 11
db $01; dw 1707 // Repeat 1 Scanline, Mode7 +COS Scanline 12
db $01; dw 1575 // Repeat 1 Scanline, Mode7 +COS Scanline 13
db $01; dw 1463 // Repeat 1 Scanline, Mode7 +COS Scanline 14
db $01; dw 1365 // Repeat 1 Scanline, Mode7 +COS Scanline 15
db $01; dw 1280 // Repeat 1 Scanline, Mode7 +COS Scanline 16
db $01; dw 1205 // Repeat 1 Scanline, Mode7 +COS Scanline 17
db $01; dw 1138 // Repeat 1 Scanline, Mode7 +COS Scanline 18
db $01; dw 1078 // Repeat 1 Scanline, Mode7 +COS Scanline 19
db $01; dw 1024 // Repeat 1 Scanline, Mode7 +COS Scanline 20
db $01; dw 975 // Repeat 1 Scanline, Mode7 +COS Scanline 21
db $01; dw 931 // Repeat 1 Scanline, Mode7 +COS Scanline 22
db $01; dw 890 // Repeat 1 Scanline, Mode7 +COS Scanline 23
db $01; dw 853 // Repeat 1 Scanline, Mode7 +COS Scanline 24
db $01; dw 819 // Repeat 1 Scanline, Mode7 +COS Scanline 25
db $01; dw 788 // Repeat 1 Scanline, Mode7 +COS Scanline 26
db $01; dw 759 // Repeat 1 Scanline, Mode7 +COS Scanline 27
db $01; dw 731 // Repeat 1 Scanline, Mode7 +COS Scanline 28
db $01; dw 706 // Repeat 1 Scanline, Mode7 +COS Scanline 29
db $01; dw 683 // Repeat 1 Scanline, Mode7 +COS Scanline 30
db $01; dw 661 // Repeat 1 Scanline, Mode7 +COS Scanline 31
db $01; dw 640 // Repeat 1 Scanline, Mode7 +COS Scanline 32
db $01; dw 621 // Repeat 1 Scanline, Mode7 +COS Scanline 33
db $01; dw 602 // Repeat 1 Scanline, Mode7 +COS Scanline 34
db $01; dw 585 // Repeat 1 Scanline, Mode7 +COS Scanline 35
db $01; dw 569 // Repeat 1 Scanline, Mode7 +COS Scanline 36
db $01; dw 554 // Repeat 1 Scanline, Mode7 +COS Scanline 37
db $01; dw 539 // Repeat 1 Scanline, Mode7 +COS Scanline 38
db $01; dw 525 // Repeat 1 Scanline, Mode7 +COS Scanline 39
db $01; dw 512 // Repeat 1 Scanline, Mode7 +COS Scanline 40
db $01; dw 500 // Repeat 1 Scanline, Mode7 +COS Scanline 41
db $01; dw 488 // Repeat 1 Scanline, Mode7 +COS Scanline 42
db $01; dw 476 // Repeat 1 Scanline, Mode7 +COS Scanline 43
db $01; dw 465 // Repeat 1 Scanline, Mode7 +COS Scanline 44
db $01; dw 455 // Repeat 1 Scanline, Mode7 +COS Scanline 45
db $01; dw 445 // Repeat 1 Scanline, Mode7 +COS Scanline 46
db $01; dw 436 // Repeat 1 Scanline, Mode7 +COS Scanline 47
db $01; dw 427 // Repeat 1 Scanline, Mode7 +COS Scanline 48
db $01; dw 418 // Repeat 1 Scanline, Mode7 +COS Scanline 49
db $01; dw 410 // Repeat 1 Scanline, Mode7 +COS Scanline 50
db $01; dw 402 // Repeat 1 Scanline, Mode7 +COS Scanline 51
db $01; dw 394 // Repeat 1 Scanline, Mode7 +COS Scanline 52
db $01; dw 386 // Repeat 1 Scanline, Mode7 +COS Scanline 53
db $01; dw 379 // Repeat 1 Scanline, Mode7 +COS Scanline 54
db $01; dw 372 // Repeat 1 Scanline, Mode7 +COS Scanline 55
db $01; dw 366 // Repeat 1 Scanline, Mode7 +COS Scanline 56
db $01; dw 359 // Repeat 1 Scanline, Mode7 +COS Scanline 57
db $01; dw 353 // Repeat 1 Scanline, Mode7 +COS Scanline 58
db $01; dw 347 // Repeat 1 Scanline, Mode7 +COS Scanline 59
db $01; dw 341 // Repeat 1 Scanline, Mode7 +COS Scanline 60
db $01; dw 336 // Repeat 1 Scanline, Mode7 +COS Scanline 61
db $01; dw 330 // Repeat 1 Scanline, Mode7 +COS Scanline 62
db $01; dw 325 // Repeat 1 Scanline, Mode7 +COS Scanline 63
db $01; dw 320 // Repeat 1 Scanline, Mode7 +COS Scanline 64
db $01; dw 315 // Repeat 1 Scanline, Mode7 +COS Scanline 65
db $01; dw 310 // Repeat 1 Scanline, Mode7 +COS Scanline 66
db $01; dw 306 // Repeat 1 Scanline, Mode7 +COS Scanline 67
db $01; dw 301 // Repeat 1 Scanline, Mode7 +COS Scanline 68
db $01; dw 297 // Repeat 1 Scanline, Mode7 +COS Scanline 69
db $01; dw 293 // Repeat 1 Scanline, Mode7 +COS Scanline 70
db $01; dw 288 // Repeat 1 Scanline, Mode7 +COS Scanline 71
db $01; dw 284 // Repeat 1 Scanline, Mode7 +COS Scanline 72
db $01; dw 281 // Repeat 1 Scanline, Mode7 +COS Scanline 73
db $01; dw 277 // Repeat 1 Scanline, Mode7 +COS Scanline 74
db $01; dw 273 // Repeat 1 Scanline, Mode7 +COS Scanline 75
db $01; dw 269 // Repeat 1 Scanline, Mode7 +COS Scanline 76
db $01; dw 266 // Repeat 1 Scanline, Mode7 +COS Scanline 77
db $01; dw 263 // Repeat 1 Scanline, Mode7 +COS Scanline 78
db $01; dw 259 // Repeat 1 Scanline, Mode7 +COS Scanline 79
db $01; dw 256 // Repeat 1 Scanline, Mode7 +COS Scanline 80
db $01; dw 253 // Repeat 1 Scanline, Mode7 +COS Scanline 81
db $01; dw 250 // Repeat 1 Scanline, Mode7 +COS Scanline 82
db $01; dw 247 // Repeat 1 Scanline, Mode7 +COS Scanline 83
db $01; dw 244 // Repeat 1 Scanline, Mode7 +COS Scanline 84
db $01; dw 241 // Repeat 1 Scanline, Mode7 +COS Scanline 85
db $01; dw 238 // Repeat 1 Scanline, Mode7 +COS Scanline 86
db $01; dw 235 // Repeat 1 Scanline, Mode7 +COS Scanline 87
db $01; dw 233 // Repeat 1 Scanline, Mode7 +COS Scanline 88
db $01; dw 230 // Repeat 1 Scanline, Mode7 +COS Scanline 89
db $01; dw 228 // Repeat 1 Scanline, Mode7 +COS Scanline 90
db $01; dw 225 // Repeat 1 Scanline, Mode7 +COS Scanline 91
db $01; dw 223 // Repeat 1 Scanline, Mode7 +COS Scanline 92
db $01; dw 220 // Repeat 1 Scanline, Mode7 +COS Scanline 93
db $01; dw 218 // Repeat 1 Scanline, Mode7 +COS Scanline 94
db $01; dw 216 // Repeat 1 Scanline, Mode7 +COS Scanline 95
db $01; dw 213 // Repeat 1 Scanline, Mode7 +COS Scanline 96
db $01; dw 211 // Repeat 1 Scanline, Mode7 +COS Scanline 97
db $01; dw 209 // Repeat 1 Scanline, Mode7 +COS Scanline 98
db $01; dw 207 // Repeat 1 Scanline, Mode7 +COS Scanline 99
db $01; dw 205 // Repeat 1 Scanline, Mode7 +COS Scanline 100
db $01; dw 203 // Repeat 1 Scanline, Mode7 +COS Scanline 101
db $01; dw 201 // Repeat 1 Scanline, Mode7 +COS Scanline 102
db $01; dw 199 // Repeat 1 Scanline, Mode7 +COS Scanline 103
db $01; dw 197 // Repeat 1 Scanline, Mode7 +COS Scanline 104
db $01; dw 195 // Repeat 1 Scanline, Mode7 +COS Scanline 105
db $01; dw 193 // Repeat 1 Scanline, Mode7 +COS Scanline 106
db $01; dw 191 // Repeat 1 Scanline, Mode7 +COS Scanline 107
db $01; dw 190 // Repeat 1 Scanline, Mode7 +COS Scanline 108
db $01; dw 188 // Repeat 1 Scanline, Mode7 +COS Scanline 109
db $01; dw 186 // Repeat 1 Scanline, Mode7 +COS Scanline 110
db $01; dw 185 // Repeat 1 Scanline, Mode7 +COS Scanline 111
db $01; dw 183 // Repeat 1 Scanline, Mode7 +COS Scanline 112
db $01; dw 181 // Repeat 1 Scanline, Mode7 +COS Scanline 113
db $01; dw 180 // Repeat 1 Scanline, Mode7 +COS Scanline 114
db $01; dw 178 // Repeat 1 Scanline, Mode7 +COS Scanline 115
db $01; dw 177 // Repeat 1 Scanline, Mode7 +COS Scanline 116
db $01; dw 175 // Repeat 1 Scanline, Mode7 +COS Scanline 117
db $01; dw 174 // Repeat 1 Scanline, Mode7 +COS Scanline 118
db $01; dw 172 // Repeat 1 Scanline, Mode7 +COS Scanline 119
db $01; dw 171 // Repeat 1 Scanline, Mode7 +COS Scanline 120
db $01; dw 169 // Repeat 1 Scanline, Mode7 +COS Scanline 121
db $01; dw 168 // Repeat 1 Scanline, Mode7 +COS Scanline 122
db $01; dw 167 // Repeat 1 Scanline, Mode7 +COS Scanline 123
db $01; dw 165 // Repeat 1 Scanline, Mode7 +COS Scanline 124
db $01; dw 164 // Repeat 1 Scanline, Mode7 +COS Scanline 125
db $01; dw 163 // Repeat 1 Scanline, Mode7 +COS Scanline 126
db $01; dw 161 // Repeat 1 Scanline, Mode7 +COS Scanline 127
db $01; dw 160 // Repeat 1 Scanline, Mode7 +COS Scanline 128
db $01; dw 159 // Repeat 1 Scanline, Mode7 +COS Scanline 129
db $01; dw 158 // Repeat 1 Scanline, Mode7 +COS Scanline 130
db $01; dw 156 // Repeat 1 Scanline, Mode7 +COS Scanline 131
db $01; dw 155 // Repeat 1 Scanline, Mode7 +COS Scanline 132
db $01; dw 154 // Repeat 1 Scanline, Mode7 +COS Scanline 133
db $01; dw 153 // Repeat 1 Scanline, Mode7 +COS Scanline 134
db $01; dw 152 // Repeat 1 Scanline, Mode7 +COS Scanline 135
db $01; dw 151 // Repeat 1 Scanline, Mode7 +COS Scanline 136
db $01; dw 149 // Repeat 1 Scanline, Mode7 +COS Scanline 137
db $01; dw 148 // Repeat 1 Scanline, Mode7 +COS Scanline 138
db $01; dw 147 // Repeat 1 Scanline, Mode7 +COS Scanline 139
db $01; dw 146 // Repeat 1 Scanline, Mode7 +COS Scanline 140
db $01; dw 145 // Repeat 1 Scanline, Mode7 +COS Scanline 141
db $01; dw 144 // Repeat 1 Scanline, Mode7 +COS Scanline 142
db $01; dw 143 // Repeat 1 Scanline, Mode7 +COS Scanline 143
db $01; dw 142 // Repeat 1 Scanline, Mode7 +COS Scanline 144
db $01; dw 141 // Repeat 1 Scanline, Mode7 +COS Scanline 145
db $01; dw 140 // Repeat 1 Scanline, Mode7 +COS Scanline 146
db $01; dw 139 // Repeat 1 Scanline, Mode7 +COS Scanline 147
db $01; dw 138 // Repeat 1 Scanline, Mode7 +COS Scanline 148
db $01; dw 137 // Repeat 1 Scanline, Mode7 +COS Scanline 149
db $01; dw 137 // Repeat 1 Scanline, Mode7 +COS Scanline 150
db $01; dw 136 // Repeat 1 Scanline, Mode7 +COS Scanline 151
db $01; dw 135 // Repeat 1 Scanline, Mode7 +COS Scanline 152
db $01; dw 134 // Repeat 1 Scanline, Mode7 +COS Scanline 153
db $01; dw 133 // Repeat 1 Scanline, Mode7 +COS Scanline 154
db $01; dw 132 // Repeat 1 Scanline, Mode7 +COS Scanline 155
db $01; dw 131 // Repeat 1 Scanline, Mode7 +COS Scanline 156
db $01; dw 130 // Repeat 1 Scanline, Mode7 +COS Scanline 157
db $01; dw 130 // Repeat 1 Scanline, Mode7 +COS Scanline 158
db $01; dw 129 // Repeat 1 Scanline, Mode7 +COS Scanline 159
db $01; dw 128 // Repeat 1 Scanline, Mode7 +COS Scanline 160
db $01; dw 127 // Repeat 1 Scanline, Mode7 +COS Scanline 161
db $01; dw 126 // Repeat 1 Scanline, Mode7 +COS Scanline 162
db $01; dw 126 // Repeat 1 Scanline, Mode7 +COS Scanline 163
db $01; dw 125 // Repeat 1 Scanline, Mode7 +COS Scanline 164
db $01; dw 124 // Repeat 1 Scanline, Mode7 +COS Scanline 165
db $01; dw 123 // Repeat 1 Scanline, Mode7 +COS Scanline 166
db $01; dw 123 // Repeat 1 Scanline, Mode7 +COS Scanline 167
db $01; dw 122 // Repeat 1 Scanline, Mode7 +COS Scanline 168
db $01; dw 121 // Repeat 1 Scanline, Mode7 +COS Scanline 169
db $01; dw 120 // Repeat 1 Scanline, Mode7 +COS Scanline 170
db $01; dw 120 // Repeat 1 Scanline, Mode7 +COS Scanline 171
db $01; dw 119 // Repeat 1 Scanline, Mode7 +COS Scanline 172
db $01; dw 118 // Repeat 1 Scanline, Mode7 +COS Scanline 173
db $01; dw 118 // Repeat 1 Scanline, Mode7 +COS Scanline 174
db $01; dw 117 // Repeat 1 Scanline, Mode7 +COS Scanline 175
db $01; dw 116 // Repeat 1 Scanline, Mode7 +COS Scanline 176
db $01; dw 116 // Repeat 1 Scanline, Mode7 +COS Scanline 177
db $01; dw 115 // Repeat 1 Scanline, Mode7 +COS Scanline 178
db $01; dw 114 // Repeat 1 Scanline, Mode7 +COS Scanline 179
db $01; dw 114 // Repeat 1 Scanline, Mode7 +COS Scanline 180
db $01; dw 113 // Repeat 1 Scanline, Mode7 +COS Scanline 181
db $01; dw 113 // Repeat 1 Scanline, Mode7 +COS Scanline 182
db $01; dw 112 // Repeat 1 Scanline, Mode7 +COS Scanline 183
db $01; dw 111 // Repeat 1 Scanline, Mode7 +COS Scanline 184
db $01; dw 111 // Repeat 1 Scanline, Mode7 +COS Scanline 185
db $01; dw 110 // Repeat 1 Scanline, Mode7 +COS Scanline 186
db $01; dw 110 // Repeat 1 Scanline, Mode7 +COS Scanline 187
db $01; dw 109 // Repeat 1 Scanline, Mode7 +COS Scanline 188
db $01; dw 108 // Repeat 1 Scanline, Mode7 +COS Scanline 189
db $01; dw 108 // Repeat 1 Scanline, Mode7 +COS Scanline 190
db $01; dw 107 // Repeat 1 Scanline, Mode7 +COS Scanline 191
db $01; dw 107 // Repeat 1 Scanline, Mode7 +COS Scanline 192
db $01; dw 106 // Repeat 1 Scanline, Mode7 +COS Scanline 193
db $01; dw 106 // Repeat 1 Scanline, Mode7 +COS Scanline 194
db $01; dw 105 // Repeat 1 Scanline, Mode7 +COS Scanline 195
db $01; dw 104 // Repeat 1 Scanline, Mode7 +COS Scanline 196
db $01; dw 104 // Repeat 1 Scanline, Mode7 +COS Scanline 197
db $01; dw 103 // Repeat 1 Scanline, Mode7 +COS Scanline 198
db $01; dw 103 // Repeat 1 Scanline, Mode7 +COS Scanline 199
db $01; dw 102 // Repeat 1 Scanline, Mode7 +COS Scanline 200
db $01; dw 102 // Repeat 1 Scanline, Mode7 +COS Scanline 201
db $01; dw 101 // Repeat 1 Scanline, Mode7 +COS Scanline 202
db $01; dw 101 // Repeat 1 Scanline, Mode7 +COS Scanline 203
db $01; dw 100 // Repeat 1 Scanline, Mode7 +COS Scanline 204
db $01; dw 100 // Repeat 1 Scanline, Mode7 +COS Scanline 205
db $01; dw 99 // Repeat 1 Scanline, Mode7 +COS Scanline 206
db $01; dw 99 // Repeat 1 Scanline, Mode7 +COS Scanline 207
db $01; dw 98 // Repeat 1 Scanline, Mode7 +COS Scanline 208
db $01; dw 98 // Repeat 1 Scanline, Mode7 +COS Scanline 209
db $01; dw 98 // Repeat 1 Scanline, Mode7 +COS Scanline 210
db $01; dw 97 // Repeat 1 Scanline, Mode7 +COS Scanline 211
db $01; dw 97 // Repeat 1 Scanline, Mode7 +COS Scanline 212
db $01; dw 96 // Repeat 1 Scanline, Mode7 +COS Scanline 213
db $01; dw 96 // Repeat 1 Scanline, Mode7 +COS Scanline 214
db $01; dw 95 // Repeat 1 Scanline, Mode7 +COS Scanline 215
db $01; dw 95 // Repeat 1 Scanline, Mode7 +COS Scanline 216
db $01; dw 94 // Repeat 1 Scanline, Mode7 +COS Scanline 217
db $01; dw 94 // Repeat 1 Scanline, Mode7 +COS Scanline 218
db $01; dw 94 // Repeat 1 Scanline, Mode7 +COS Scanline 219
db $01; dw 93 // Repeat 1 Scanline, Mode7 +COS Scanline 220
db $01; dw 93 // Repeat 1 Scanline, Mode7 +COS Scanline 221
db $01; dw 92 // Repeat 1 Scanline, Mode7 +COS Scanline 222
db $01; dw 92 // Repeat 1 Scanline, Mode7 +COS Scanline 223
db $01; dw 91 // Repeat 1 Scanline, Mode7 +COS Scanline 224
db $00 // End Of HDMA