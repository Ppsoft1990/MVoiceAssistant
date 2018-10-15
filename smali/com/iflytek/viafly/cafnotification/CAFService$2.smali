.class Lcom/iflytek/viafly/cafnotification/CAFService$2;
.super Ljava/util/TimerTask;
.source "CAFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/cafnotification/CAFService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzm;

.field final synthetic b:I

.field final synthetic c:Lzn;

.field final synthetic d:Lcom/iflytek/viafly/cafnotification/CAFService;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/cafnotification/CAFService;Lzm;ILzn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/cafnotification/CAFService;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    iput-object p2, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->a:Lzm;

    iput p3, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->b:I

    iput-object p4, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->c:Lzn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->a:Lzm;

    invoke-virtual {v0}, Lzm;->cancelRequest()V

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->d:Lcom/iflytek/viafly/cafnotification/CAFService;

    iget v1, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->b:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/cafnotification/CAFService;->stopSelf(I)V

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->c:Lzn;

    invoke-virtual {v0}, Lzn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "CAFService"

    const-string/jumbo v1, "update caf data overtime(10 seconds)."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/cafnotification/CAFService$2;->c:Lzn;

    invoke-virtual {v0}, Lzn;->g()V

    .line 159
    :cond_0
    return-void
.end method
