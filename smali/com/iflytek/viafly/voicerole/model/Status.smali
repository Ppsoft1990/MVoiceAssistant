.class public final enum Lcom/iflytek/viafly/voicerole/model/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/voicerole/model/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/voicerole/model/Status;

.field public static final enum STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

.field public static final enum STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

.field public static final enum STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

.field public static final enum STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

.field public static final enum STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/Status;

    const-string/jumbo v1, "STATUS_INIT"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/voicerole/model/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/Status;

    const-string/jumbo v1, "STATUS_DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/voicerole/model/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/Status;

    const-string/jumbo v1, "STATUS_PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/voicerole/model/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 24
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/Status;

    const-string/jumbo v1, "STATUS_DOWNLOADED"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/voicerole/model/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/Status;

    const-string/jumbo v1, "STATUS_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/voicerole/model/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/voicerole/model/Status;

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->$VALUES:[Lcom/iflytek/viafly/voicerole/model/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/iflytek/viafly/voicerole/model/Status;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 60
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    goto :goto_0

    .line 58
    :pswitch_4
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static toInt(Lcom/iflytek/viafly/voicerole/model/Status;)I
    .locals 3
    .param p0, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    const/4 v0, 0x1

    .line 31
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status$1;->a:[I

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/model/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 43
    :goto_0
    :pswitch_0
    return v0

    .line 33
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 41
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/Status;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/voicerole/model/Status;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->$VALUES:[Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/voicerole/model/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/voicerole/model/Status;

    return-object v0
.end method
