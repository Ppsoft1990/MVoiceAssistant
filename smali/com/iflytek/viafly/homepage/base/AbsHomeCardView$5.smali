.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->f(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Laij;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->f(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Laij;

    move-result-object v0

    invoke-interface {v0}, Laij;->b()V

    .line 293
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$5;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    const-string/jumbo v1, "more"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method
