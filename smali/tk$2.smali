.class Ltk$2;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltk;


# direct methods
.method constructor <init>(Ltk;)V
    .locals 0
    .param p1, "this$0"    # Ltk;

    .prologue
    .line 637
    iput-object p1, p0, Ltk$2;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 6
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
    .line 640
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    :goto_0
    return-void

    .line 644
    :cond_0
    const/4 v2, 0x0

    .line 645
    .local v2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 646
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl;

    .line 647
    .local v1, "item":Lpl;
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->unrationale:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-ne v4, v5, :cond_3

    .line 648
    if-nez v2, :cond_2

    .line 649
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .restart local v2    # "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 652
    :cond_3
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-ne v4, v5, :cond_1

    .line 653
    if-nez v0, :cond_4

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    .end local v1    # "item":Lpl;
    :cond_5
    invoke-static {v2}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 661
    iget-object v3, p0, Ltk$2;->a:Ltk;

    invoke-static {v3}, Ltk;->c(Ltk;)V

    goto :goto_0

    .line 663
    :cond_6
    iget-object v3, p0, Ltk$2;->a:Ltk;

    invoke-static {v3}, Ltk;->d(Ltk;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    goto :goto_0
.end method
