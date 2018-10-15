.class Laop$1;
.super Ljava/lang/Object;
.source "SmsBusinessManager.java"

# interfaces
.implements Lod$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laop;


# direct methods
.method constructor <init>(Laop;)V
    .locals 0
    .param p1, "this$0"    # Laop;

    .prologue
    .line 409
    iput-object p1, p0, Laop$1;->a:Laop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Laop$1;->a:Laop;

    invoke-static {v0}, Laop;->b(Laop;)I

    .line 414
    iget-object v0, p0, Laop$1;->a:Laop;

    invoke-static {v0}, Laop;->c(Laop;)I

    move-result v0

    iget-object v1, p0, Laop$1;->a:Laop;

    invoke-static {v1}, Laop;->d(Laop;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 415
    const-string/jumbo v0, "SmsBusinessManager"

    const-string/jumbo v1, "onCompleted unfinished, start another"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laop$1;->a:Laop;

    invoke-static {v1}, Laop;->e(Laop;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laop$1;->a:Laop;

    invoke-static {v2}, Laop;->f(Laop;)Lod$a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string/jumbo v0, "SmsBusinessManager"

    const-string/jumbo v1, "onCompleted finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Laop$1;->a:Laop;

    invoke-virtual {v0}, Laop;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Laop$1;->a:Laop;

    invoke-virtual {v0}, Laop;->b()V

    .line 437
    return-void
.end method
