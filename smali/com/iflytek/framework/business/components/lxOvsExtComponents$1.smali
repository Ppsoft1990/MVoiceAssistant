.class Lcom/iflytek/framework/business/components/lxOvsExtComponents$1;
.super Ljava/lang/Object;
.source "lxOvsExtComponents.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/lxOvsExtComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/lxOvsExtComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/lxOvsExtComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/framework/business/components/lxOvsExtComponents$1;->this$0:Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 2
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
    .line 88
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    sget-object v1, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl;

    invoke-virtual {v0}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/iflytek/framework/business/components/lxOvsExtComponents$1;->this$0:Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    invoke-static {v0}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->access$000(Lcom/iflytek/framework/business/components/lxOvsExtComponents;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 93
    :cond_0
    return-void
.end method
