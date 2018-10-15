.class Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2$1;
.super Ljava/lang/Object;
.source "NovelSettingFragment.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2$1;->this$1:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "NovelSettingFragment"

    const-string/jumbo v1, "\u7528\u6237\u62d2\u7edd\u5b58\u50a8\u5361\u6743\u9650"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2$1;->this$1:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 225
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
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
    .line 217
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "NovelSettingFragment"

    const-string/jumbo v1, "\u7528\u6237\u6388\u4e88\u5b58\u50a8\u5361\u6743\u9650-->\u5b89\u88c5\u79bb\u7ebf\u5f15\u64ce"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2$1;->this$1:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V

    .line 219
    return-void
.end method
