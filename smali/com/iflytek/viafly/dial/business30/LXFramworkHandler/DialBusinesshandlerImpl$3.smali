.class Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;
.super Ljava/lang/Object;
.source "DialBusinesshandlerImpl.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/yd/speech/ViaAsrResult;

.field final synthetic b:Lcom/iflytek/yd/speech/FilterResult;

.field final synthetic c:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->c:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    iput-object p2, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->a:Lcom/iflytek/yd/speech/ViaAsrResult;

    iput-object p3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->b:Lcom/iflytek/yd/speech/FilterResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 5
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
    .line 822
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 823
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    if-eqz p1, :cond_2

    .line 824
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl;

    .line 825
    .local v1, "permission":Lpl;
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v3, v4, :cond_0

    .line 826
    if-nez v0, :cond_1

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    .end local v1    # "permission":Lpl;
    :cond_2
    if-nez v0, :cond_3

    .line 834
    iget-object v2, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->c:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->a:Lcom/iflytek/yd/speech/ViaAsrResult;

    iget-object v4, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->b:Lcom/iflytek/yd/speech/FilterResult;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->handleAfterPermission(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 838
    :goto_1
    return-void

    .line 836
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$3;->c:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    goto :goto_1
.end method
