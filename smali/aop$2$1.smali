.class Laop$2$1;
.super Ljava/util/TimerTask;
.source "SmsBusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laop$2;->onPlayBeginCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laop$2;


# direct methods
.method constructor <init>(Laop$2;)V
    .locals 0
    .param p1, "this$1"    # Laop$2;

    .prologue
    .line 529
    iput-object p1, p0, Laop$2$1;->a:Laop$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 532
    const-string/jumbo v1, "SmsBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadCast| START_READ_RECEIVE_SMS | mItem.getMsgId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laop$2$1;->a:Laop$2;

    iget-object v3, v3, Laop$2;->a:Laop;

    .line 534
    invoke-static {v3}, Laop;->i(Laop;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string/jumbo v0, "com.iflytek.cmcc.START_READ_RECEIVE_SMS"

    .line 536
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Laop$2$1;->a:Laop$2;

    iget-object v1, v1, Laop$2;->a:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_MESSAGE_ITEM"

    iget-object v3, p0, Laop$2$1;->a:Laop$2;

    iget-object v3, v3, Laop$2;->a:Laop;

    .line 538
    invoke-static {v3}, Laop;->i(Laop;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v4

    .line 536
    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 539
    return-void
.end method
