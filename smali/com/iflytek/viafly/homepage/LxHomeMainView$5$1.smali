.class Lcom/iflytek/viafly/homepage/LxHomeMainView$5$1;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->onRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView$5;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/LxHomeMainView$5;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1150
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$5;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$5;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
