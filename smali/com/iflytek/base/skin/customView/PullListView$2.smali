.class Lcom/iflytek/base/skin/customView/PullListView$2;
.super Ljava/lang/Object;
.source "PullListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V
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
    .line 154
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/PullListView$2;->this$0:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView$2;->this$0:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/PullListView;->startLoadMore()V

    .line 158
    return-void
.end method
