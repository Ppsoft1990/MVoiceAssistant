.class public Lcom/migu/voiceads/MIGUAdError;
.super Ljava/lang/Exception;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput v0, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/migu/voiceads/MIGUAdError;->b:Ljava/lang/String;

    iput p1, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    iget v1, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    const v2, 0x11170

    add-int/2addr v1, v2

    iput v1, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    :cond_0
    iget v1, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x7

    :goto_0
    :sswitch_0
    invoke-static {v0}, Lcom/migu/voiceads/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/MIGUAdError;->b:Ljava/lang/String;

    return-void

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xc

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11238 -> :sswitch_0
        0x1123c -> :sswitch_3
        0x11300 -> :sswitch_1
        0x11303 -> :sswitch_5
        0x11364 -> :sswitch_6
        0x1155a -> :sswitch_4
        0x1155b -> :sswitch_7
        0x1155c -> :sswitch_8
        0x1155d -> :sswitch_2
        0x1155e -> :sswitch_2
        0x1155f -> :sswitch_1
        0x11560 -> :sswitch_9
        0x11561 -> :sswitch_a
        0x11562 -> :sswitch_b
    .end sparse-switch
.end method

.method public static convertErrorCode(I)I
    .locals 1

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    const v0, 0x11170

    add-int/2addr p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/MIGUAdError;->a:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUAdError;->b:Ljava/lang/String;

    return-object v0
.end method
