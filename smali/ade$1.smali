.class Lade$1;
.super Ljava/lang/Object;
.source "WidgetSmsInputView.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lade;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lade;


# direct methods
.method constructor <init>(Lade;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 168
    iput-object p1, p0, Lade$1;->a:Lade;

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
    .line 172
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 173
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    if-eqz p1, :cond_2

    .line 174
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

    .line 175
    .local v1, "permission":Lpl;
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v3, v4, :cond_0

    .line 176
    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1    # "permission":Lpl;
    :cond_2
    if-nez v0, :cond_3

    .line 184
    iget-object v2, p0, Lade$1;->a:Lade;

    invoke-static {v2}, Lade;->a(Lade;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :goto_1
    return-void

    .line 186
    :cond_3
    iget-object v2, p0, Lade$1;->a:Lade;

    invoke-static {v2}, Lade;->a(Lade;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    iget-object v2, p0, Lade$1;->a:Lade;

    invoke-static {v2}, Lade;->b(Lade;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    goto :goto_1
.end method
