.class LSevenZip/Compression/LZMA/Encoder$LenEncoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/Compression/LZMA/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LenEncoder"
.end annotation


# instance fields
.field _choice:[S

.field _highCoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

.field _lowCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

.field _midCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

.field final synthetic this$0:LSevenZip/Compression/LZMA/Encoder;


# direct methods
.method public constructor <init>(LSevenZip/Compression/LZMA/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x10

    .line 176
    iput-object p1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->this$0:LSevenZip/Compression/LZMA/Encoder;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    .line 170
    new-array v1, v3, [LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_lowCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    .line 171
    new-array v1, v3, [LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_midCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    .line 172
    new-instance v1, LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;-><init>(I)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_highCoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    .line 177
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 182
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_lowCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    new-instance v2, LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    invoke-direct {v2, v4}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 180
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_midCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    new-instance v2, LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    invoke-direct {v2, v4}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Encode(LSevenZip/Compression/RangeCoder/Encoder;II)V
    .locals 4
    .param p1, "rangeEncoder"    # LSevenZip/Compression/RangeCoder/Encoder;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    if-ge p2, v3, :cond_0

    .line 200
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v1, v1}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 201
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_lowCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_0
    add-int/lit8 p2, p2, -0x8

    .line 206
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v1, v2}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 207
    if-ge p2, v3, :cond_1

    .line 209
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v2, v1}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 210
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_midCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v2, v2}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 215
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_highCoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    add-int/lit8 v1, p2, -0x8

    invoke-virtual {v0, p1, v1}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    goto :goto_0
.end method

.method public Init(I)V
    .locals 2
    .param p1, "numPosStates"    # I

    .prologue
    .line 186
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 188
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 193
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_highCoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Init()V

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_lowCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Init()V

    .line 191
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_midCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Init()V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public SetPrices(II[II)V
    .locals 8
    .param p1, "posState"    # I
    .param p2, "numSymbols"    # I
    .param p3, "prices"    # [I
    .param p4, "st"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    aget-short v5, v5, v6

    invoke-static {v5}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v0

    .line 223
    .local v0, "a0":I
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    aget-short v5, v5, v6

    invoke-static {v5}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v1

    .line 224
    .local v1, "a1":I
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    aget-short v5, v5, v7

    invoke-static {v5}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v5

    add-int v2, v1, v5

    .line 225
    .local v2, "b0":I
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_choice:[S

    aget-short v5, v5, v7

    invoke-static {v5}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v5

    add-int v3, v1, v5

    .line 226
    .local v3, "b1":I
    const/4 v4, 0x0

    .line 227
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    .line 233
    :goto_1
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 239
    :goto_2
    if-lt v4, p2, :cond_3

    .line 241
    :cond_0
    return-void

    .line 229
    :cond_1
    if-ge v4, p2, :cond_0

    .line 231
    add-int v5, p4, v4

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_lowCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v6, v6, p1

    invoke-virtual {v6, v4}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->GetPrice(I)I

    move-result v6

    add-int/2addr v6, v0

    aput v6, p3, v5

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_2
    if-ge v4, p2, :cond_0

    .line 237
    add-int v5, p4, v4

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_midCoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v6, v6, p1

    add-int/lit8 v7, v4, -0x8

    invoke-virtual {v6, v7}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->GetPrice(I)I

    move-result v6

    add-int/2addr v6, v2

    aput v6, p3, v5

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    :cond_3
    add-int v5, p4, v4

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->_highCoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    add-int/lit8 v7, v4, -0x8

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v6, v7}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->GetPrice(I)I

    move-result v6

    add-int/2addr v6, v3

    aput v6, p3, v5

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
