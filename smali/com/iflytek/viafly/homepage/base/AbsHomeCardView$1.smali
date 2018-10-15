.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$1;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b(I)V
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
    .line 128
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$1;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$1;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;Landroid/view/View;)V

    .line 132
    return-void
.end method
