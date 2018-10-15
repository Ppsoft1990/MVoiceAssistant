.class public final Lcom/iflytek/framework/business/speech/ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# instance fields
.field private code:I

.field private errDetailId:I

.field private errResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSpeechError(I)Lcom/iflytek/framework/business/speech/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    const/16 v4, 0x2ee0

    .line 28
    const v1, 0x7f0c02e7

    .line 29
    .local v1, "errResId":I
    const v0, 0x7f0c02ff

    .line 30
    .local v0, "errDetailId":I
    sparse-switch p0, :sswitch_data_0

    .line 70
    const/16 v3, 0x2774

    if-lt p0, v3, :cond_1

    if-ge p0, v4, :cond_1

    .line 72
    const v1, 0x7f0c02e7

    .line 73
    const v0, 0x7f0c02fa

    .line 84
    :cond_0
    :goto_0
    new-instance v2, Lcom/iflytek/framework/business/speech/ErrorCode;

    invoke-direct {v2}, Lcom/iflytek/framework/business/speech/ErrorCode;-><init>()V

    .line 85
    .local v2, "errorCode":Lcom/iflytek/framework/business/speech/ErrorCode;
    iput v1, v2, Lcom/iflytek/framework/business/speech/ErrorCode;->errResId:I

    .line 86
    iput v0, v2, Lcom/iflytek/framework/business/speech/ErrorCode;->errDetailId:I

    .line 87
    iput p0, v2, Lcom/iflytek/framework/business/speech/ErrorCode;->code:I

    .line 89
    return-object v2

    .line 32
    .end local v2    # "errorCode":Lcom/iflytek/framework/business/speech/ErrorCode;
    :sswitch_0
    const v1, 0x7f0c0088

    .line 33
    const v0, 0x7f0c030b

    .line 34
    goto :goto_0

    .line 37
    :sswitch_1
    const v1, 0x7f0c02e7

    .line 38
    const v0, 0x7f0c030a

    .line 39
    goto :goto_0

    .line 41
    :sswitch_2
    const v1, 0x7f0c0087

    .line 42
    const v0, 0x7f0c02fb

    .line 43
    goto :goto_0

    .line 45
    :sswitch_3
    const v1, 0x7f0c0083

    .line 46
    const v0, 0x7f0c02fd

    .line 47
    goto :goto_0

    .line 49
    :sswitch_4
    const v1, 0x7f0c02e7

    .line 50
    const v0, 0x7f0c030a

    .line 51
    goto :goto_0

    .line 53
    :sswitch_5
    const v1, 0x7f0c0082

    .line 54
    const v0, 0x7f0c02f9

    .line 55
    goto :goto_0

    .line 58
    :sswitch_6
    const v1, 0x7f0c0089

    .line 59
    const v0, 0x7f0c0301

    .line 60
    goto :goto_0

    .line 65
    :sswitch_7
    const v1, 0x7f0c0086

    .line 66
    const v0, 0x7f0c02ff

    .line 67
    goto :goto_0

    .line 76
    :cond_1
    if-lt p0, v4, :cond_0

    const v3, 0xc3500

    if-ge p0, v3, :cond_0

    .line 78
    const v1, 0x7f0c02e7

    .line 79
    const v0, 0x7f0c02f6

    goto :goto_0

    .line 30
    nop

    :sswitch_data_0
    .sparse-switch
        0x2786 -> :sswitch_6
        0xc3501 -> :sswitch_2
        0xc3504 -> :sswitch_5
        0xc3505 -> :sswitch_0
        0xc3506 -> :sswitch_1
        0xc3507 -> :sswitch_1
        0xc3508 -> :sswitch_3
        0xc3509 -> :sswitch_4
        0xc350a -> :sswitch_6
        0xc350b -> :sswitch_7
        0xc350c -> :sswitch_7
        0xc350d -> :sswitch_7
        0xc3516 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/iflytek/framework/business/speech/ErrorCode;->code:I

    return v0
.end method

.method public getDetailId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/iflytek/framework/business/speech/ErrorCode;->errDetailId:I

    return v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/iflytek/framework/business/speech/ErrorCode;->errResId:I

    return v0
.end method
