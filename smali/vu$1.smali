.class Lvu$1;
.super Ljava/lang/Object;
.source "BlcVersionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvu;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvu;


# direct methods
.method constructor <init>(Lvu;)V
    .locals 0
    .param p1, "this$0"    # Lvu;

    .prologue
    .line 105
    iput-object p1, p0, Lvu$1;->a:Lvu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 110
    :try_start_0
    iget-object v3, p0, Lvu$1;->a:Lvu;

    invoke-static {v3}, Lvu;->b(Lvu;)Lil;

    move-result-object v3

    iget-object v4, p0, Lvu$1;->a:Lvu;

    invoke-static {v4}, Lvu;->a(Lvu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "updateObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lvu$1;->a:Lvu;

    check-cast v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .end local v1    # "updateObject":Ljava/lang/Object;
    invoke-static {v3, v1}, Lvu;->a(Lvu;Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 115
    :cond_0
    iget-object v3, p0, Lvu$1;->a:Lvu;

    invoke-static {v3}, Lvu;->b(Lvu;)Lil;

    move-result-object v3

    iget-object v4, p0, Lvu$1;->a:Lvu;

    invoke-static {v4}, Lvu;->c(Lvu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "updateObjectManual":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lvu$1;->a:Lvu;

    check-cast v2, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .end local v2    # "updateObjectManual":Ljava/lang/Object;
    invoke-static {v3, v2}, Lvu;->b(Lvu;Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BlcVersionAdapter"

    const-string/jumbo v4, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
