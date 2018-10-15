.class final Lpa$1;
.super Ljava/lang/Object;
.source "CameraPermissionHelper.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa;->a(Landroid/content/Context;Lpa$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpa$a;


# direct methods
.method constructor <init>(Lpa$a;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lpa$1;->a:Lpa$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v3, "StoragePermissionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request.onRequestPermissionsResult | threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    .local v2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 38
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl;

    .line 39
    .local v1, "item":Lpl;
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->unrationale:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-ne v4, v5, :cond_4

    .line 40
    if-nez v2, :cond_3

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .restart local v2    # "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-ne v4, v5, :cond_2

    .line 45
    if-nez v0, :cond_5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    .end local v1    # "item":Lpl;
    :cond_6
    invoke-static {v2}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 53
    iget-object v3, p0, Lpa$1;->a:Lpa$a;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lpa$1;->a:Lpa$a;

    invoke-interface {v3, p1}, Lpa$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 57
    :cond_7
    iget-object v3, p0, Lpa$1;->a:Lpa$a;

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lpa$1;->a:Lpa$a;

    invoke-interface {v3, v0, v2}, Lpa$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
