.class Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;
.super Ljava/lang/Object;
.source "FoodCardPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 300
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 302
    :pswitch_0
    const-string/jumbo v0, "FoodCardPresenter"

    const-string/jumbo v1, "\u5f00\u59cb\u8c03\u7528\u63a5\u53e3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g()V

    goto :goto_0

    .line 306
    :pswitch_1
    const-string/jumbo v0, "FoodCardPresenter"

    const-string/jumbo v1, "\u91cd\u8bd5\u63a5\u53e3\u8c03\u7528"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)I

    .line 308
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g()V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
