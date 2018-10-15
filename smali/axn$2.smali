.class Laxn$2;
.super Landroid/content/BroadcastReceiver;
.source "TrafficStatsHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxn;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxn;


# direct methods
.method constructor <init>(Laxn;)V
    .locals 0
    .param p1, "this$0"    # Laxn;

    .prologue
    .line 239
    iput-object p1, p0, Laxn$2;->a:Laxn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    iget-object v0, p0, Laxn$2;->a:Laxn;

    invoke-static {v0}, Laxn;->a(Laxn;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive(), Net state changed event!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Laxn$2;->a:Laxn;

    invoke-static {v0}, Laxn;->b(Laxn;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Laxn$2;->a:Laxn;

    invoke-static {v0}, Laxn;->b(Laxn;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Laxn$2$1;

    invoke-direct {v1, p0}, Laxn$2$1;-><init>(Laxn$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :cond_0
    return-void
.end method
