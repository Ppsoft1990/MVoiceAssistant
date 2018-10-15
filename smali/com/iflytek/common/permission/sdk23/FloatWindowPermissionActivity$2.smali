.class Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$2;
.super Ljava/lang/Object;
.source "FloatWindowPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$2;->a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 68
    iget-object v3, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$2;->a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-virtual {v3}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->finish()V

    .line 70
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v3

    invoke-virtual {v3}, Lpb;->b()Ljava/util/Set;

    move-result-object v2

    .line 71
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lpb$a;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lpb$a;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpb$a;

    .line 74
    .local v0, "current":Lpb$a;
    invoke-virtual {v0}, Lpb$a;->onAgreed()V

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 77
    .end local v0    # "current":Lpb$a;
    :cond_0
    return-void
.end method
