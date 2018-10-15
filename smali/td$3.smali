.class Ltd$3;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd;


# direct methods
.method constructor <init>(Ltd;)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 420
    iput-object p1, p0, Ltd$3;->a:Ltd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 424
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 427
    iget-object v0, p0, Ltd$3;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    iget-object v1, p0, Ltd$3;->a:Ltd;

    iget-object v2, p0, Ltd$3;->a:Ltd;

    invoke-static {v2}, Ltd;->h(Ltd;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lhe;->b(Lhe$a;Z)V

    .line 429
    iget-object v0, p0, Ltd$3;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    iget-object v1, p0, Ltd$3;->a:Ltd;

    iget-object v2, p0, Ltd$3;->a:Ltd;

    invoke-static {v2}, Ltd;->h(Ltd;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgq;->a(Lgq$a;Z)V

    .line 431
    iget-object v0, p0, Ltd$3;->a:Ltd;

    invoke-static {v0}, Ltd;->h(Ltd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Ltd$3;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhd;->a(Landroid/content/Context;)V

    .line 435
    iget-object v0, p0, Ltd$3;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laad;->b(Landroid/content/Context;)V

    .line 438
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->l()V

    .line 446
    iget-object v0, p0, Ltd$3;->a:Ltd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltd;->b(Ltd;Z)Z

    .line 447
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "initAfterUITask end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method
