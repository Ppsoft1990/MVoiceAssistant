.class Lamc$1;
.super Ljava/lang/Object;
.source "TextEventPresenter.java"

# interfaces
.implements Lajm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamc;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamc;


# direct methods
.method constructor <init>(Lamc;)V
    .locals 0
    .param p1, "this$0"    # Lamc;

    .prologue
    .line 52
    iput-object p1, p0, Lamc$1;->a:Lamc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lamc$1;->a:Lamc;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lamc$1;->a:Lamc;

    invoke-virtual {v2}, Lamc;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lamc;->b(Lamc;ILjava/lang/String;)V

    .line 64
    const-string/jumbo v0, "TextEventPresenter"

    const-string/jumbo v1, "get net result error"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lamc$1;->a:Lamc;

    invoke-static {v0}, Lamc;->a(Lamc;)Lajk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lamc$1;->a:Lamc;

    invoke-static {v0}, Lamc;->a(Lamc;)Lajk;

    move-result-object v0

    invoke-interface {v0, p1}, Lajk;->a(Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lamc$1;->a:Lamc;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lamc$1;->a:Lamc;

    invoke-virtual {v2}, Lamc;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lamc;->a(Lamc;ILjava/lang/String;)V

    .line 59
    return-void
.end method
