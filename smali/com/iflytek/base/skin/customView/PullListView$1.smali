.class Lcom/iflytek/base/skin/customView/PullListView$1;
.super Ljava/lang/Object;
.source "PullListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/base/skin/customView/PullListView;->initWithContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/base/skin/customView/PullListView;


# direct methods
.method constructor <init>(Lcom/iflytek/base/skin/customView/PullListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/base/skin/customView/PullListView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/PullListView$1;->this$0:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView$1;->this$0:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView$1;->this$0:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-static {v1}, Lcom/iflytek/base/skin/customView/PullListView;->access$100(Lcom/iflytek/base/skin/customView/PullListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->access$002(Lcom/iflytek/base/skin/customView/PullListView;I)I

    .line 109
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView$1;->this$0:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/PullListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 111
    return-void
.end method
