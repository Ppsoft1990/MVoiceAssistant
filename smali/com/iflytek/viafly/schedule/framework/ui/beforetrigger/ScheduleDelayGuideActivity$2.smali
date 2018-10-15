.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;
.super Ljava/lang/Object;
.source "ScheduleDelayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;)Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "bntTxt":Ljava/lang/String;
    const-string/jumbo v2, "\u77e5\u9053\u4e86"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->finish()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    const-string/jumbo v4, "bootbackground|bootcomplete"

    invoke-virtual {v2, v3, v4}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 93
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    const-string/jumbo v3, "bootbackground|bootcomplete"

    invoke-static {v2, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/permission/data/Permission;

    invoke-static {v3, v2}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V

    goto :goto_0
.end method
