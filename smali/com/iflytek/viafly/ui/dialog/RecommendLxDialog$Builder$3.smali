.class Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;
.super Ljava/lang/Object;
.source "RecommendLxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->createAppItem(Landroid/content/pm/ActivityInfo;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

.field final synthetic val$activityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->val$activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$700(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$800(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->val$activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v4}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$900(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v5}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$1000(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$1100(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    return-void
.end method
