.class final Lcom/iflytek/viafly/ad/business/MyIntentService$a;
.super Landroid/os/Handler;
.source "MyIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ad/business/MyIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ad/business/MyIntentService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ad/business/MyIntentService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->a:Lcom/iflytek/viafly/ad/business/MyIntentService;

    .line 24
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->a:Lcom/iflytek/viafly/ad/business/MyIntentService;

    invoke-static {v0}, Lcom/iflytek/viafly/ad/business/MyIntentService;->a(Lcom/iflytek/viafly/ad/business/MyIntentService;)I

    .line 30
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->a:Lcom/iflytek/viafly/ad/business/MyIntentService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/ad/business/MyIntentService;->a(Landroid/content/Intent;)V

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->a:Lcom/iflytek/viafly/ad/business/MyIntentService;

    invoke-static {v0}, Lcom/iflytek/viafly/ad/business/MyIntentService;->b(Lcom/iflytek/viafly/ad/business/MyIntentService;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->a:Lcom/iflytek/viafly/ad/business/MyIntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ad/business/MyIntentService;->stopSelf(I)V

    .line 34
    :cond_0
    return-void
.end method
