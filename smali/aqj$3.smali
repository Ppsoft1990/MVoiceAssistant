.class Laqj$3;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Laqb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqj;


# direct methods
.method constructor <init>(Laqj;)V
    .locals 0
    .param p1, "this$0"    # Laqj;

    .prologue
    .line 595
    iput-object p1, p0, Laqj$3;->a:Laqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCollect(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 611
    if-eqz p1, :cond_1

    .line 613
    iget-object v0, p0, Laqj$3;->a:Laqj;

    const-string/jumbo v1, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1}, Laqj;->a(Laqj;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Laqj$3;->a:Laqj;

    invoke-static {v0}, Laqj;->c(Laqj;)Lapg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Laqj$3;->a:Laqj;

    invoke-static {v0}, Laqj;->c(Laqj;)Lapg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lapg;->a(Ljava/lang/Boolean;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Laqj$3;->a:Laqj;

    const-string/jumbo v1, "\u6536\u85cf\u5931\u8d25"

    invoke-static {v0, v1}, Laqj;->a(Laqj;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDeleteCollect(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 624
    if-eqz p1, :cond_1

    .line 625
    iget-object v0, p0, Laqj$3;->a:Laqj;

    const-string/jumbo v1, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1}, Laqj;->a(Laqj;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Laqj$3;->a:Laqj;

    invoke-static {v0}, Laqj;->c(Laqj;)Lapg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Laqj$3;->a:Laqj;

    invoke-static {v0}, Laqj;->c(Laqj;)Lapg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lapg;->a(Ljava/lang/Boolean;)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Laqj$3;->a:Laqj;

    const-string/jumbo v1, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25"

    invoke-static {v0, v1}, Laqj;->a(Laqj;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryCollect(ZLjava/lang/String;)V
    .locals 2
    .param p1, "collected"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 604
    iget-object v0, p0, Laqj$3;->a:Laqj;

    invoke-static {v0}, Laqj;->c(Laqj;)Lapg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Laqj$3;->a:Laqj;

    invoke-static {v0}, Laqj;->c(Laqj;)Lapg;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lapg;->a(Ljava/lang/Boolean;)V

    .line 607
    :cond_0
    return-void
.end method

.method public onResult()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Laqj$3;->a:Laqj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqj;->a(Laqj;Z)Z

    .line 600
    return-void
.end method
