.class Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;
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
.field final synthetic a:I

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;ILandroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;->c:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    iput p2, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;->a:I

    iput-object p3, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    iget-object v3, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;->c:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-virtual {v3}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->finish()V

    .line 84
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_FLOAT_WINDOW_PERMISSION_REQUEST_TIMES"

    iget v5, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;I)V

    .line 85
    iget-object v3, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SHOULD_REQUEST_FLOAT_WINDOW_PERMISSION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 89
    :cond_0
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v3

    invoke-virtual {v3}, Lpb;->b()Ljava/util/Set;

    move-result-object v2

    .line 90
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lpb$a;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lpb$a;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpb$a;

    .line 93
    .local v0, "current":Lpb$a;
    invoke-virtual {v0}, Lpb$a;->onDenied()V

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 96
    .end local v0    # "current":Lpb$a;
    :cond_1
    return-void
.end method
