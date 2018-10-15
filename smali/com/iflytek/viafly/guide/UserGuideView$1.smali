.class Lcom/iflytek/viafly/guide/UserGuideView$1;
.super Ljava/lang/Object;
.source "UserGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/guide/UserGuideView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/UserGuideView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/UserGuideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideView$1;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$1;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->a(Lcom/iflytek/viafly/guide/UserGuideView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$1;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->b(Lcom/iflytek/viafly/guide/UserGuideView;)V

    .line 80
    return-void
.end method
