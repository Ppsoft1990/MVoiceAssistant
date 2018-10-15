.class Lcom/iflytek/viafly/homepage/LxHomeMainView$9;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;->onEvent(Laia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$9;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$9;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1345
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$9;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/LxHomeMainView;Z)V

    .line 1346
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$9;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/HomeMainScrollView;->fullScroll(I)Z

    .line 1347
    return-void
.end method
