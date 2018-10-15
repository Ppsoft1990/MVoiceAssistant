.class Lcom/baidu/aiupdatesdk/obf/g$1;
.super Landroid/os/Handler;
.source "BDFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/g;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/g;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/g;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/g$1;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$1;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->a(Lcom/baidu/aiupdatesdk/obf/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$1;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->b(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/aiupdatesdk/obf/g$a;->a(Landroid/os/Message;)V

    .line 45
    :cond_0
    return-void
.end method
