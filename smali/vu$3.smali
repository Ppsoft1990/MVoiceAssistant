.class Lvu$3;
.super Ljava/lang/Object;
.source "BlcVersionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvu;->OnVersionSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/version/ClientUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/blc/version/ClientUpdateInfo;

.field final synthetic b:Lvu;


# direct methods
.method constructor <init>(Lvu;Lcom/iflytek/blc/version/ClientUpdateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lvu;

    .prologue
    .line 430
    iput-object p1, p0, Lvu$3;->b:Lvu;

    iput-object p2, p0, Lvu$3;->a:Lcom/iflytek/blc/version/ClientUpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    iget-object v0, p0, Lvu$3;->b:Lvu;

    iget-object v1, p0, Lvu$3;->a:Lcom/iflytek/blc/version/ClientUpdateInfo;

    iget-object v2, p0, Lvu$3;->b:Lvu;

    invoke-static {v2}, Lvu;->d(Lvu;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lvu;->a(Lvu;Lcom/iflytek/blc/version/ClientUpdateInfo;I)V

    .line 435
    iget-object v0, p0, Lvu$3;->b:Lvu;

    invoke-static {v0}, Lvu;->e(Lvu;)V

    .line 438
    iget-object v0, p0, Lvu$3;->b:Lvu;

    invoke-static {v0}, Lvu;->d(Lvu;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lvu$3;->b:Lvu;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v3}, Lvu;->a(ILvu$a;Z)V

    .line 441
    :cond_0
    return-void
.end method
