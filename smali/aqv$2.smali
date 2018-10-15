.class Laqv$2;
.super Ljava/lang/Object;
.source "PermissionUiManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqv;->e(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Laqv;


# direct methods
.method constructor <init>(Laqv;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Laqv;

    .prologue
    .line 306
    iput-object p1, p0, Laqv$2;->d:Laqv;

    iput-object p2, p0, Laqv$2;->a:Ljava/util/List;

    iput-object p3, p0, Laqv$2;->b:Landroid/content/Context;

    iput-object p4, p0, Laqv$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Laqv$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Laqv$2;->b:Landroid/content/Context;

    iget-object v1, p0, Laqv$2;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Laqv$2;->b:Landroid/content/Context;

    iget-object v0, p0, Laqv$2;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V

    goto :goto_0
.end method
