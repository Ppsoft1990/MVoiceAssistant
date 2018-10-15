.class Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;
.super Ljava/lang/Object;
.source "HomeLifeItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->c(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->a(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->b(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;->b(Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;I)V

    .line 75
    return-void
.end method
