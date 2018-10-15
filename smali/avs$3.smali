.class Lavs$3;
.super Ljava/lang/Object;
.source "ScheduleDelayGuideManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavs;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

.field final synthetic c:Lavs;


# direct methods
.method constructor <init>(Lavs;Landroid/content/Context;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lavs;

    .prologue
    .line 123
    iput-object p1, p0, Lavs$3;->c:Lavs;

    iput-object p2, p0, Lavs$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lavs$3;->b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lavs$3;->c:Lavs;

    invoke-static {v0}, Lavs;->b(Lavs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lavs$3;->a:Landroid/content/Context;

    const-string/jumbo v1, "bootbackground|bootcomplete"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lavs$3;->a:Landroid/content/Context;

    iget-object v0, p0, Lavs$3;->c:Lavs;

    invoke-static {v0}, Lavs;->b(Lavs;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V

    .line 133
    iget-object v0, p0, Lavs$3;->b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    goto :goto_0
.end method
