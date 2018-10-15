.class Lgz;
.super Ljava/lang/Object;
.source "CallReceiveParser.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lgz;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "phoneState":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 76
    const-string/jumbo v0, "IDLE"

    .line 79
    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    const-string/jumbo v0, "IDLE"

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1
    const-string/jumbo v0, "OFFHOOK"

    .line 71
    goto :goto_0

    .line 73
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    .line 74
    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lgy;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    const-string/jumbo v0, "CallReceiveParser"

    const-string/jumbo v1, "parseCallReceive intent or action is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->filterPhoneStateChangeReceiver(Landroid/content/Intent;)Lgy;

    move-result-object v0

    goto :goto_0
.end method
