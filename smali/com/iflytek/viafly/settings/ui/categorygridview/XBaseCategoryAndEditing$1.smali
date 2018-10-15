.class Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;
.super Ljava/lang/Object;
.source "XBaseCategoryAndEditing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-static {v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->access$000(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->intent:Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "concerned"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    iget-object v2, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->mCategoryDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    const-string/jumbo v1, "groupId"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    iget-object v1, v1, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->access$000(Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;

    iget-object v2, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/XBaseCategoryAndEditing;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
