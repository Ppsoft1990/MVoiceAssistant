.class Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;
.super Ljava/lang/Object;
.source "RecommendLxDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$002(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Ljava/util/List;)Ljava/util/List;

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$102(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$202(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/view/View;)Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$302(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/view/View;)Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$402(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Landroid/view/View;)Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$502(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Lcom/iflytek/base/skin/customView/XScrollView;)Lcom/iflytek/base/skin/customView/XScrollView;

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$602(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;Lcom/iflytek/base/skin/customView/XLinearLayout;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 142
    return-void
.end method
