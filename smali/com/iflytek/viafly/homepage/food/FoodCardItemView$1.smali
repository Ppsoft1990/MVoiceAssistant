.class Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;
.super Ljava/lang/Object;
.source "FoodCardItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/food/FoodCardItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->b(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)Laks;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;->a(Laks;)V

    .line 59
    :cond_0
    return-void
.end method
