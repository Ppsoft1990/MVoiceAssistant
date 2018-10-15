.class Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;
.super Ljava/lang/Object;
.source "LanguageChoiceFragment.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->checkPermissionAndsetLanguageChoice(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 230
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 231
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 3
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
    .line 225
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$2;->val$which:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->access$200(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Landroid/content/Context;I)V

    .line 226
    return-void
.end method
