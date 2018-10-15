.class Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;
.super Ljava/lang/Object;
.source "RecommendLxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->handleMoreBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

.field final synthetic val$scrollOffset:I


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    iput p2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;->val$scrollOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$500(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Lcom/iflytek/base/skin/customView/XScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$2;->val$scrollOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XScrollView;->smoothScrollTo(II)V

    .line 452
    return-void
.end method
